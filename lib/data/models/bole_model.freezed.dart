// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bole_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BoleModel _$BoleModelFromJson(Map<String, dynamic> json) {
  return _BoleModel.fromJson(json);
}

/// @nodoc
mixin _$BoleModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_id')
  String get lessonId => throw _privateConstructorUsedError;
  @JsonKey(name: 'text_nepali')
  String get textNepali => throw _privateConstructorUsedError;
  @JsonKey(name: 'text_english')
  String get textEnglish => throw _privateConstructorUsedError;
  @JsonKey(name: 'pronunciation')
  String get pronunciation => throw _privateConstructorUsedError;
  @JsonKey(name: 'description_nepali')
  String? get descriptionNepali => throw _privateConstructorUsedError;
  @JsonKey(name: 'description_english')
  String? get descriptionEnglish => throw _privateConstructorUsedError;
  @JsonKey(name: 'audio_url')
  String? get audioUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_index')
  int get orderIndex => throw _privateConstructorUsedError;
  @JsonKey(name: 'difficulty_level')
  int get difficultyLevel =>
      throw _privateConstructorUsedError; // NEW FIELDS FOR INTERMEDIATE/ADVANCED TAALS
  @JsonKey(name: 'pattern_type')
  String get patternType =>
      throw _privateConstructorUsedError; // single, repeated, variation
  @JsonKey(name: 'repetition_count')
  int get repetitionCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_variation')
  bool get isVariation => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_bole_id')
  String? get parentBoleId =>
      throw _privateConstructorUsedError; // For variations
  @JsonKey(name: 'tempo_bpm')
  int? get tempoBpm => throw _privateConstructorUsedError; // Beats per minute
  @JsonKey(name: 'time_signature')
  String? get timeSignature =>
      throw _privateConstructorUsedError; // e.g., "4/4", "7/8"
  @JsonKey(name: 'notation_image_url')
  String? get notationImageUrl =>
      throw _privateConstructorUsedError; // Traditional notation
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError; // Local fields
  bool get isCompleted => throw _privateConstructorUsedError;
  int get attempts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoleModelCopyWith<BoleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoleModelCopyWith<$Res> {
  factory $BoleModelCopyWith(BoleModel value, $Res Function(BoleModel) then) =
      _$BoleModelCopyWithImpl<$Res, BoleModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'lesson_id') String lessonId,
      @JsonKey(name: 'text_nepali') String textNepali,
      @JsonKey(name: 'text_english') String textEnglish,
      @JsonKey(name: 'pronunciation') String pronunciation,
      @JsonKey(name: 'description_nepali') String? descriptionNepali,
      @JsonKey(name: 'description_english') String? descriptionEnglish,
      @JsonKey(name: 'audio_url') String? audioUrl,
      @JsonKey(name: 'order_index') int orderIndex,
      @JsonKey(name: 'difficulty_level') int difficultyLevel,
      @JsonKey(name: 'pattern_type') String patternType,
      @JsonKey(name: 'repetition_count') int repetitionCount,
      @JsonKey(name: 'is_variation') bool isVariation,
      @JsonKey(name: 'parent_bole_id') String? parentBoleId,
      @JsonKey(name: 'tempo_bpm') int? tempoBpm,
      @JsonKey(name: 'time_signature') String? timeSignature,
      @JsonKey(name: 'notation_image_url') String? notationImageUrl,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      bool isCompleted,
      int attempts});
}

/// @nodoc
class _$BoleModelCopyWithImpl<$Res, $Val extends BoleModel>
    implements $BoleModelCopyWith<$Res> {
  _$BoleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lessonId = null,
    Object? textNepali = null,
    Object? textEnglish = null,
    Object? pronunciation = null,
    Object? descriptionNepali = freezed,
    Object? descriptionEnglish = freezed,
    Object? audioUrl = freezed,
    Object? orderIndex = null,
    Object? difficultyLevel = null,
    Object? patternType = null,
    Object? repetitionCount = null,
    Object? isVariation = null,
    Object? parentBoleId = freezed,
    Object? tempoBpm = freezed,
    Object? timeSignature = freezed,
    Object? notationImageUrl = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? isCompleted = null,
    Object? attempts = null,
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
      textNepali: null == textNepali
          ? _value.textNepali
          : textNepali // ignore: cast_nullable_to_non_nullable
              as String,
      textEnglish: null == textEnglish
          ? _value.textEnglish
          : textEnglish // ignore: cast_nullable_to_non_nullable
              as String,
      pronunciation: null == pronunciation
          ? _value.pronunciation
          : pronunciation // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionNepali: freezed == descriptionNepali
          ? _value.descriptionNepali
          : descriptionNepali // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionEnglish: freezed == descriptionEnglish
          ? _value.descriptionEnglish
          : descriptionEnglish // ignore: cast_nullable_to_non_nullable
              as String?,
      audioUrl: freezed == audioUrl
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      orderIndex: null == orderIndex
          ? _value.orderIndex
          : orderIndex // ignore: cast_nullable_to_non_nullable
              as int,
      difficultyLevel: null == difficultyLevel
          ? _value.difficultyLevel
          : difficultyLevel // ignore: cast_nullable_to_non_nullable
              as int,
      patternType: null == patternType
          ? _value.patternType
          : patternType // ignore: cast_nullable_to_non_nullable
              as String,
      repetitionCount: null == repetitionCount
          ? _value.repetitionCount
          : repetitionCount // ignore: cast_nullable_to_non_nullable
              as int,
      isVariation: null == isVariation
          ? _value.isVariation
          : isVariation // ignore: cast_nullable_to_non_nullable
              as bool,
      parentBoleId: freezed == parentBoleId
          ? _value.parentBoleId
          : parentBoleId // ignore: cast_nullable_to_non_nullable
              as String?,
      tempoBpm: freezed == tempoBpm
          ? _value.tempoBpm
          : tempoBpm // ignore: cast_nullable_to_non_nullable
              as int?,
      timeSignature: freezed == timeSignature
          ? _value.timeSignature
          : timeSignature // ignore: cast_nullable_to_non_nullable
              as String?,
      notationImageUrl: freezed == notationImageUrl
          ? _value.notationImageUrl
          : notationImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      attempts: null == attempts
          ? _value.attempts
          : attempts // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BoleModelCopyWith<$Res> implements $BoleModelCopyWith<$Res> {
  factory _$$_BoleModelCopyWith(
          _$_BoleModel value, $Res Function(_$_BoleModel) then) =
      __$$_BoleModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'lesson_id') String lessonId,
      @JsonKey(name: 'text_nepali') String textNepali,
      @JsonKey(name: 'text_english') String textEnglish,
      @JsonKey(name: 'pronunciation') String pronunciation,
      @JsonKey(name: 'description_nepali') String? descriptionNepali,
      @JsonKey(name: 'description_english') String? descriptionEnglish,
      @JsonKey(name: 'audio_url') String? audioUrl,
      @JsonKey(name: 'order_index') int orderIndex,
      @JsonKey(name: 'difficulty_level') int difficultyLevel,
      @JsonKey(name: 'pattern_type') String patternType,
      @JsonKey(name: 'repetition_count') int repetitionCount,
      @JsonKey(name: 'is_variation') bool isVariation,
      @JsonKey(name: 'parent_bole_id') String? parentBoleId,
      @JsonKey(name: 'tempo_bpm') int? tempoBpm,
      @JsonKey(name: 'time_signature') String? timeSignature,
      @JsonKey(name: 'notation_image_url') String? notationImageUrl,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      bool isCompleted,
      int attempts});
}

/// @nodoc
class __$$_BoleModelCopyWithImpl<$Res>
    extends _$BoleModelCopyWithImpl<$Res, _$_BoleModel>
    implements _$$_BoleModelCopyWith<$Res> {
  __$$_BoleModelCopyWithImpl(
      _$_BoleModel _value, $Res Function(_$_BoleModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lessonId = null,
    Object? textNepali = null,
    Object? textEnglish = null,
    Object? pronunciation = null,
    Object? descriptionNepali = freezed,
    Object? descriptionEnglish = freezed,
    Object? audioUrl = freezed,
    Object? orderIndex = null,
    Object? difficultyLevel = null,
    Object? patternType = null,
    Object? repetitionCount = null,
    Object? isVariation = null,
    Object? parentBoleId = freezed,
    Object? tempoBpm = freezed,
    Object? timeSignature = freezed,
    Object? notationImageUrl = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? isCompleted = null,
    Object? attempts = null,
  }) {
    return _then(_$_BoleModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String,
      textNepali: null == textNepali
          ? _value.textNepali
          : textNepali // ignore: cast_nullable_to_non_nullable
              as String,
      textEnglish: null == textEnglish
          ? _value.textEnglish
          : textEnglish // ignore: cast_nullable_to_non_nullable
              as String,
      pronunciation: null == pronunciation
          ? _value.pronunciation
          : pronunciation // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionNepali: freezed == descriptionNepali
          ? _value.descriptionNepali
          : descriptionNepali // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionEnglish: freezed == descriptionEnglish
          ? _value.descriptionEnglish
          : descriptionEnglish // ignore: cast_nullable_to_non_nullable
              as String?,
      audioUrl: freezed == audioUrl
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      orderIndex: null == orderIndex
          ? _value.orderIndex
          : orderIndex // ignore: cast_nullable_to_non_nullable
              as int,
      difficultyLevel: null == difficultyLevel
          ? _value.difficultyLevel
          : difficultyLevel // ignore: cast_nullable_to_non_nullable
              as int,
      patternType: null == patternType
          ? _value.patternType
          : patternType // ignore: cast_nullable_to_non_nullable
              as String,
      repetitionCount: null == repetitionCount
          ? _value.repetitionCount
          : repetitionCount // ignore: cast_nullable_to_non_nullable
              as int,
      isVariation: null == isVariation
          ? _value.isVariation
          : isVariation // ignore: cast_nullable_to_non_nullable
              as bool,
      parentBoleId: freezed == parentBoleId
          ? _value.parentBoleId
          : parentBoleId // ignore: cast_nullable_to_non_nullable
              as String?,
      tempoBpm: freezed == tempoBpm
          ? _value.tempoBpm
          : tempoBpm // ignore: cast_nullable_to_non_nullable
              as int?,
      timeSignature: freezed == timeSignature
          ? _value.timeSignature
          : timeSignature // ignore: cast_nullable_to_non_nullable
              as String?,
      notationImageUrl: freezed == notationImageUrl
          ? _value.notationImageUrl
          : notationImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      attempts: null == attempts
          ? _value.attempts
          : attempts // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BoleModel extends _BoleModel {
  const _$_BoleModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'lesson_id') required this.lessonId,
      @JsonKey(name: 'text_nepali') required this.textNepali,
      @JsonKey(name: 'text_english') required this.textEnglish,
      @JsonKey(name: 'pronunciation') required this.pronunciation,
      @JsonKey(name: 'description_nepali') this.descriptionNepali,
      @JsonKey(name: 'description_english') this.descriptionEnglish,
      @JsonKey(name: 'audio_url') this.audioUrl,
      @JsonKey(name: 'order_index') required this.orderIndex,
      @JsonKey(name: 'difficulty_level') this.difficultyLevel = 1,
      @JsonKey(name: 'pattern_type') this.patternType = 'single',
      @JsonKey(name: 'repetition_count') this.repetitionCount = 1,
      @JsonKey(name: 'is_variation') this.isVariation = false,
      @JsonKey(name: 'parent_bole_id') this.parentBoleId,
      @JsonKey(name: 'tempo_bpm') this.tempoBpm,
      @JsonKey(name: 'time_signature') this.timeSignature,
      @JsonKey(name: 'notation_image_url') this.notationImageUrl,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.isCompleted = false,
      this.attempts = 0})
      : super._();

  factory _$_BoleModel.fromJson(Map<String, dynamic> json) =>
      _$$_BoleModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'lesson_id')
  final String lessonId;
  @override
  @JsonKey(name: 'text_nepali')
  final String textNepali;
  @override
  @JsonKey(name: 'text_english')
  final String textEnglish;
  @override
  @JsonKey(name: 'pronunciation')
  final String pronunciation;
  @override
  @JsonKey(name: 'description_nepali')
  final String? descriptionNepali;
  @override
  @JsonKey(name: 'description_english')
  final String? descriptionEnglish;
  @override
  @JsonKey(name: 'audio_url')
  final String? audioUrl;
  @override
  @JsonKey(name: 'order_index')
  final int orderIndex;
  @override
  @JsonKey(name: 'difficulty_level')
  final int difficultyLevel;
// NEW FIELDS FOR INTERMEDIATE/ADVANCED TAALS
  @override
  @JsonKey(name: 'pattern_type')
  final String patternType;
// single, repeated, variation
  @override
  @JsonKey(name: 'repetition_count')
  final int repetitionCount;
  @override
  @JsonKey(name: 'is_variation')
  final bool isVariation;
  @override
  @JsonKey(name: 'parent_bole_id')
  final String? parentBoleId;
// For variations
  @override
  @JsonKey(name: 'tempo_bpm')
  final int? tempoBpm;
// Beats per minute
  @override
  @JsonKey(name: 'time_signature')
  final String? timeSignature;
// e.g., "4/4", "7/8"
  @override
  @JsonKey(name: 'notation_image_url')
  final String? notationImageUrl;
// Traditional notation
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
// Local fields
  @override
  @JsonKey()
  final bool isCompleted;
  @override
  @JsonKey()
  final int attempts;

  @override
  String toString() {
    return 'BoleModel(id: $id, lessonId: $lessonId, textNepali: $textNepali, textEnglish: $textEnglish, pronunciation: $pronunciation, descriptionNepali: $descriptionNepali, descriptionEnglish: $descriptionEnglish, audioUrl: $audioUrl, orderIndex: $orderIndex, difficultyLevel: $difficultyLevel, patternType: $patternType, repetitionCount: $repetitionCount, isVariation: $isVariation, parentBoleId: $parentBoleId, tempoBpm: $tempoBpm, timeSignature: $timeSignature, notationImageUrl: $notationImageUrl, createdAt: $createdAt, updatedAt: $updatedAt, isCompleted: $isCompleted, attempts: $attempts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BoleModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.textNepali, textNepali) ||
                other.textNepali == textNepali) &&
            (identical(other.textEnglish, textEnglish) ||
                other.textEnglish == textEnglish) &&
            (identical(other.pronunciation, pronunciation) ||
                other.pronunciation == pronunciation) &&
            (identical(other.descriptionNepali, descriptionNepali) ||
                other.descriptionNepali == descriptionNepali) &&
            (identical(other.descriptionEnglish, descriptionEnglish) ||
                other.descriptionEnglish == descriptionEnglish) &&
            (identical(other.audioUrl, audioUrl) ||
                other.audioUrl == audioUrl) &&
            (identical(other.orderIndex, orderIndex) ||
                other.orderIndex == orderIndex) &&
            (identical(other.difficultyLevel, difficultyLevel) ||
                other.difficultyLevel == difficultyLevel) &&
            (identical(other.patternType, patternType) ||
                other.patternType == patternType) &&
            (identical(other.repetitionCount, repetitionCount) ||
                other.repetitionCount == repetitionCount) &&
            (identical(other.isVariation, isVariation) ||
                other.isVariation == isVariation) &&
            (identical(other.parentBoleId, parentBoleId) ||
                other.parentBoleId == parentBoleId) &&
            (identical(other.tempoBpm, tempoBpm) ||
                other.tempoBpm == tempoBpm) &&
            (identical(other.timeSignature, timeSignature) ||
                other.timeSignature == timeSignature) &&
            (identical(other.notationImageUrl, notationImageUrl) ||
                other.notationImageUrl == notationImageUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.attempts, attempts) ||
                other.attempts == attempts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        lessonId,
        textNepali,
        textEnglish,
        pronunciation,
        descriptionNepali,
        descriptionEnglish,
        audioUrl,
        orderIndex,
        difficultyLevel,
        patternType,
        repetitionCount,
        isVariation,
        parentBoleId,
        tempoBpm,
        timeSignature,
        notationImageUrl,
        createdAt,
        updatedAt,
        isCompleted,
        attempts
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BoleModelCopyWith<_$_BoleModel> get copyWith =>
      __$$_BoleModelCopyWithImpl<_$_BoleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BoleModelToJson(
      this,
    );
  }
}

abstract class _BoleModel extends BoleModel {
  const factory _BoleModel(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'lesson_id') required final String lessonId,
      @JsonKey(name: 'text_nepali') required final String textNepali,
      @JsonKey(name: 'text_english') required final String textEnglish,
      @JsonKey(name: 'pronunciation') required final String pronunciation,
      @JsonKey(name: 'description_nepali') final String? descriptionNepali,
      @JsonKey(name: 'description_english') final String? descriptionEnglish,
      @JsonKey(name: 'audio_url') final String? audioUrl,
      @JsonKey(name: 'order_index') required final int orderIndex,
      @JsonKey(name: 'difficulty_level') final int difficultyLevel,
      @JsonKey(name: 'pattern_type') final String patternType,
      @JsonKey(name: 'repetition_count') final int repetitionCount,
      @JsonKey(name: 'is_variation') final bool isVariation,
      @JsonKey(name: 'parent_bole_id') final String? parentBoleId,
      @JsonKey(name: 'tempo_bpm') final int? tempoBpm,
      @JsonKey(name: 'time_signature') final String? timeSignature,
      @JsonKey(name: 'notation_image_url') final String? notationImageUrl,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      final bool isCompleted,
      final int attempts}) = _$_BoleModel;
  const _BoleModel._() : super._();

  factory _BoleModel.fromJson(Map<String, dynamic> json) =
      _$_BoleModel.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'lesson_id')
  String get lessonId;
  @override
  @JsonKey(name: 'text_nepali')
  String get textNepali;
  @override
  @JsonKey(name: 'text_english')
  String get textEnglish;
  @override
  @JsonKey(name: 'pronunciation')
  String get pronunciation;
  @override
  @JsonKey(name: 'description_nepali')
  String? get descriptionNepali;
  @override
  @JsonKey(name: 'description_english')
  String? get descriptionEnglish;
  @override
  @JsonKey(name: 'audio_url')
  String? get audioUrl;
  @override
  @JsonKey(name: 'order_index')
  int get orderIndex;
  @override
  @JsonKey(name: 'difficulty_level')
  int get difficultyLevel;
  @override // NEW FIELDS FOR INTERMEDIATE/ADVANCED TAALS
  @JsonKey(name: 'pattern_type')
  String get patternType;
  @override // single, repeated, variation
  @JsonKey(name: 'repetition_count')
  int get repetitionCount;
  @override
  @JsonKey(name: 'is_variation')
  bool get isVariation;
  @override
  @JsonKey(name: 'parent_bole_id')
  String? get parentBoleId;
  @override // For variations
  @JsonKey(name: 'tempo_bpm')
  int? get tempoBpm;
  @override // Beats per minute
  @JsonKey(name: 'time_signature')
  String? get timeSignature;
  @override // e.g., "4/4", "7/8"
  @JsonKey(name: 'notation_image_url')
  String? get notationImageUrl;
  @override // Traditional notation
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override // Local fields
  bool get isCompleted;
  @override
  int get attempts;
  @override
  @JsonKey(ignore: true)
  _$$_BoleModelCopyWith<_$_BoleModel> get copyWith =>
      throw _privateConstructorUsedError;
}
