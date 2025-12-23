import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gunla_baja_flutter/core/utils/hash_functions_isar.dart';
import 'package:isar/isar.dart';

part 'bole_model.freezed.dart';
part 'bole_model.g.dart';

@freezed
@Collection(ignore: {'copyWith'})
class BoleModel with _$BoleModel {
  const BoleModel._();

  const factory BoleModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'lesson_id') required String lessonId,
    @JsonKey(name: 'text_nepali') required String textNepali,
    @JsonKey(name: 'text_english') required String textEnglish,
    @JsonKey(name: 'pronunciation') required String pronunciation,
    @JsonKey(name: 'description_nepali') String? descriptionNepali,
    @JsonKey(name: 'description_english') String? descriptionEnglish,
    @JsonKey(name: 'audio_url') String? audioUrl,
    @JsonKey(name: 'order_index') required int orderIndex,
    @JsonKey(name: 'difficulty_level') @Default(1) int difficultyLevel,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    // Local fields
    @Default(false) bool isCompleted,
    @Default(0) int attempts,
  }) = _BoleModel;

  @override
  Id get isarId => fastHash(id);

  factory BoleModel.fromJson(Map<String, dynamic> json) =>
      _$BoleModelFromJson(json);
}
