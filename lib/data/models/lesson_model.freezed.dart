// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LessonModel _$LessonModelFromJson(Map<String, dynamic> json) {
  return _LessonModel.fromJson(json);
}

/// @nodoc
mixin _$LessonModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title_nepali')
  String get titleNepali => throw _privateConstructorUsedError;
  @JsonKey(name: 'title_english')
  String get titleEnglish => throw _privateConstructorUsedError;
  @JsonKey(name: 'description_nepali')
  String? get descriptionNepali => throw _privateConstructorUsedError;
  @JsonKey(name: 'description_english')
  String? get descriptionEnglish => throw _privateConstructorUsedError;
  @JsonKey(name: 'level')
  int get level => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_index')
  int get orderIndex => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_url')
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_published')
  bool get isPublished => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_boles')
  int get totalBoles =>
      throw _privateConstructorUsedError; // NEW FIELDS FOR ADVANCED LESSONS
  @JsonKey(name: 'has_variations')
  bool get hasVariations => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_sections')
  bool get hasSections => throw _privateConstructorUsedError;
  @JsonKey(name: 'practice_time_minutes')
  int get practiceTimeMinutes => throw _privateConstructorUsedError;
  @JsonKey(name: 'prerequisites')
  List<String> get prerequisites =>
      throw _privateConstructorUsedError; // lesson IDs
  @JsonKey(name: 'traditional_notation_url')
  String? get traditionalNotationUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_tutorial_url')
  String? get videoTutorialUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError; // Local fields
  bool get isUnlocked => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  int get completedBoles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LessonModelCopyWith<LessonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonModelCopyWith<$Res> {
  factory $LessonModelCopyWith(
          LessonModel value, $Res Function(LessonModel) then) =
      _$LessonModelCopyWithImpl<$Res, LessonModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'title_nepali') String titleNepali,
      @JsonKey(name: 'title_english') String titleEnglish,
      @JsonKey(name: 'description_nepali') String? descriptionNepali,
      @JsonKey(name: 'description_english') String? descriptionEnglish,
      @JsonKey(name: 'level') int level,
      @JsonKey(name: 'order_index') int orderIndex,
      @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
      @JsonKey(name: 'is_published') bool isPublished,
      @JsonKey(name: 'total_boles') int totalBoles,
      @JsonKey(name: 'has_variations') bool hasVariations,
      @JsonKey(name: 'has_sections') bool hasSections,
      @JsonKey(name: 'practice_time_minutes') int practiceTimeMinutes,
      @JsonKey(name: 'prerequisites') List<String> prerequisites,
      @JsonKey(name: 'traditional_notation_url') String? traditionalNotationUrl,
      @JsonKey(name: 'video_tutorial_url') String? videoTutorialUrl,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      bool isUnlocked,
      bool isCompleted,
      int completedBoles});
}

/// @nodoc
class _$LessonModelCopyWithImpl<$Res, $Val extends LessonModel>
    implements $LessonModelCopyWith<$Res> {
  _$LessonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? titleNepali = null,
    Object? titleEnglish = null,
    Object? descriptionNepali = freezed,
    Object? descriptionEnglish = freezed,
    Object? level = null,
    Object? orderIndex = null,
    Object? thumbnailUrl = freezed,
    Object? isPublished = null,
    Object? totalBoles = null,
    Object? hasVariations = null,
    Object? hasSections = null,
    Object? practiceTimeMinutes = null,
    Object? prerequisites = null,
    Object? traditionalNotationUrl = freezed,
    Object? videoTutorialUrl = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? isUnlocked = null,
    Object? isCompleted = null,
    Object? completedBoles = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      titleNepali: null == titleNepali
          ? _value.titleNepali
          : titleNepali // ignore: cast_nullable_to_non_nullable
              as String,
      titleEnglish: null == titleEnglish
          ? _value.titleEnglish
          : titleEnglish // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionNepali: freezed == descriptionNepali
          ? _value.descriptionNepali
          : descriptionNepali // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionEnglish: freezed == descriptionEnglish
          ? _value.descriptionEnglish
          : descriptionEnglish // ignore: cast_nullable_to_non_nullable
              as String?,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      orderIndex: null == orderIndex
          ? _value.orderIndex
          : orderIndex // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isPublished: null == isPublished
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool,
      totalBoles: null == totalBoles
          ? _value.totalBoles
          : totalBoles // ignore: cast_nullable_to_non_nullable
              as int,
      hasVariations: null == hasVariations
          ? _value.hasVariations
          : hasVariations // ignore: cast_nullable_to_non_nullable
              as bool,
      hasSections: null == hasSections
          ? _value.hasSections
          : hasSections // ignore: cast_nullable_to_non_nullable
              as bool,
      practiceTimeMinutes: null == practiceTimeMinutes
          ? _value.practiceTimeMinutes
          : practiceTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      prerequisites: null == prerequisites
          ? _value.prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as List<String>,
      traditionalNotationUrl: freezed == traditionalNotationUrl
          ? _value.traditionalNotationUrl
          : traditionalNotationUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoTutorialUrl: freezed == videoTutorialUrl
          ? _value.videoTutorialUrl
          : videoTutorialUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isUnlocked: null == isUnlocked
          ? _value.isUnlocked
          : isUnlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      completedBoles: null == completedBoles
          ? _value.completedBoles
          : completedBoles // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LessonModelCopyWith<$Res>
    implements $LessonModelCopyWith<$Res> {
  factory _$$_LessonModelCopyWith(
          _$_LessonModel value, $Res Function(_$_LessonModel) then) =
      __$$_LessonModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'title_nepali') String titleNepali,
      @JsonKey(name: 'title_english') String titleEnglish,
      @JsonKey(name: 'description_nepali') String? descriptionNepali,
      @JsonKey(name: 'description_english') String? descriptionEnglish,
      @JsonKey(name: 'level') int level,
      @JsonKey(name: 'order_index') int orderIndex,
      @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
      @JsonKey(name: 'is_published') bool isPublished,
      @JsonKey(name: 'total_boles') int totalBoles,
      @JsonKey(name: 'has_variations') bool hasVariations,
      @JsonKey(name: 'has_sections') bool hasSections,
      @JsonKey(name: 'practice_time_minutes') int practiceTimeMinutes,
      @JsonKey(name: 'prerequisites') List<String> prerequisites,
      @JsonKey(name: 'traditional_notation_url') String? traditionalNotationUrl,
      @JsonKey(name: 'video_tutorial_url') String? videoTutorialUrl,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      bool isUnlocked,
      bool isCompleted,
      int completedBoles});
}

/// @nodoc
class __$$_LessonModelCopyWithImpl<$Res>
    extends _$LessonModelCopyWithImpl<$Res, _$_LessonModel>
    implements _$$_LessonModelCopyWith<$Res> {
  __$$_LessonModelCopyWithImpl(
      _$_LessonModel _value, $Res Function(_$_LessonModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? titleNepali = null,
    Object? titleEnglish = null,
    Object? descriptionNepali = freezed,
    Object? descriptionEnglish = freezed,
    Object? level = null,
    Object? orderIndex = null,
    Object? thumbnailUrl = freezed,
    Object? isPublished = null,
    Object? totalBoles = null,
    Object? hasVariations = null,
    Object? hasSections = null,
    Object? practiceTimeMinutes = null,
    Object? prerequisites = null,
    Object? traditionalNotationUrl = freezed,
    Object? videoTutorialUrl = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? isUnlocked = null,
    Object? isCompleted = null,
    Object? completedBoles = null,
  }) {
    return _then(_$_LessonModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      titleNepali: null == titleNepali
          ? _value.titleNepali
          : titleNepali // ignore: cast_nullable_to_non_nullable
              as String,
      titleEnglish: null == titleEnglish
          ? _value.titleEnglish
          : titleEnglish // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionNepali: freezed == descriptionNepali
          ? _value.descriptionNepali
          : descriptionNepali // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionEnglish: freezed == descriptionEnglish
          ? _value.descriptionEnglish
          : descriptionEnglish // ignore: cast_nullable_to_non_nullable
              as String?,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      orderIndex: null == orderIndex
          ? _value.orderIndex
          : orderIndex // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isPublished: null == isPublished
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool,
      totalBoles: null == totalBoles
          ? _value.totalBoles
          : totalBoles // ignore: cast_nullable_to_non_nullable
              as int,
      hasVariations: null == hasVariations
          ? _value.hasVariations
          : hasVariations // ignore: cast_nullable_to_non_nullable
              as bool,
      hasSections: null == hasSections
          ? _value.hasSections
          : hasSections // ignore: cast_nullable_to_non_nullable
              as bool,
      practiceTimeMinutes: null == practiceTimeMinutes
          ? _value.practiceTimeMinutes
          : practiceTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      prerequisites: null == prerequisites
          ? _value._prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as List<String>,
      traditionalNotationUrl: freezed == traditionalNotationUrl
          ? _value.traditionalNotationUrl
          : traditionalNotationUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoTutorialUrl: freezed == videoTutorialUrl
          ? _value.videoTutorialUrl
          : videoTutorialUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isUnlocked: null == isUnlocked
          ? _value.isUnlocked
          : isUnlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      completedBoles: null == completedBoles
          ? _value.completedBoles
          : completedBoles // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LessonModel extends _LessonModel {
  const _$_LessonModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'title_nepali') required this.titleNepali,
      @JsonKey(name: 'title_english') required this.titleEnglish,
      @JsonKey(name: 'description_nepali') this.descriptionNepali,
      @JsonKey(name: 'description_english') this.descriptionEnglish,
      @JsonKey(name: 'level') required this.level,
      @JsonKey(name: 'order_index') required this.orderIndex,
      @JsonKey(name: 'thumbnail_url') this.thumbnailUrl,
      @JsonKey(name: 'is_published') this.isPublished = false,
      @JsonKey(name: 'total_boles') this.totalBoles = 0,
      @JsonKey(name: 'has_variations') this.hasVariations = false,
      @JsonKey(name: 'has_sections') this.hasSections = false,
      @JsonKey(name: 'practice_time_minutes') this.practiceTimeMinutes = 10,
      @JsonKey(name: 'prerequisites')
      final List<String> prerequisites = const [],
      @JsonKey(name: 'traditional_notation_url') this.traditionalNotationUrl,
      @JsonKey(name: 'video_tutorial_url') this.videoTutorialUrl,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.isUnlocked = false,
      this.isCompleted = false,
      this.completedBoles = 0})
      : _prerequisites = prerequisites,
        super._();

  factory _$_LessonModel.fromJson(Map<String, dynamic> json) =>
      _$$_LessonModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'title_nepali')
  final String titleNepali;
  @override
  @JsonKey(name: 'title_english')
  final String titleEnglish;
  @override
  @JsonKey(name: 'description_nepali')
  final String? descriptionNepali;
  @override
  @JsonKey(name: 'description_english')
  final String? descriptionEnglish;
  @override
  @JsonKey(name: 'level')
  final int level;
  @override
  @JsonKey(name: 'order_index')
  final int orderIndex;
  @override
  @JsonKey(name: 'thumbnail_url')
  final String? thumbnailUrl;
  @override
  @JsonKey(name: 'is_published')
  final bool isPublished;
  @override
  @JsonKey(name: 'total_boles')
  final int totalBoles;
// NEW FIELDS FOR ADVANCED LESSONS
  @override
  @JsonKey(name: 'has_variations')
  final bool hasVariations;
  @override
  @JsonKey(name: 'has_sections')
  final bool hasSections;
  @override
  @JsonKey(name: 'practice_time_minutes')
  final int practiceTimeMinutes;
  final List<String> _prerequisites;
  @override
  @JsonKey(name: 'prerequisites')
  List<String> get prerequisites {
    if (_prerequisites is EqualUnmodifiableListView) return _prerequisites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prerequisites);
  }

// lesson IDs
  @override
  @JsonKey(name: 'traditional_notation_url')
  final String? traditionalNotationUrl;
  @override
  @JsonKey(name: 'video_tutorial_url')
  final String? videoTutorialUrl;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
// Local fields
  @override
  @JsonKey()
  final bool isUnlocked;
  @override
  @JsonKey()
  final bool isCompleted;
  @override
  @JsonKey()
  final int completedBoles;

  @override
  String toString() {
    return 'LessonModel(id: $id, titleNepali: $titleNepali, titleEnglish: $titleEnglish, descriptionNepali: $descriptionNepali, descriptionEnglish: $descriptionEnglish, level: $level, orderIndex: $orderIndex, thumbnailUrl: $thumbnailUrl, isPublished: $isPublished, totalBoles: $totalBoles, hasVariations: $hasVariations, hasSections: $hasSections, practiceTimeMinutes: $practiceTimeMinutes, prerequisites: $prerequisites, traditionalNotationUrl: $traditionalNotationUrl, videoTutorialUrl: $videoTutorialUrl, createdAt: $createdAt, updatedAt: $updatedAt, isUnlocked: $isUnlocked, isCompleted: $isCompleted, completedBoles: $completedBoles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LessonModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.titleNepali, titleNepali) ||
                other.titleNepali == titleNepali) &&
            (identical(other.titleEnglish, titleEnglish) ||
                other.titleEnglish == titleEnglish) &&
            (identical(other.descriptionNepali, descriptionNepali) ||
                other.descriptionNepali == descriptionNepali) &&
            (identical(other.descriptionEnglish, descriptionEnglish) ||
                other.descriptionEnglish == descriptionEnglish) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.orderIndex, orderIndex) ||
                other.orderIndex == orderIndex) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.isPublished, isPublished) ||
                other.isPublished == isPublished) &&
            (identical(other.totalBoles, totalBoles) ||
                other.totalBoles == totalBoles) &&
            (identical(other.hasVariations, hasVariations) ||
                other.hasVariations == hasVariations) &&
            (identical(other.hasSections, hasSections) ||
                other.hasSections == hasSections) &&
            (identical(other.practiceTimeMinutes, practiceTimeMinutes) ||
                other.practiceTimeMinutes == practiceTimeMinutes) &&
            const DeepCollectionEquality()
                .equals(other._prerequisites, _prerequisites) &&
            (identical(other.traditionalNotationUrl, traditionalNotationUrl) ||
                other.traditionalNotationUrl == traditionalNotationUrl) &&
            (identical(other.videoTutorialUrl, videoTutorialUrl) ||
                other.videoTutorialUrl == videoTutorialUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.isUnlocked, isUnlocked) ||
                other.isUnlocked == isUnlocked) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.completedBoles, completedBoles) ||
                other.completedBoles == completedBoles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        titleNepali,
        titleEnglish,
        descriptionNepali,
        descriptionEnglish,
        level,
        orderIndex,
        thumbnailUrl,
        isPublished,
        totalBoles,
        hasVariations,
        hasSections,
        practiceTimeMinutes,
        const DeepCollectionEquality().hash(_prerequisites),
        traditionalNotationUrl,
        videoTutorialUrl,
        createdAt,
        updatedAt,
        isUnlocked,
        isCompleted,
        completedBoles
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LessonModelCopyWith<_$_LessonModel> get copyWith =>
      __$$_LessonModelCopyWithImpl<_$_LessonModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LessonModelToJson(
      this,
    );
  }
}

abstract class _LessonModel extends LessonModel {
  const factory _LessonModel(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'title_nepali') required final String titleNepali,
      @JsonKey(name: 'title_english') required final String titleEnglish,
      @JsonKey(name: 'description_nepali') final String? descriptionNepali,
      @JsonKey(name: 'description_english') final String? descriptionEnglish,
      @JsonKey(name: 'level') required final int level,
      @JsonKey(name: 'order_index') required final int orderIndex,
      @JsonKey(name: 'thumbnail_url') final String? thumbnailUrl,
      @JsonKey(name: 'is_published') final bool isPublished,
      @JsonKey(name: 'total_boles') final int totalBoles,
      @JsonKey(name: 'has_variations') final bool hasVariations,
      @JsonKey(name: 'has_sections') final bool hasSections,
      @JsonKey(name: 'practice_time_minutes') final int practiceTimeMinutes,
      @JsonKey(name: 'prerequisites') final List<String> prerequisites,
      @JsonKey(name: 'traditional_notation_url')
      final String? traditionalNotationUrl,
      @JsonKey(name: 'video_tutorial_url') final String? videoTutorialUrl,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      final bool isUnlocked,
      final bool isCompleted,
      final int completedBoles}) = _$_LessonModel;
  const _LessonModel._() : super._();

  factory _LessonModel.fromJson(Map<String, dynamic> json) =
      _$_LessonModel.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'title_nepali')
  String get titleNepali;
  @override
  @JsonKey(name: 'title_english')
  String get titleEnglish;
  @override
  @JsonKey(name: 'description_nepali')
  String? get descriptionNepali;
  @override
  @JsonKey(name: 'description_english')
  String? get descriptionEnglish;
  @override
  @JsonKey(name: 'level')
  int get level;
  @override
  @JsonKey(name: 'order_index')
  int get orderIndex;
  @override
  @JsonKey(name: 'thumbnail_url')
  String? get thumbnailUrl;
  @override
  @JsonKey(name: 'is_published')
  bool get isPublished;
  @override
  @JsonKey(name: 'total_boles')
  int get totalBoles;
  @override // NEW FIELDS FOR ADVANCED LESSONS
  @JsonKey(name: 'has_variations')
  bool get hasVariations;
  @override
  @JsonKey(name: 'has_sections')
  bool get hasSections;
  @override
  @JsonKey(name: 'practice_time_minutes')
  int get practiceTimeMinutes;
  @override
  @JsonKey(name: 'prerequisites')
  List<String> get prerequisites;
  @override // lesson IDs
  @JsonKey(name: 'traditional_notation_url')
  String? get traditionalNotationUrl;
  @override
  @JsonKey(name: 'video_tutorial_url')
  String? get videoTutorialUrl;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override // Local fields
  bool get isUnlocked;
  @override
  bool get isCompleted;
  @override
  int get completedBoles;
  @override
  @JsonKey(ignore: true)
  _$$_LessonModelCopyWith<_$_LessonModel> get copyWith =>
      throw _privateConstructorUsedError;
}
