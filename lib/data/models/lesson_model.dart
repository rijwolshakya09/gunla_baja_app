import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gunla_baja_flutter/core/utils/hash_functions_isar.dart';
import 'package:isar/isar.dart';

part 'lesson_model.freezed.dart';
part 'lesson_model.g.dart';

@freezed
@Collection(ignore: {'copyWith'})
class LessonModel with _$LessonModel {
  const LessonModel._();

  const factory LessonModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'title_nepali') required String titleNepali,
    @JsonKey(name: 'title_english') required String titleEnglish,
    @JsonKey(name: 'description_nepali') String? descriptionNepali,
    @JsonKey(name: 'description_english') String? descriptionEnglish,
    @JsonKey(name: 'level') required int level,
    @JsonKey(name: 'order_index') required int orderIndex,
    @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
    @JsonKey(name: 'is_published') @Default(false) bool isPublished,
    @JsonKey(name: 'total_boles') @Default(0) int totalBoles,

    // NEW FIELDS FOR ADVANCED LESSONS
    @JsonKey(name: 'has_variations') @Default(false) bool hasVariations,
    @JsonKey(name: 'has_sections') @Default(false) bool hasSections,
    @JsonKey(name: 'practice_time_minutes')
    @Default(10)
    int practiceTimeMinutes,
    @JsonKey(name: 'prerequisites')
    @Default([])
    List<String> prerequisites, // lesson IDs
    @JsonKey(name: 'traditional_notation_url') String? traditionalNotationUrl,
    @JsonKey(name: 'video_tutorial_url') String? videoTutorialUrl,

    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,

    // Local fields
    @Default(false) bool isUnlocked,
    @Default(false) bool isCompleted,
    @Default(0) int completedBoles,
  }) = _LessonModel;

  @override
  Id get isarId => fastHash(id);

  factory LessonModel.fromJson(Map<String, dynamic> json) =>
      _$LessonModelFromJson(json);
}
