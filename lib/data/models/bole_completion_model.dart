import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gunla_baja_flutter/core/utils/hash_functions_isar.dart';
import 'package:isar/isar.dart';

part 'bole_completion_model.freezed.dart';
part 'bole_completion_model.g.dart';

@freezed
@Collection(ignore: {'copyWith'})
class BoleCompletionModel with _$BoleCompletionModel {
  const BoleCompletionModel._();

  const factory BoleCompletionModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'bole_id') required String boleId,
    @JsonKey(name: 'lesson_id') required String lessonId,
    @JsonKey(name: 'is_completed') @Default(false) bool isCompleted,
    @JsonKey(name: 'accuracy_score') double? accuracyScore,
    @JsonKey(name: 'attempts') @Default(0) int attempts,
    @JsonKey(name: 'completed_at') DateTime? completedAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _BoleCompletionModel;

  @override
  Id get isarId => fastHash(id);

  factory BoleCompletionModel.fromJson(Map<String, dynamic> json) =>
      _$BoleCompletionModelFromJson(json);
}
