import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/lesson_model.dart';
import '../models/bole_model.dart';
import '../../core/database/isar_provider.dart';

part 'lesson_repository.g.dart';

@riverpod
Future<LessonRepository> lessonRepository(LessonRepositoryRef ref) async {
  final isar = await ref.watch(isarProvider.future);
  return LessonRepository(isar);
}

class LessonRepository {
  final Isar _isar;

  LessonRepository(this._isar);

  // ============ CREATE ============

  /// Save a single lesson
  Future<void> saveLesson(LessonModel lesson) async {
    await _isar.writeTxn(() async {
      await _isar.lessonModels.put(lesson);
    });
  }

  /// Save multiple lessons
  Future<void> saveLessons(List<LessonModel> lessons) async {
    await _isar.writeTxn(() async {
      await _isar.lessonModels.putAll(lessons);
    });
  }

  // ============ READ ============

  /// Get all lessons (sorted by level and order)
  Future<List<LessonModel>> getAllLessons() async {
    return await _isar.lessonModels
        .where()
        .sortByLevel()
        .thenByOrderIndex()
        .findAll();
  }

  /// Watch all lessons (real-time updates)
  Stream<List<LessonModel>> watchAllLessons() {
    return _isar.lessonModels.where().sortByLevel().thenByOrderIndex().watch(
      fireImmediately: true,
    );
  }

  /// Get lesson by ID
  Future<LessonModel?> getLessonById(String id) async {
    return await _isar.lessonModels.where().filter().idEqualTo(id).findFirst();
  }

  /// Watch lesson by ID
  Stream<LessonModel?> watchLessonById(String id) {
    return _isar.lessonModels
        .where()
        .filter()
        .idEqualTo(id)
        .watch(fireImmediately: true)
        .map((lessons) => lessons.isEmpty ? null : lessons.first);
  }

  /// Get lessons by level
  Future<List<LessonModel>> getLessonsByLevel(int level) async {
    return await _isar.lessonModels
        .where()
        .filter()
        .levelEqualTo(level)
        .sortByOrderIndex()
        .findAll();
  }

  /// Get unlocked lessons
  Future<List<LessonModel>> getUnlockedLessons() async {
    return await _isar.lessonModels
        .where()
        .filter()
        .isUnlockedEqualTo(true)
        .sortByLevel()
        .thenByOrderIndex()
        .findAll();
  }

  // ============ UPDATE ============

  /// Update lesson unlock status
  Future<void> updateLessonUnlockStatus(String id, bool isUnlocked) async {
    await _isar.writeTxn(() async {
      final lesson = await getLessonById(id);
      if (lesson != null) {
        final updated = lesson.copyWith(isUnlocked: isUnlocked);
        await _isar.lessonModels.put(updated);
      }
    });
  }

  /// Update lesson completion status
  Future<void> updateLessonCompletion(
    String id,
    bool isCompleted,
    int completedBoles,
  ) async {
    await _isar.writeTxn(() async {
      final lesson = await getLessonById(id);
      if (lesson != null) {
        final updated = lesson.copyWith(
          isCompleted: isCompleted,
          completedBoles: completedBoles,
        );
        await _isar.lessonModels.put(updated);
      }
    });
  }

  // ============ DELETE ============

  /// Delete lesson by ID
  Future<void> deleteLesson(String id) async {
    await _isar.writeTxn(() async {
      await _isar.lessonModels.filter().idEqualTo(id).deleteAll();
    });
  }

  /// Delete all lessons
  Future<void> deleteAllLessons() async {
    await _isar.writeTxn(() async {
      await _isar.lessonModels.clear();
    });
  }

  // ============ BUSINESS LOGIC ============

  /// Check if next lesson should be unlocked
  Future<bool> shouldUnlockNextLesson(String currentLessonId) async {
    final lesson = await getLessonById(currentLessonId);
    if (lesson == null || !lesson.isCompleted) return false;

    // Get all lessons at next level
    final nextLevelLessons = await getLessonsByLevel(lesson.level + 1);
    if (nextLevelLessons.isEmpty) return false;

    // Unlock the first lesson of next level
    await updateLessonUnlockStatus(nextLevelLessons.first.id, true);
    return true;
  }

  /// Get total completed lessons count
  Future<int> getCompletedLessonsCount() async {
    return await _isar.lessonModels.filter().isCompletedEqualTo(true).count();
  }
}
