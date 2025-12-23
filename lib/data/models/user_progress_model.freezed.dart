// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_progress_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserProgressModel _$UserProgressModelFromJson(Map<String, dynamic> json) {
  return _UserProgressModel.fromJson(json);
}

/// @nodoc
mixin _$UserProgressModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_id')
  String get lessonId => throw _privateConstructorUsedError;
  @JsonKey(name: 'completed_boles')
  int get completedBoles => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_boles')
  int get totalBoles => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_completed')
  bool get isCompleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_practiced_at')
  DateTime? get lastPracticedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProgressModelCopyWith<UserProgressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProgressModelCopyWith<$Res> {
  factory $UserProgressModelCopyWith(
          UserProgressModel value, $Res Function(UserProgressModel) then) =
      _$UserProgressModelCopyWithImpl<$Res, UserProgressModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'lesson_id') String lessonId,
      @JsonKey(name: 'completed_boles') int completedBoles,
      @JsonKey(name: 'total_boles') int totalBoles,
      @JsonKey(name: 'is_completed') bool isCompleted,
      @JsonKey(name: 'last_practiced_at') DateTime? lastPracticedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$UserProgressModelCopyWithImpl<$Res, $Val extends UserProgressModel>
    implements $UserProgressModelCopyWith<$Res> {
  _$UserProgressModelCopyWithImpl(this._value, this._then);

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
    Object? completedBoles = null,
    Object? totalBoles = null,
    Object? isCompleted = null,
    Object? lastPracticedAt = freezed,
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
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String,
      completedBoles: null == completedBoles
          ? _value.completedBoles
          : completedBoles // ignore: cast_nullable_to_non_nullable
              as int,
      totalBoles: null == totalBoles
          ? _value.totalBoles
          : totalBoles // ignore: cast_nullable_to_non_nullable
              as int,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      lastPracticedAt: freezed == lastPracticedAt
          ? _value.lastPracticedAt
          : lastPracticedAt // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_UserProgressModelCopyWith<$Res>
    implements $UserProgressModelCopyWith<$Res> {
  factory _$$_UserProgressModelCopyWith(_$_UserProgressModel value,
          $Res Function(_$_UserProgressModel) then) =
      __$$_UserProgressModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'lesson_id') String lessonId,
      @JsonKey(name: 'completed_boles') int completedBoles,
      @JsonKey(name: 'total_boles') int totalBoles,
      @JsonKey(name: 'is_completed') bool isCompleted,
      @JsonKey(name: 'last_practiced_at') DateTime? lastPracticedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$_UserProgressModelCopyWithImpl<$Res>
    extends _$UserProgressModelCopyWithImpl<$Res, _$_UserProgressModel>
    implements _$$_UserProgressModelCopyWith<$Res> {
  __$$_UserProgressModelCopyWithImpl(
      _$_UserProgressModel _value, $Res Function(_$_UserProgressModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? lessonId = null,
    Object? completedBoles = null,
    Object? totalBoles = null,
    Object? isCompleted = null,
    Object? lastPracticedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_UserProgressModel(
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
      completedBoles: null == completedBoles
          ? _value.completedBoles
          : completedBoles // ignore: cast_nullable_to_non_nullable
              as int,
      totalBoles: null == totalBoles
          ? _value.totalBoles
          : totalBoles // ignore: cast_nullable_to_non_nullable
              as int,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      lastPracticedAt: freezed == lastPracticedAt
          ? _value.lastPracticedAt
          : lastPracticedAt // ignore: cast_nullable_to_non_nullable
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
class _$_UserProgressModel extends _UserProgressModel {
  const _$_UserProgressModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'lesson_id') required this.lessonId,
      @JsonKey(name: 'completed_boles') this.completedBoles = 0,
      @JsonKey(name: 'total_boles') required this.totalBoles,
      @JsonKey(name: 'is_completed') this.isCompleted = false,
      @JsonKey(name: 'last_practiced_at') this.lastPracticedAt,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt})
      : super._();

  factory _$_UserProgressModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserProgressModelFromJson(json);

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
  @JsonKey(name: 'completed_boles')
  final int completedBoles;
  @override
  @JsonKey(name: 'total_boles')
  final int totalBoles;
  @override
  @JsonKey(name: 'is_completed')
  final bool isCompleted;
  @override
  @JsonKey(name: 'last_practiced_at')
  final DateTime? lastPracticedAt;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'UserProgressModel(id: $id, userId: $userId, lessonId: $lessonId, completedBoles: $completedBoles, totalBoles: $totalBoles, isCompleted: $isCompleted, lastPracticedAt: $lastPracticedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserProgressModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.completedBoles, completedBoles) ||
                other.completedBoles == completedBoles) &&
            (identical(other.totalBoles, totalBoles) ||
                other.totalBoles == totalBoles) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.lastPracticedAt, lastPracticedAt) ||
                other.lastPracticedAt == lastPracticedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      lessonId,
      completedBoles,
      totalBoles,
      isCompleted,
      lastPracticedAt,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserProgressModelCopyWith<_$_UserProgressModel> get copyWith =>
      __$$_UserProgressModelCopyWithImpl<_$_UserProgressModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProgressModelToJson(
      this,
    );
  }
}

abstract class _UserProgressModel extends UserProgressModel {
  const factory _UserProgressModel(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'user_id') required final String userId,
          @JsonKey(name: 'lesson_id') required final String lessonId,
          @JsonKey(name: 'completed_boles') final int completedBoles,
          @JsonKey(name: 'total_boles') required final int totalBoles,
          @JsonKey(name: 'is_completed') final bool isCompleted,
          @JsonKey(name: 'last_practiced_at') final DateTime? lastPracticedAt,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt}) =
      _$_UserProgressModel;
  const _UserProgressModel._() : super._();

  factory _UserProgressModel.fromJson(Map<String, dynamic> json) =
      _$_UserProgressModel.fromJson;

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
  @JsonKey(name: 'completed_boles')
  int get completedBoles;
  @override
  @JsonKey(name: 'total_boles')
  int get totalBoles;
  @override
  @JsonKey(name: 'is_completed')
  bool get isCompleted;
  @override
  @JsonKey(name: 'last_practiced_at')
  DateTime? get lastPracticedAt;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_UserProgressModelCopyWith<_$_UserProgressModel> get copyWith =>
      throw _privateConstructorUsedError;
}
