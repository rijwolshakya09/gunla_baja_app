// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetLessonModelCollection on Isar {
  IsarCollection<LessonModel> get lessonModels => this.collection();
}

const LessonModelSchema = CollectionSchema(
  name: r'LessonModel',
  id: 5099551629465384932,
  properties: {
    r'completedBoles': PropertySchema(
      id: 0,
      name: r'completedBoles',
      type: IsarType.long,
    ),
    r'createdAt': PropertySchema(
      id: 1,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'descriptionEnglish': PropertySchema(
      id: 2,
      name: r'descriptionEnglish',
      type: IsarType.string,
    ),
    r'descriptionNepali': PropertySchema(
      id: 3,
      name: r'descriptionNepali',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 4,
      name: r'id',
      type: IsarType.string,
    ),
    r'isCompleted': PropertySchema(
      id: 5,
      name: r'isCompleted',
      type: IsarType.bool,
    ),
    r'isPublished': PropertySchema(
      id: 6,
      name: r'isPublished',
      type: IsarType.bool,
    ),
    r'isUnlocked': PropertySchema(
      id: 7,
      name: r'isUnlocked',
      type: IsarType.bool,
    ),
    r'level': PropertySchema(
      id: 8,
      name: r'level',
      type: IsarType.long,
    ),
    r'orderIndex': PropertySchema(
      id: 9,
      name: r'orderIndex',
      type: IsarType.long,
    ),
    r'thumbnailUrl': PropertySchema(
      id: 10,
      name: r'thumbnailUrl',
      type: IsarType.string,
    ),
    r'titleEnglish': PropertySchema(
      id: 11,
      name: r'titleEnglish',
      type: IsarType.string,
    ),
    r'titleNepali': PropertySchema(
      id: 12,
      name: r'titleNepali',
      type: IsarType.string,
    ),
    r'totalBoles': PropertySchema(
      id: 13,
      name: r'totalBoles',
      type: IsarType.long,
    ),
    r'updatedAt': PropertySchema(
      id: 14,
      name: r'updatedAt',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _lessonModelEstimateSize,
  serialize: _lessonModelSerialize,
  deserialize: _lessonModelDeserialize,
  deserializeProp: _lessonModelDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _lessonModelGetId,
  getLinks: _lessonModelGetLinks,
  attach: _lessonModelAttach,
  version: '3.1.0+1',
);

int _lessonModelEstimateSize(
  LessonModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.descriptionEnglish;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.descriptionNepali;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.id.length * 3;
  {
    final value = object.thumbnailUrl;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.titleEnglish.length * 3;
  bytesCount += 3 + object.titleNepali.length * 3;
  return bytesCount;
}

void _lessonModelSerialize(
  LessonModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.completedBoles);
  writer.writeDateTime(offsets[1], object.createdAt);
  writer.writeString(offsets[2], object.descriptionEnglish);
  writer.writeString(offsets[3], object.descriptionNepali);
  writer.writeString(offsets[4], object.id);
  writer.writeBool(offsets[5], object.isCompleted);
  writer.writeBool(offsets[6], object.isPublished);
  writer.writeBool(offsets[7], object.isUnlocked);
  writer.writeLong(offsets[8], object.level);
  writer.writeLong(offsets[9], object.orderIndex);
  writer.writeString(offsets[10], object.thumbnailUrl);
  writer.writeString(offsets[11], object.titleEnglish);
  writer.writeString(offsets[12], object.titleNepali);
  writer.writeLong(offsets[13], object.totalBoles);
  writer.writeDateTime(offsets[14], object.updatedAt);
}

LessonModel _lessonModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LessonModel(
    completedBoles: reader.readLong(offsets[0]),
    createdAt: reader.readDateTimeOrNull(offsets[1]),
    descriptionEnglish: reader.readStringOrNull(offsets[2]),
    descriptionNepali: reader.readStringOrNull(offsets[3]),
    id: reader.readString(offsets[4]),
    isCompleted: reader.readBool(offsets[5]),
    isPublished: reader.readBool(offsets[6]),
    isUnlocked: reader.readBool(offsets[7]),
    level: reader.readLong(offsets[8]),
    orderIndex: reader.readLong(offsets[9]),
    thumbnailUrl: reader.readStringOrNull(offsets[10]),
    titleEnglish: reader.readString(offsets[11]),
    titleNepali: reader.readString(offsets[12]),
    totalBoles: reader.readLong(offsets[13]),
    updatedAt: reader.readDateTimeOrNull(offsets[14]),
  );
  return object;
}

P _lessonModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readBool(offset)) as P;
    case 6:
      return (reader.readBool(offset)) as P;
    case 7:
      return (reader.readBool(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readLong(offset)) as P;
    case 14:
      return (reader.readDateTimeOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _lessonModelGetId(LessonModel object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _lessonModelGetLinks(LessonModel object) {
  return [];
}

void _lessonModelAttach(
    IsarCollection<dynamic> col, Id id, LessonModel object) {}

extension LessonModelQueryWhereSort
    on QueryBuilder<LessonModel, LessonModel, QWhere> {
  QueryBuilder<LessonModel, LessonModel, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension LessonModelQueryWhere
    on QueryBuilder<LessonModel, LessonModel, QWhereClause> {
  QueryBuilder<LessonModel, LessonModel, QAfterWhereClause> isarIdEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterWhereClause> isarIdNotEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterWhereClause> isarIdGreaterThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterWhereClause> isarIdLessThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterWhereClause> isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension LessonModelQueryFilter
    on QueryBuilder<LessonModel, LessonModel, QFilterCondition> {
  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      completedBolesEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'completedBoles',
        value: value,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      completedBolesGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'completedBoles',
        value: value,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      completedBolesLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'completedBoles',
        value: value,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      completedBolesBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'completedBoles',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      createdAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      createdAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      createdAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      descriptionEnglishIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'descriptionEnglish',
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      descriptionEnglishIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'descriptionEnglish',
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      descriptionEnglishEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descriptionEnglish',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      descriptionEnglishGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'descriptionEnglish',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      descriptionEnglishLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'descriptionEnglish',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      descriptionEnglishBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'descriptionEnglish',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      descriptionEnglishStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'descriptionEnglish',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      descriptionEnglishEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'descriptionEnglish',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      descriptionEnglishContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'descriptionEnglish',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      descriptionEnglishMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'descriptionEnglish',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      descriptionEnglishIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descriptionEnglish',
        value: '',
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      descriptionEnglishIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'descriptionEnglish',
        value: '',
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      descriptionNepaliIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'descriptionNepali',
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      descriptionNepaliIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'descriptionNepali',
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      descriptionNepaliEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descriptionNepali',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      descriptionNepaliGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'descriptionNepali',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      descriptionNepaliLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'descriptionNepali',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      descriptionNepaliBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'descriptionNepali',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      descriptionNepaliStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'descriptionNepali',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      descriptionNepaliEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'descriptionNepali',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      descriptionNepaliContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'descriptionNepali',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      descriptionNepaliMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'descriptionNepali',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      descriptionNepaliIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descriptionNepali',
        value: '',
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      descriptionNepaliIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'descriptionNepali',
        value: '',
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition> idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition> idGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition> idLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition> idBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition> idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition> idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition> idContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition> idMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      isCompletedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isCompleted',
        value: value,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      isPublishedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isPublished',
        value: value,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      isUnlockedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isUnlocked',
        value: value,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition> isarIdEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      isarIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition> isarIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition> isarIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition> levelEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'level',
        value: value,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      levelGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'level',
        value: value,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition> levelLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'level',
        value: value,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition> levelBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'level',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      orderIndexEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'orderIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      orderIndexGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'orderIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      orderIndexLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'orderIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      orderIndexBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'orderIndex',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      thumbnailUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'thumbnailUrl',
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      thumbnailUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'thumbnailUrl',
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      thumbnailUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'thumbnailUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      thumbnailUrlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'thumbnailUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      thumbnailUrlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'thumbnailUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      thumbnailUrlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'thumbnailUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      thumbnailUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'thumbnailUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      thumbnailUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'thumbnailUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      thumbnailUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'thumbnailUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      thumbnailUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'thumbnailUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      thumbnailUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'thumbnailUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      thumbnailUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'thumbnailUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      titleEnglishEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'titleEnglish',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      titleEnglishGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'titleEnglish',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      titleEnglishLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'titleEnglish',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      titleEnglishBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'titleEnglish',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      titleEnglishStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'titleEnglish',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      titleEnglishEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'titleEnglish',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      titleEnglishContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'titleEnglish',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      titleEnglishMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'titleEnglish',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      titleEnglishIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'titleEnglish',
        value: '',
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      titleEnglishIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'titleEnglish',
        value: '',
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      titleNepaliEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'titleNepali',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      titleNepaliGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'titleNepali',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      titleNepaliLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'titleNepali',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      titleNepaliBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'titleNepali',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      titleNepaliStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'titleNepali',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      titleNepaliEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'titleNepali',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      titleNepaliContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'titleNepali',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      titleNepaliMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'titleNepali',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      titleNepaliIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'titleNepali',
        value: '',
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      titleNepaliIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'titleNepali',
        value: '',
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      totalBolesEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalBoles',
        value: value,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      totalBolesGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalBoles',
        value: value,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      totalBolesLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalBoles',
        value: value,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      totalBolesBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalBoles',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      updatedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      updatedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      updatedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      updatedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterFilterCondition>
      updatedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension LessonModelQueryObject
    on QueryBuilder<LessonModel, LessonModel, QFilterCondition> {}

extension LessonModelQueryLinks
    on QueryBuilder<LessonModel, LessonModel, QFilterCondition> {}

extension LessonModelQuerySortBy
    on QueryBuilder<LessonModel, LessonModel, QSortBy> {
  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> sortByCompletedBoles() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedBoles', Sort.asc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy>
      sortByCompletedBolesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedBoles', Sort.desc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy>
      sortByDescriptionEnglish() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descriptionEnglish', Sort.asc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy>
      sortByDescriptionEnglishDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descriptionEnglish', Sort.desc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy>
      sortByDescriptionNepali() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descriptionNepali', Sort.asc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy>
      sortByDescriptionNepaliDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descriptionNepali', Sort.desc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> sortByIsCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCompleted', Sort.asc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> sortByIsCompletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCompleted', Sort.desc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> sortByIsPublished() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPublished', Sort.asc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> sortByIsPublishedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPublished', Sort.desc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> sortByIsUnlocked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isUnlocked', Sort.asc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> sortByIsUnlockedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isUnlocked', Sort.desc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> sortByLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'level', Sort.asc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> sortByLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'level', Sort.desc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> sortByOrderIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderIndex', Sort.asc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> sortByOrderIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderIndex', Sort.desc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> sortByThumbnailUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thumbnailUrl', Sort.asc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy>
      sortByThumbnailUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thumbnailUrl', Sort.desc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> sortByTitleEnglish() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titleEnglish', Sort.asc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy>
      sortByTitleEnglishDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titleEnglish', Sort.desc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> sortByTitleNepali() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titleNepali', Sort.asc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> sortByTitleNepaliDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titleNepali', Sort.desc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> sortByTotalBoles() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalBoles', Sort.asc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> sortByTotalBolesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalBoles', Sort.desc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension LessonModelQuerySortThenBy
    on QueryBuilder<LessonModel, LessonModel, QSortThenBy> {
  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> thenByCompletedBoles() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedBoles', Sort.asc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy>
      thenByCompletedBolesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedBoles', Sort.desc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy>
      thenByDescriptionEnglish() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descriptionEnglish', Sort.asc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy>
      thenByDescriptionEnglishDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descriptionEnglish', Sort.desc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy>
      thenByDescriptionNepali() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descriptionNepali', Sort.asc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy>
      thenByDescriptionNepaliDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descriptionNepali', Sort.desc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> thenByIsCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCompleted', Sort.asc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> thenByIsCompletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCompleted', Sort.desc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> thenByIsPublished() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPublished', Sort.asc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> thenByIsPublishedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPublished', Sort.desc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> thenByIsUnlocked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isUnlocked', Sort.asc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> thenByIsUnlockedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isUnlocked', Sort.desc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> thenByLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'level', Sort.asc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> thenByLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'level', Sort.desc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> thenByOrderIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderIndex', Sort.asc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> thenByOrderIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderIndex', Sort.desc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> thenByThumbnailUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thumbnailUrl', Sort.asc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy>
      thenByThumbnailUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thumbnailUrl', Sort.desc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> thenByTitleEnglish() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titleEnglish', Sort.asc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy>
      thenByTitleEnglishDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titleEnglish', Sort.desc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> thenByTitleNepali() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titleNepali', Sort.asc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> thenByTitleNepaliDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titleNepali', Sort.desc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> thenByTotalBoles() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalBoles', Sort.asc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> thenByTotalBolesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalBoles', Sort.desc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QAfterSortBy> thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension LessonModelQueryWhereDistinct
    on QueryBuilder<LessonModel, LessonModel, QDistinct> {
  QueryBuilder<LessonModel, LessonModel, QDistinct> distinctByCompletedBoles() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'completedBoles');
    });
  }

  QueryBuilder<LessonModel, LessonModel, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<LessonModel, LessonModel, QDistinct>
      distinctByDescriptionEnglish({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'descriptionEnglish',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QDistinct> distinctByDescriptionNepali(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'descriptionNepali',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QDistinct> distinctByIsCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isCompleted');
    });
  }

  QueryBuilder<LessonModel, LessonModel, QDistinct> distinctByIsPublished() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isPublished');
    });
  }

  QueryBuilder<LessonModel, LessonModel, QDistinct> distinctByIsUnlocked() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isUnlocked');
    });
  }

  QueryBuilder<LessonModel, LessonModel, QDistinct> distinctByLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'level');
    });
  }

  QueryBuilder<LessonModel, LessonModel, QDistinct> distinctByOrderIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'orderIndex');
    });
  }

  QueryBuilder<LessonModel, LessonModel, QDistinct> distinctByThumbnailUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'thumbnailUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QDistinct> distinctByTitleEnglish(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'titleEnglish', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QDistinct> distinctByTitleNepali(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'titleNepali', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LessonModel, LessonModel, QDistinct> distinctByTotalBoles() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalBoles');
    });
  }

  QueryBuilder<LessonModel, LessonModel, QDistinct> distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }
}

extension LessonModelQueryProperty
    on QueryBuilder<LessonModel, LessonModel, QQueryProperty> {
  QueryBuilder<LessonModel, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<LessonModel, int, QQueryOperations> completedBolesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'completedBoles');
    });
  }

  QueryBuilder<LessonModel, DateTime?, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<LessonModel, String?, QQueryOperations>
      descriptionEnglishProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'descriptionEnglish');
    });
  }

  QueryBuilder<LessonModel, String?, QQueryOperations>
      descriptionNepaliProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'descriptionNepali');
    });
  }

  QueryBuilder<LessonModel, String, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<LessonModel, bool, QQueryOperations> isCompletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isCompleted');
    });
  }

  QueryBuilder<LessonModel, bool, QQueryOperations> isPublishedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isPublished');
    });
  }

  QueryBuilder<LessonModel, bool, QQueryOperations> isUnlockedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isUnlocked');
    });
  }

  QueryBuilder<LessonModel, int, QQueryOperations> levelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'level');
    });
  }

  QueryBuilder<LessonModel, int, QQueryOperations> orderIndexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'orderIndex');
    });
  }

  QueryBuilder<LessonModel, String?, QQueryOperations> thumbnailUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'thumbnailUrl');
    });
  }

  QueryBuilder<LessonModel, String, QQueryOperations> titleEnglishProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'titleEnglish');
    });
  }

  QueryBuilder<LessonModel, String, QQueryOperations> titleNepaliProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'titleNepali');
    });
  }

  QueryBuilder<LessonModel, int, QQueryOperations> totalBolesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalBoles');
    });
  }

  QueryBuilder<LessonModel, DateTime?, QQueryOperations> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LessonModel _$$_LessonModelFromJson(Map<String, dynamic> json) =>
    _$_LessonModel(
      id: json['id'] as String,
      titleNepali: json['title_nepali'] as String,
      titleEnglish: json['title_english'] as String,
      descriptionNepali: json['description_nepali'] as String?,
      descriptionEnglish: json['description_english'] as String?,
      level: (json['level'] as num).toInt(),
      orderIndex: (json['order_index'] as num).toInt(),
      thumbnailUrl: json['thumbnail_url'] as String?,
      isPublished: json['is_published'] as bool? ?? false,
      totalBoles: (json['total_boles'] as num?)?.toInt() ?? 0,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      isUnlocked: json['isUnlocked'] as bool? ?? false,
      isCompleted: json['isCompleted'] as bool? ?? false,
      completedBoles: (json['completedBoles'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$_LessonModelToJson(_$_LessonModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title_nepali': instance.titleNepali,
      'title_english': instance.titleEnglish,
      'description_nepali': instance.descriptionNepali,
      'description_english': instance.descriptionEnglish,
      'level': instance.level,
      'order_index': instance.orderIndex,
      'thumbnail_url': instance.thumbnailUrl,
      'is_published': instance.isPublished,
      'total_boles': instance.totalBoles,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'isUnlocked': instance.isUnlocked,
      'isCompleted': instance.isCompleted,
      'completedBoles': instance.completedBoles,
    };
