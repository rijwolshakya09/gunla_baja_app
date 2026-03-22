// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bole_section_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BoleSectionModel _$BoleSectionModelFromJson(Map<String, dynamic> json) {
  return _BoleSectionModel.fromJson(json);
}

/// @nodoc
mixin _$BoleSectionModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_id')
  String get lessonId => throw _privateConstructorUsedError;
  @JsonKey(name: 'title_nepali')
  String get titleNepali => throw _privateConstructorUsedError;
  @JsonKey(name: 'title_english')
  String? get titleEnglish => throw _privateConstructorUsedError;
  @JsonKey(name: 'section_type')
  String get sectionType =>
      throw _privateConstructorUsedError; // main, variation, intro, outro
  @JsonKey(name: 'order_index')
  int get orderIndex => throw _privateConstructorUsedError;
  @JsonKey(name: 'bole_ids')
  List<String> get boleIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_optional')
  bool get isOptional => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoleSectionModelCopyWith<BoleSectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoleSectionModelCopyWith<$Res> {
  factory $BoleSectionModelCopyWith(
          BoleSectionModel value, $Res Function(BoleSectionModel) then) =
      _$BoleSectionModelCopyWithImpl<$Res, BoleSectionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'lesson_id') String lessonId,
      @JsonKey(name: 'title_nepali') String titleNepali,
      @JsonKey(name: 'title_english') String? titleEnglish,
      @JsonKey(name: 'section_type') String sectionType,
      @JsonKey(name: 'order_index') int orderIndex,
      @JsonKey(name: 'bole_ids') List<String> boleIds,
      @JsonKey(name: 'is_optional') bool isOptional,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class _$BoleSectionModelCopyWithImpl<$Res, $Val extends BoleSectionModel>
    implements $BoleSectionModelCopyWith<$Res> {
  _$BoleSectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lessonId = null,
    Object? titleNepali = null,
    Object? titleEnglish = freezed,
    Object? sectionType = null,
    Object? orderIndex = null,
    Object? boleIds = null,
    Object? isOptional = null,
    Object? description = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String,
      titleNepali: null == titleNepali
          ? _value.titleNepali
          : titleNepali // ignore: cast_nullable_to_non_nullable
              as String,
      titleEnglish: freezed == titleEnglish
          ? _value.titleEnglish
          : titleEnglish // ignore: cast_nullable_to_non_nullable
              as String?,
      sectionType: null == sectionType
          ? _value.sectionType
          : sectionType // ignore: cast_nullable_to_non_nullable
              as String,
      orderIndex: null == orderIndex
          ? _value.orderIndex
          : orderIndex // ignore: cast_nullable_to_non_nullable
              as int,
      boleIds: null == boleIds
          ? _value.boleIds
          : boleIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isOptional: null == isOptional
          ? _value.isOptional
          : isOptional // ignore: cast_nullable_to_non_nullable
              as bool,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BoleSectionModelCopyWith<$Res>
    implements $BoleSectionModelCopyWith<$Res> {
  factory _$$_BoleSectionModelCopyWith(
          _$_BoleSectionModel value, $Res Function(_$_BoleSectionModel) then) =
      __$$_BoleSectionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'lesson_id') String lessonId,
      @JsonKey(name: 'title_nepali') String titleNepali,
      @JsonKey(name: 'title_english') String? titleEnglish,
      @JsonKey(name: 'section_type') String sectionType,
      @JsonKey(name: 'order_index') int orderIndex,
      @JsonKey(name: 'bole_ids') List<String> boleIds,
      @JsonKey(name: 'is_optional') bool isOptional,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class __$$_BoleSectionModelCopyWithImpl<$Res>
    extends _$BoleSectionModelCopyWithImpl<$Res, _$_BoleSectionModel>
    implements _$$_BoleSectionModelCopyWith<$Res> {
  __$$_BoleSectionModelCopyWithImpl(
      _$_BoleSectionModel _value, $Res Function(_$_BoleSectionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lessonId = null,
    Object? titleNepali = null,
    Object? titleEnglish = freezed,
    Object? sectionType = null,
    Object? orderIndex = null,
    Object? boleIds = null,
    Object? isOptional = null,
    Object? description = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_BoleSectionModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String,
      titleNepali: null == titleNepali
          ? _value.titleNepali
          : titleNepali // ignore: cast_nullable_to_non_nullable
              as String,
      titleEnglish: freezed == titleEnglish
          ? _value.titleEnglish
          : titleEnglish // ignore: cast_nullable_to_non_nullable
              as String?,
      sectionType: null == sectionType
          ? _value.sectionType
          : sectionType // ignore: cast_nullable_to_non_nullable
              as String,
      orderIndex: null == orderIndex
          ? _value.orderIndex
          : orderIndex // ignore: cast_nullable_to_non_nullable
              as int,
      boleIds: null == boleIds
          ? _value._boleIds
          : boleIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isOptional: null == isOptional
          ? _value.isOptional
          : isOptional // ignore: cast_nullable_to_non_nullable
              as bool,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BoleSectionModel extends _BoleSectionModel {
  const _$_BoleSectionModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'lesson_id') required this.lessonId,
      @JsonKey(name: 'title_nepali') required this.titleNepali,
      @JsonKey(name: 'title_english') this.titleEnglish,
      @JsonKey(name: 'section_type') this.sectionType = 'main',
      @JsonKey(name: 'order_index') required this.orderIndex,
      @JsonKey(name: 'bole_ids') final List<String> boleIds = const [],
      @JsonKey(name: 'is_optional') this.isOptional = false,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'created_at') this.createdAt})
      : _boleIds = boleIds,
        super._();

  factory _$_BoleSectionModel.fromJson(Map<String, dynamic> json) =>
      _$$_BoleSectionModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'lesson_id')
  final String lessonId;
  @override
  @JsonKey(name: 'title_nepali')
  final String titleNepali;
  @override
  @JsonKey(name: 'title_english')
  final String? titleEnglish;
  @override
  @JsonKey(name: 'section_type')
  final String sectionType;
// main, variation, intro, outro
  @override
  @JsonKey(name: 'order_index')
  final int orderIndex;
  final List<String> _boleIds;
  @override
  @JsonKey(name: 'bole_ids')
  List<String> get boleIds {
    if (_boleIds is EqualUnmodifiableListView) return _boleIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_boleIds);
  }

  @override
  @JsonKey(name: 'is_optional')
  final bool isOptional;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'BoleSectionModel(id: $id, lessonId: $lessonId, titleNepali: $titleNepali, titleEnglish: $titleEnglish, sectionType: $sectionType, orderIndex: $orderIndex, boleIds: $boleIds, isOptional: $isOptional, description: $description, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BoleSectionModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.titleNepali, titleNepali) ||
                other.titleNepali == titleNepali) &&
            (identical(other.titleEnglish, titleEnglish) ||
                other.titleEnglish == titleEnglish) &&
            (identical(other.sectionType, sectionType) ||
                other.sectionType == sectionType) &&
            (identical(other.orderIndex, orderIndex) ||
                other.orderIndex == orderIndex) &&
            const DeepCollectionEquality().equals(other._boleIds, _boleIds) &&
            (identical(other.isOptional, isOptional) ||
                other.isOptional == isOptional) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      lessonId,
      titleNepali,
      titleEnglish,
      sectionType,
      orderIndex,
      const DeepCollectionEquality().hash(_boleIds),
      isOptional,
      description,
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BoleSectionModelCopyWith<_$_BoleSectionModel> get copyWith =>
      __$$_BoleSectionModelCopyWithImpl<_$_BoleSectionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BoleSectionModelToJson(
      this,
    );
  }
}

abstract class _BoleSectionModel extends BoleSectionModel {
  const factory _BoleSectionModel(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'lesson_id') required final String lessonId,
          @JsonKey(name: 'title_nepali') required final String titleNepali,
          @JsonKey(name: 'title_english') final String? titleEnglish,
          @JsonKey(name: 'section_type') final String sectionType,
          @JsonKey(name: 'order_index') required final int orderIndex,
          @JsonKey(name: 'bole_ids') final List<String> boleIds,
          @JsonKey(name: 'is_optional') final bool isOptional,
          @JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'created_at') final DateTime? createdAt}) =
      _$_BoleSectionModel;
  const _BoleSectionModel._() : super._();

  factory _BoleSectionModel.fromJson(Map<String, dynamic> json) =
      _$_BoleSectionModel.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'lesson_id')
  String get lessonId;
  @override
  @JsonKey(name: 'title_nepali')
  String get titleNepali;
  @override
  @JsonKey(name: 'title_english')
  String? get titleEnglish;
  @override
  @JsonKey(name: 'section_type')
  String get sectionType;
  @override // main, variation, intro, outro
  @JsonKey(name: 'order_index')
  int get orderIndex;
  @override
  @JsonKey(name: 'bole_ids')
  List<String> get boleIds;
  @override
  @JsonKey(name: 'is_optional')
  bool get isOptional;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_BoleSectionModelCopyWith<_$_BoleSectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
