import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../data/repositories/bole_repository.dart';
import '../../../data/repositories/lesson_repository.dart';
import '../../../domain/entities/lesson_entity.dart';

part 'lesson_provider.g.dart';

/// Provider to watch all lessons
@riverpod
Stream<List<LessonEntity>> lessons(LessonsRef ref) async* {
  final repository = await ref.watch(lessonRepositoryProvider.future);

  await for (final models in repository.watchAllLessons()) {
    yield models.map((m) => LessonEntity.fromModel(m)).toList();
  }
}

/// Provider to watch specific lesson
@riverpod
Stream<LessonEntity?> lesson(LessonRef ref, String id) async* {
  final repository = await ref.watch(lessonRepositoryProvider.future);

  await for (final model in repository.watchLessonById(id)) {
    yield model != null ? LessonEntity.fromModel(model) : null;
  }
}

/// Provider for lesson actions
@riverpod
class LessonActions extends _$LessonActions {
  @override
  void build() {}

  /// Complete a bole in lesson
  Future<void> completeBole(String lessonId, String boleId) async {
    final lessonRepo = await ref.read(lessonRepositoryProvider.future);
    final boleRepo = await ref.read(boleRepositoryProvider.future);

    // Mark bole as completed
    await boleRepo.markBoleCompleted(boleId);

    // Update lesson progress
    final stats = await boleRepo.getLessonCompletionStats(lessonId);
    final isCompleted = stats['completed'] == stats['total'];

    await lessonRepo.updateLessonCompletion(
      lessonId,
      isCompleted,
      stats['completed']!,
    );

    // If lesson completed, unlock next lesson
    if (isCompleted) {
      await lessonRepo.shouldUnlockNextLesson(lessonId);
    }
  }

  /// Unlock a lesson manually (for testing)
  Future<void> unlockLesson(String lessonId) async {
    final repository = await ref.read(lessonRepositoryProvider.future);
    await repository.updateLessonUnlockStatus(lessonId, true);
  }

  /// Reset lesson progress
  Future<void> resetLesson(String lessonId) async {
    final lessonRepo = await ref.read(lessonRepositoryProvider.future);
    final boleRepo = await ref.read(boleRepositoryProvider.future);

    // Reset all boles
    final boles = await boleRepo.getBolesByLesson(lessonId);
    for (final bole in boles) {
      final reset = bole.copyWith(isCompleted: false, attempts: 0);
      await boleRepo.saveBoles([reset]);
    }

    // Reset lesson
    await lessonRepo.updateLessonCompletion(lessonId, false, 0);
  }
}
