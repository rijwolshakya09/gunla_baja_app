import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gunla_baja_flutter/core/utils/hash_functions_isar.dart';
import 'package:isar/isar.dart';

part 'user_progress_model.freezed.dart';
part 'user_progress_model.g.dart';

@freezed
@Collection(ignore: {'copyWith'})
class UserProgressModel with _$UserProgressModel {
  const UserProgressModel._();

  const factory UserProgressModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'lesson_id') required String lessonId,
    @JsonKey(name: 'completed_boles') @Default(0) int completedBoles,
    @JsonKey(name: 'total_boles') required int totalBoles,
    @JsonKey(name: 'is_completed') @Default(false) bool isCompleted,
    @JsonKey(name: 'last_practiced_at') DateTime? lastPracticedAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _UserProgressModel;

  Id get isarId => fastHash(id);

  double get progressPercentage {
    if (totalBoles == 0) return 0;
    return (completedBoles / totalBoles) * 100;
  }

  factory UserProgressModel.fromJson(Map<String, dynamic> json) =>
      _$UserProgressModelFromJson(json);
}
