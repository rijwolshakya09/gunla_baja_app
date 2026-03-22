import 'package:gunla_baja_flutter/core/services/supabase_service.dart';
import 'package:gunla_baja_flutter/core/services/sync_service.dart';
import 'package:gunla_baja_flutter/data/models/user_progress_model.dart';
import 'package:gunla_baja_flutter/data/repositories/bole_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
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
    try {
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

      // Upload progress to Supabase (if online) - non-blocking
      _uploadProgressToCloud(lessonId, stats, isCompleted);
    } catch (e) {
      print('Error completing bole: $e');
      throw Exception('Failed to complete bole: $e');
    }
  }

  /// Upload progress to cloud (non-blocking)
  Future<void> _uploadProgressToCloud(
    String lessonId,
    Map<String, int> stats,
    bool isCompleted,
  ) async {
    try {
      final syncService = await ref.read(syncServiceProvider.future);
      final supabase = ref.read(supabaseProvider);
      final userId = supabase.auth.currentUser?.id;

      if (userId != null) {
        // Create progress model
        final progress = UserProgressModel(
          id: '${userId}_$lessonId',
          userId: userId,
          lessonId: lessonId,
          completedBoles: stats['completed']!,
          totalBoles: stats['total']!,
          isCompleted: isCompleted,
          lastPracticedAt: DateTime.now(),
        );

        await syncService.uploadUserProgress(progress);
      }
    } catch (e) {
      // Silent fail - progress is already saved locally
      print('Failed to upload progress to cloud: $e');
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
