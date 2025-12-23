import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:gunla_baja_flutter/core/services/supabase_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../data/models/lesson_model.dart';
import '../../data/models/bole_model.dart';
import '../../data/models/user_progress_model.dart';
import '../../data/repositories/lesson_repository.dart';
import '../../data/repositories/bole_repository.dart';

part 'sync_service.g.dart';

@riverpod
Future<SyncService> syncService(SyncServiceRef ref) async {
  final supabase = ref.watch(supabaseProvider);
  final lessonRepo = await ref.watch(lessonRepositoryProvider.future);
  final boleRepo = await ref.watch(boleRepositoryProvider.future);

  return SyncService(
    supabase: supabase,
    lessonRepository: lessonRepo,
    boleRepository: boleRepo,
  );
}

class SyncService {
  final SupabaseClient supabase;
  final LessonRepository lessonRepository;
  final BoleRepository boleRepository;

  SyncService({
    required this.supabase,
    required this.lessonRepository,
    required this.boleRepository,
  });

  // ============ CONNECTIVITY ============

  /// Check if device is online
  Future<bool> isOnline() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    return connectivityResult != ConnectivityResult.none;
  }

  // ============ SYNC LESSONS ============

  /// Sync lessons from Supabase to local database
  Future<void> syncLessons() async {
    try {
      if (!await isOnline()) {
        throw Exception('No internet connection');
      }

      // Fetch published lessons from Supabase
      final response = await supabase
          .from('lessons')
          .select()
          .eq('is_published', true)
          .order('level')
          .order('order_index');

      final List<dynamic> data = response as List<dynamic>;

      // Convert to models
      final lessons = data
          .map((json) => LessonModel.fromJson(json as Map<String, dynamic>))
          .toList();

      // Save to local database
      await lessonRepository.saveLessons(lessons);

      // For each lesson, sync its boles
      for (final lesson in lessons) {
        await syncBolesForLesson(lesson.id);
      }
    } catch (e) {
      throw Exception('Failed to sync lessons: $e');
    }
  }

  /// Sync boles for a specific lesson
  Future<void> syncBolesForLesson(String lessonId) async {
    try {
      if (!await isOnline()) {
        throw Exception('No internet connection');
      }

      // Fetch boles from Supabase
      final response = await supabase
          .from('boles')
          .select()
          .eq('lesson_id', lessonId)
          .order('order_index');

      final List<dynamic> data = response as List<dynamic>;

      // Convert to models
      final boles = data
          .map((json) => BoleModel.fromJson(json as Map<String, dynamic>))
          .toList();

      // Save to local database
      await boleRepository.saveBoles(boles);

      // Update lesson's total boles count
      final lesson = await lessonRepository.getLessonById(lessonId);
      if (lesson != null) {
        final updated = lesson.copyWith(totalBoles: boles.length);
        await lessonRepository.saveLesson(updated);
      }
    } catch (e) {
      throw Exception('Failed to sync boles: $e');
    }
  }

  // ============ SYNC USER PROGRESS ============

  /// Upload user progress to Supabase
  Future<void> uploadUserProgress(UserProgressModel progress) async {
    try {
      if (!await isOnline()) {
        // Queue for later sync
        return;
      }

      final userId = supabase.auth.currentUser?.id;
      if (userId == null) return;

      await supabase.from('user_progress').upsert({
        'user_id': progress.userId,
        'lesson_id': progress.lessonId,
        'completed_boles': progress.completedBoles,
        'total_boles': progress.totalBoles,
        'is_completed': progress.isCompleted,
        'last_practiced_at': progress.lastPracticedAt?.toIso8601String(),
      });
    } catch (e) {
      throw Exception('Failed to upload progress: $e');
    }
  }

  /// Download user progress from Supabase
  Future<List<UserProgressModel>> downloadUserProgress() async {
    try {
      if (!await isOnline()) {
        throw Exception('No internet connection');
      }

      final userId = supabase.auth.currentUser?.id;
      if (userId == null) return [];

      final response = await supabase
          .from('user_progress')
          .select()
          .eq('user_id', userId);

      final List<dynamic> data = response as List<dynamic>;

      return data
          .map(
            (json) => UserProgressModel.fromJson(json as Map<String, dynamic>),
          )
          .toList();
    } catch (e) {
      throw Exception('Failed to download progress: $e');
    }
  }

  // ============ INITIAL SYNC ============

  /// Perform initial sync on app startup
  Future<void> performInitialSync() async {
    try {
      // Sync lessons and boles
      await syncLessons();

      // If user is logged in, sync their progress
      if (supabase.auth.currentUser != null) {
        await downloadUserProgress();
      }

      // Unlock first lesson if no lessons are unlocked
      final lessons = await lessonRepository.getAllLessons();
      final hasUnlocked = lessons.any((l) => l.isUnlocked);

      if (!hasUnlocked && lessons.isNotEmpty) {
        await lessonRepository.updateLessonUnlockStatus(lessons.first.id, true);
      }
    } catch (e) {
      // Silent fail - app will work offline
      print('Initial sync failed: $e');
    }
  }

  // ============ BACKGROUND SYNC ============

  /// Sync in background periodically
  Future<void> backgroundSync() async {
    if (!await isOnline()) return;

    try {
      await syncLessons();

      if (supabase.auth.currentUser != null) {
        await downloadUserProgress();
      }
    } catch (e) {
      // Silent fail
      print('Background sync failed: $e');
    }
  }
}
