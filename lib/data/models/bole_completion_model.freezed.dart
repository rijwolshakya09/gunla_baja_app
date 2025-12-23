// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bole_completion_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BoleCompletionModel _$BoleCompletionModelFromJson(Map<String, dynamic> json) {
  return _BoleCompletionModel.fromJson(json);
}

/// @nodoc
mixin _$BoleCompletionModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'bole_id')
  String get boleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_id')
  String get lessonId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_completed')
  bool get isCompleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'accuracy_score')
  double? get accuracyScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'attempts')
  int get attempts => throw _privateConstructorUsedError;
  @JsonKey(name: 'completed_at')
  DateTime? get completedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoleCompletionModelCopyWith<BoleCompletionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoleCompletionModelCopyWith<$Res> {
  factory $BoleCompletionModelCopyWith(
          BoleCompletionModel value, $Res Function(BoleCompletionModel) then) =
      _$BoleCompletionModelCopyWithImpl<$Res, BoleCompletionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'bole_id') String boleId,
      @JsonKey(name: 'lesson_id') String lessonId,
      @JsonKey(name: 'is_completed') bool isCompleted,
      @JsonKey(name: 'accuracy_score') double? accuracyScore,
      @JsonKey(name: 'attempts') int attempts,
      @JsonKey(name: 'completed_at') DateTime? completedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$BoleCompletionModelCopyWithImpl<$Res, $Val extends BoleCompletionModel>
    implements $BoleCompletionModelCopyWith<$Res> {
  _$BoleCompletionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? boleId = null,
    Object? lessonId = null,
    Object? isCompleted = null,
    Object? accuracyScore = freezed,
    Object? attempts = null,
    Object? completedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      boleId: null == boleId
          ? _value.boleId
          : boleId // ignore: cast_nullable_to_non_nullable
              as String,
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      accuracyScore: freezed == accuracyScore
          ? _value.accuracyScore
          : accuracyScore // ignore: cast_nullable_to_non_nullable
              as double?,
      attempts: null == attempts
          ? _value.attempts
          : attempts // ignore: cast_nullable_to_non_nullable
              as int,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BoleCompletionModelCopyWith<$Res>
    implements $BoleCompletionModelCopyWith<$Res> {
  factory _$$_BoleCompletionModelCopyWith(_$_BoleCompletionModel value,
          $Res Function(_$_BoleCompletionModel) then) =
      __$$_BoleCompletionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'bole_id') String boleId,
      @JsonKey(name: 'lesson_id') String lessonId,
      @JsonKey(name: 'is_completed') bool isCompleted,
      @JsonKey(name: 'accuracy_score') double? accuracyScore,
      @JsonKey(name: 'attempts') int attempts,
      @JsonKey(name: 'completed_at') DateTime? completedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$_BoleCompletionModelCopyWithImpl<$Res>
    extends _$BoleCompletionModelCopyWithImpl<$Res, _$_BoleCompletionModel>
    implements _$$_BoleCompletionModelCopyWith<$Res> {
  __$$_BoleCompletionModelCopyWithImpl(_$_BoleCompletionModel _value,
      $Res Function(_$_BoleCompletionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? boleId = null,
    Object? lessonId = null,
    Object? isCompleted = null,
    Object? accuracyScore = freezed,
    Object? attempts = null,
    Object? completedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_BoleCompletionModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      boleId: null == boleId
          ? _value.boleId
          : boleId // ignore: cast_nullable_to_non_nullable
              as String,
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      accuracyScore: freezed == accuracyScore
          ? _value.accuracyScore
          : accuracyScore // ignore: cast_nullable_to_non_nullable
              as double?,
      attempts: null == attempts
          ? _value.attempts
          : attempts // ignore: cast_nullable_to_non_nullable
              as int,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BoleCompletionModel extends _BoleCompletionModel {
  const _$_BoleCompletionModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'bole_id') required this.boleId,
      @JsonKey(name: 'lesson_id') required this.lessonId,
      @JsonKey(name: 'is_completed') this.isCompleted = false,
      @JsonKey(name: 'accuracy_score') this.accuracyScore,
      @JsonKey(name: 'attempts') this.attempts = 0,
      @JsonKey(name: 'completed_at') this.completedAt,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt})
      : super._();

  factory _$_BoleCompletionModel.fromJson(Map<String, dynamic> json) =>
      _$$_BoleCompletionModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'bole_id')
  final String boleId;
  @override
  @JsonKey(name: 'lesson_id')
  final String lessonId;
  @override
  @JsonKey(name: 'is_completed')
  final bool isCompleted;
  @override
  @JsonKey(name: 'accuracy_score')
  final double? accuracyScore;
  @override
  @JsonKey(name: 'attempts')
  final int attempts;
  @override
  @JsonKey(name: 'completed_at')
  final DateTime? completedAt;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'BoleCompletionModel(id: $id, userId: $userId, boleId: $boleId, lessonId: $lessonId, isCompleted: $isCompleted, accuracyScore: $accuracyScore, attempts: $attempts, completedAt: $completedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BoleCompletionModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.boleId, boleId) || other.boleId == boleId) &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.accuracyScore, accuracyScore) ||
                other.accuracyScore == accuracyScore) &&
            (identical(other.attempts, attempts) ||
                other.attempts == attempts) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, boleId, lessonId,
      isCompleted, accuracyScore, attempts, completedAt, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BoleCompletionModelCopyWith<_$_BoleCompletionModel> get copyWith =>
      __$$_BoleCompletionModelCopyWithImpl<_$_BoleCompletionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BoleCompletionModelToJson(
      this,
    );
  }
}

abstract class _BoleCompletionModel extends BoleCompletionModel {
  const factory _BoleCompletionModel(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'user_id') required final String userId,
          @JsonKey(name: 'bole_id') required final String boleId,
          @JsonKey(name: 'lesson_id') required final String lessonId,
          @JsonKey(name: 'is_completed') final bool isCompleted,
          @JsonKey(name: 'accuracy_score') final double? accuracyScore,
          @JsonKey(name: 'attempts') final int attempts,
          @JsonKey(name: 'completed_at') final DateTime? completedAt,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt}) =
      _$_BoleCompletionModel;
  const _BoleCompletionModel._() : super._();

  factory _BoleCompletionModel.fromJson(Map<String, dynamic> json) =
      _$_BoleCompletionModel.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'bole_id')
  String get boleId;
  @override
  @JsonKey(name: 'lesson_id')
  String get lessonId;
  @override
  @JsonKey(name: 'is_completed')
  bool get isCompleted;
  @override
  @JsonKey(name: 'accuracy_score')
  double? get accuracyScore;
  @override
  @JsonKey(name: 'attempts')
  int get attempts;
  @override
  @JsonKey(name: 'completed_at')
  DateTime? get completedAt;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_BoleCompletionModelCopyWith<_$_BoleCompletionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
