import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gunla_baja_flutter/core/utils/hash_functions_isar.dart';
import 'package:isar/isar.dart';

part 'bole_section_model.freezed.dart';
part 'bole_section_model.g.dart';

@freezed
@Collection(ignore: {'copyWith'})
class BoleSectionModel with _$BoleSectionModel {
  const BoleSectionModel._();

  const factory BoleSectionModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'lesson_id') required String lessonId,
    @JsonKey(name: 'title_nepali') required String titleNepali,
    @JsonKey(name: 'title_english') String? titleEnglish,
    @JsonKey(name: 'section_type')
    @Default('main')
    String sectionType, // main, variation, intro, outro
    @JsonKey(name: 'order_index') required int orderIndex,
    @JsonKey(name: 'bole_ids') @Default([]) List<String> boleIds,
    @JsonKey(name: 'is_optional') @Default(false) bool isOptional,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _BoleSectionModel;

  Id get isarId => fastHash(id);

  factory BoleSectionModel.fromJson(Map<String, dynamic> json) =>
      _$BoleSectionModelFromJson(json);
}
