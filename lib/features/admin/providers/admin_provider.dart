import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/services/supabase_service.dart';

part 'admin_provider.g.dart';

// Selected tab state
final adminTabProvider = StateProvider<int>((ref) => 0);

// Lessons list state provider
@riverpod
class AdminLessons extends _$AdminLessons {
  @override
  Future<List<Map<String, dynamic>>> build() async {
    return await _fetchLessons();
  }

  Future<List<Map<String, dynamic>>> _fetchLessons() async {
    final supabase = ref.read(supabaseProvider);
    
    try {
      final response = await supabase
          .from('lessons')
          .select('*, boles:boles(count)')
          .order('level')
          .order('order_index');

      return List<Map<String, dynamic>>.from(response);
    } catch (e) {
      if (kDebugMode) print('Error fetching lessons: $e');
      return [];
    }
  }

  /// Refresh lessons list
  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _fetchLessons());
  }

  /// Delete a lesson
  Future<void> deleteLesson(String id) async {
    final supabase = ref.read(supabaseProvider);
    
    try {
      await supabase.from('lessons').delete().eq('id', id);
      await refresh();
    } catch (e) {
      throw Exception('Failed to delete lesson: $e');
    }
  }
}

// Admin Service for operations
@riverpod
class AdminService extends _$AdminService {
  @override
  void build() {}

  /// Add new lesson
  Future<String> addLesson({
    required String titleNepali,
    required String titleEnglish,
    String? descriptionNepali,
    String? descriptionEnglish,
    required int level,
    required int orderIndex,
  }) async {
    final supabase = ref.read(supabaseProvider);

    try {
      final response = await supabase.from('lessons').insert({
        'title_nepali': titleNepali,
        'title_english': titleEnglish,
        'description_nepali': descriptionNepali,
        'description_english': descriptionEnglish,
        'level': level,
        'order_index': orderIndex,
        'is_published': true,
      }).select().single();

      // Refresh lessons list
      ref.invalidate(adminLessonsProvider);

      return response['id'] as String;
    } catch (e) {
      throw Exception('Failed to add lesson: $e');
    }
  }

  /// Add new bole
  Future<void> addBole({
    required String lessonId,
    required String textNepali,
    required String textEnglish,
    required String pronunciation,
    String? descriptionNepali,
    required int orderIndex,
    int difficultyLevel = 1,
  }) async {
    final supabase = ref.read(supabaseProvider);

    try {
      await supabase.from('boles').insert({
        'lesson_id': lessonId,
        'text_nepali': textNepali,
        'text_english': textEnglish,
        'pronunciation': pronunciation,
        'description_nepali': descriptionNepali,
        'order_index': orderIndex,
        'difficulty_level': difficultyLevel,
      });

      // Refresh lessons list to update bole count
      ref.invalidate(adminLessonsProvider);
    } catch (e) {
      throw Exception('Failed to add bole: $e');
    }
  }

  /// Get boles for a specific lesson
  Future<List<Map<String, dynamic>>> getBolesForLesson(String lessonId) async {
    final supabase = ref.read(supabaseProvider);

    try {
      final response = await supabase
          .from('boles')
          .select()
          .eq('lesson_id', lessonId)
          .order('order_index');

      return List<Map<String, dynamic>>.from(response);
    } catch (e) {
      throw Exception('Failed to fetch boles: $e');
    }
  }

  /// Delete a bole
  Future<void> deleteBole(String boleId) async {
    final supabase = ref.read(supabaseProvider);

    try {
      await supabase.from('boles').delete().eq('id', boleId);
      ref.invalidate(adminLessonsProvider);
    } catch (e) {
      throw Exception('Failed to delete bole: $e');
    }
  }
}