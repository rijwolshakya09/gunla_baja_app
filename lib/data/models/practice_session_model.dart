import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gunla_baja_flutter/core/utils/hash_functions_isar.dart';
import 'package:isar/isar.dart';

part 'practice_session_model.freezed.dart';
part 'practice_session_model.g.dart';

@freezed
@Collection(ignore: {'copyWith'})
class PracticeSessionModel with _$PracticeSessionModel {
  const PracticeSessionModel._();

  const factory PracticeSessionModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'lesson_id') required String lessonId,
    @JsonKey(name: 'duration_seconds') int? durationSeconds,
    @JsonKey(name: 'boles_practiced') @Default(0) int bolesPracticed,
    @JsonKey(name: 'boles_completed') @Default(0) int bolesCompleted,
    @JsonKey(name: 'started_at') required DateTime startedAt,
    @JsonKey(name: 'ended_at') DateTime? endedAt,
  }) = _PracticeSessionModel;

  @override
  Id get isarId => fastHash(id);

  factory PracticeSessionModel.fromJson(Map<String, dynamic> json) =>
      _$PracticeSessionModelFromJson(json);
}
