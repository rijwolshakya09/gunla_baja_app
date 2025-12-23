// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'practice_session_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PracticeSessionModel _$PracticeSessionModelFromJson(Map<String, dynamic> json) {
  return _PracticeSessionModel.fromJson(json);
}

/// @nodoc
mixin _$PracticeSessionModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_id')
  String get lessonId => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration_seconds')
  int? get durationSeconds => throw _privateConstructorUsedError;
  @JsonKey(name: 'boles_practiced')
  int get bolesPracticed => throw _privateConstructorUsedError;
  @JsonKey(name: 'boles_completed')
  int get bolesCompleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'started_at')
  DateTime get startedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'ended_at')
  DateTime? get endedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PracticeSessionModelCopyWith<PracticeSessionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PracticeSessionModelCopyWith<$Res> {
  factory $PracticeSessionModelCopyWith(PracticeSessionModel value,
          $Res Function(PracticeSessionModel) then) =
      _$PracticeSessionModelCopyWithImpl<$Res, PracticeSessionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'lesson_id') String lessonId,
      @JsonKey(name: 'duration_seconds') int? durationSeconds,
      @JsonKey(name: 'boles_practiced') int bolesPracticed,
      @JsonKey(name: 'boles_completed') int bolesCompleted,
      @JsonKey(name: 'started_at') DateTime startedAt,
      @JsonKey(name: 'ended_at') DateTime? endedAt});
}

/// @nodoc
class _$PracticeSessionModelCopyWithImpl<$Res,
        $Val extends PracticeSessionModel>
    implements $PracticeSessionModelCopyWith<$Res> {
  _$PracticeSessionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? lessonId = null,
    Object? durationSeconds = freezed,
    Object? bolesPracticed = null,
    Object? bolesCompleted = null,
    Object? startedAt = null,
    Object? endedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String,
      durationSeconds: freezed == durationSeconds
          ? _value.durationSeconds
          : durationSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      bolesPracticed: null == bolesPracticed
          ? _value.bolesPracticed
          : bolesPracticed // ignore: cast_nullable_to_non_nullable
              as int,
      bolesCompleted: null == bolesCompleted
          ? _value.bolesCompleted
          : bolesCompleted // ignore: cast_nullable_to_non_nullable
              as int,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PracticeSessionModelCopyWith<$Res>
    implements $PracticeSessionModelCopyWith<$Res> {
  factory _$$_PracticeSessionModelCopyWith(_$_PracticeSessionModel value,
          $Res Function(_$_PracticeSessionModel) then) =
      __$$_PracticeSessionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'lesson_id') String lessonId,
      @JsonKey(name: 'duration_seconds') int? durationSeconds,
      @JsonKey(name: 'boles_practiced') int bolesPracticed,
      @JsonKey(name: 'boles_completed') int bolesCompleted,
      @JsonKey(name: 'started_at') DateTime startedAt,
      @JsonKey(name: 'ended_at') DateTime? endedAt});
}

/// @nodoc
class __$$_PracticeSessionModelCopyWithImpl<$Res>
    extends _$PracticeSessionModelCopyWithImpl<$Res, _$_PracticeSessionModel>
    implements _$$_PracticeSessionModelCopyWith<$Res> {
  __$$_PracticeSessionModelCopyWithImpl(_$_PracticeSessionModel _value,
      $Res Function(_$_PracticeSessionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? lessonId = null,
    Object? durationSeconds = freezed,
    Object? bolesPracticed = null,
    Object? bolesCompleted = null,
    Object? startedAt = null,
    Object? endedAt = freezed,
  }) {
    return _then(_$_PracticeSessionModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String,
      durationSeconds: freezed == durationSeconds
          ? _value.durationSeconds
          : durationSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      bolesPracticed: null == bolesPracticed
          ? _value.bolesPracticed
          : bolesPracticed // ignore: cast_nullable_to_non_nullable
              as int,
      bolesCompleted: null == bolesCompleted
          ? _value.bolesCompleted
          : bolesCompleted // ignore: cast_nullable_to_non_nullable
              as int,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PracticeSessionModel extends _PracticeSessionModel {
  const _$_PracticeSessionModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'lesson_id') required this.lessonId,
      @JsonKey(name: 'duration_seconds') this.durationSeconds,
      @JsonKey(name: 'boles_practiced') this.bolesPracticed = 0,
      @JsonKey(name: 'boles_completed') this.bolesCompleted = 0,
      @JsonKey(name: 'started_at') required this.startedAt,
      @JsonKey(name: 'ended_at') this.endedAt})
      : super._();

  factory _$_PracticeSessionModel.fromJson(Map<String, dynamic> json) =>
      _$$_PracticeSessionModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'lesson_id')
  final String lessonId;
  @override
  @JsonKey(name: 'duration_seconds')
  final int? durationSeconds;
  @override
  @JsonKey(name: 'boles_practiced')
  final int bolesPracticed;
  @override
  @JsonKey(name: 'boles_completed')
  final int bolesCompleted;
  @override
  @JsonKey(name: 'started_at')
  final DateTime startedAt;
  @override
  @JsonKey(name: 'ended_at')
  final DateTime? endedAt;

  @override
  String toString() {
    return 'PracticeSessionModel(id: $id, userId: $userId, lessonId: $lessonId, durationSeconds: $durationSeconds, bolesPracticed: $bolesPracticed, bolesCompleted: $bolesCompleted, startedAt: $startedAt, endedAt: $endedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PracticeSessionModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.durationSeconds, durationSeconds) ||
                other.durationSeconds == durationSeconds) &&
            (identical(other.bolesPracticed, bolesPracticed) ||
                other.bolesPracticed == bolesPracticed) &&
            (identical(other.bolesCompleted, bolesCompleted) ||
                other.bolesCompleted == bolesCompleted) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, lessonId,
      durationSeconds, bolesPracticed, bolesCompleted, startedAt, endedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PracticeSessionModelCopyWith<_$_PracticeSessionModel> get copyWith =>
      __$$_PracticeSessionModelCopyWithImpl<_$_PracticeSessionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PracticeSessionModelToJson(
      this,
    );
  }
}

abstract class _PracticeSessionModel extends PracticeSessionModel {
  const factory _PracticeSessionModel(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'user_id') required final String userId,
          @JsonKey(name: 'lesson_id') required final String lessonId,
          @JsonKey(name: 'duration_seconds') final int? durationSeconds,
          @JsonKey(name: 'boles_practiced') final int bolesPracticed,
          @JsonKey(name: 'boles_completed') final int bolesCompleted,
          @JsonKey(name: 'started_at') required final DateTime startedAt,
          @JsonKey(name: 'ended_at') final DateTime? endedAt}) =
      _$_PracticeSessionModel;
  const _PracticeSessionModel._() : super._();

  factory _PracticeSessionModel.fromJson(Map<String, dynamic> json) =
      _$_PracticeSessionModel.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'lesson_id')
  String get lessonId;
  @override
  @JsonKey(name: 'duration_seconds')
  int? get durationSeconds;
  @override
  @JsonKey(name: 'boles_practiced')
  int get bolesPracticed;
  @override
  @JsonKey(name: 'boles_completed')
  int get bolesCompleted;
  @override
  @JsonKey(name: 'started_at')
  DateTime get startedAt;
  @override
  @JsonKey(name: 'ended_at')
  DateTime? get endedAt;
  @override
  @JsonKey(ignore: true)
  _$$_PracticeSessionModelCopyWith<_$_PracticeSessionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
