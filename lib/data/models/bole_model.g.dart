// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bole_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetBoleModelCollection on Isar {
  IsarCollection<BoleModel> get boleModels => this.collection();
}

const BoleModelSchema = CollectionSchema(
  name: r'BoleModel',
  id: 8849316845915966362,
  properties: {
    r'attempts': PropertySchema(
      id: 0,
      name: r'attempts',
      type: IsarType.long,
    ),
    r'audioUrl': PropertySchema(
      id: 1,
      name: r'audioUrl',
      type: IsarType.string,
    ),
    r'createdAt': PropertySchema(
      id: 2,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'descriptionEnglish': PropertySchema(
      id: 3,
      name: r'descriptionEnglish',
      type: IsarType.string,
    ),
    r'descriptionNepali': PropertySchema(
      id: 4,
      name: r'descriptionNepali',
      type: IsarType.string,
    ),
    r'difficultyLevel': PropertySchema(
      id: 5,
      name: r'difficultyLevel',
      type: IsarType.long,
    ),
    r'id': PropertySchema(
      id: 6,
      name: r'id',
      type: IsarType.string,
    ),
    r'isCompleted': PropertySchema(
      id: 7,
      name: r'isCompleted',
      type: IsarType.bool,
    ),
    r'isVariation': PropertySchema(
      id: 8,
      name: r'isVariation',
      type: IsarType.bool,
    ),
    r'lessonId': PropertySchema(
      id: 9,
      name: r'lessonId',
      type: IsarType.string,
    ),
    r'notationImageUrl': PropertySchema(
      id: 10,
      name: r'notationImageUrl',
      type: IsarType.string,
    ),
    r'orderIndex': PropertySchema(
      id: 11,
      name: r'orderIndex',
      type: IsarType.long,
    ),
    r'parentBoleId': PropertySchema(
      id: 12,
      name: r'parentBoleId',
      type: IsarType.string,
    ),
    r'patternType': PropertySchema(
      id: 13,
      name: r'patternType',
      type: IsarType.string,
    ),
    r'pronunciation': PropertySchema(
      id: 14,
      name: r'pronunciation',
      type: IsarType.string,
    ),
    r'repetitionCount': PropertySchema(
      id: 15,
      name: r'repetitionCount',
      type: IsarType.long,
    ),
    r'tempoBpm': PropertySchema(
      id: 16,
      name: r'tempoBpm',
      type: IsarType.long,
    ),
    r'textEnglish': PropertySchema(
      id: 17,
      name: r'textEnglish',
      type: IsarType.string,
    ),
    r'textNepali': PropertySchema(
      id: 18,
      name: r'textNepali',
      type: IsarType.string,
    ),
    r'timeSignature': PropertySchema(
      id: 19,
      name: r'timeSignature',
      type: IsarType.string,
    ),
    r'updatedAt': PropertySchema(
      id: 20,
      name: r'updatedAt',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _boleModelEstimateSize,
  serialize: _boleModelSerialize,
  deserialize: _boleModelDeserialize,
  deserializeProp: _boleModelDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _boleModelGetId,
  getLinks: _boleModelGetLinks,
  attach: _boleModelAttach,
  version: '3.1.0+1',
);

int _boleModelEstimateSize(
  BoleModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.audioUrl;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
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
  bytesCount += 3 + object.lessonId.length * 3;
  {
    final value = object.notationImageUrl;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.parentBoleId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.patternType.length * 3;
  bytesCount += 3 + object.pronunciation.length * 3;
  bytesCount += 3 + object.textEnglish.length * 3;
  bytesCount += 3 + object.textNepali.length * 3;
  {
    final value = object.timeSignature;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _boleModelSerialize(
  BoleModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.attempts);
  writer.writeString(offsets[1], object.audioUrl);
  writer.writeDateTime(offsets[2], object.createdAt);
  writer.writeString(offsets[3], object.descriptionEnglish);
  writer.writeString(offsets[4], object.descriptionNepali);
  writer.writeLong(offsets[5], object.difficultyLevel);
  writer.writeString(offsets[6], object.id);
  writer.writeBool(offsets[7], object.isCompleted);
  writer.writeBool(offsets[8], object.isVariation);
  writer.writeString(offsets[9], object.lessonId);
  writer.writeString(offsets[10], object.notationImageUrl);
  writer.writeLong(offsets[11], object.orderIndex);
  writer.writeString(offsets[12], object.parentBoleId);
  writer.writeString(offsets[13], object.patternType);
  writer.writeString(offsets[14], object.pronunciation);
  writer.writeLong(offsets[15], object.repetitionCount);
  writer.writeLong(offsets[16], object.tempoBpm);
  writer.writeString(offsets[17], object.textEnglish);
  writer.writeString(offsets[18], object.textNepali);
  writer.writeString(offsets[19], object.timeSignature);
  writer.writeDateTime(offsets[20], object.updatedAt);
}

BoleModel _boleModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = BoleModel(
    attempts: reader.readLong(offsets[0]),
    audioUrl: reader.readStringOrNull(offsets[1]),
    createdAt: reader.readDateTimeOrNull(offsets[2]),
    descriptionEnglish: reader.readStringOrNull(offsets[3]),
    descriptionNepali: reader.readStringOrNull(offsets[4]),
    difficultyLevel: reader.readLong(offsets[5]),
    id: reader.readString(offsets[6]),
    isCompleted: reader.readBool(offsets[7]),
    isVariation: reader.readBool(offsets[8]),
    lessonId: reader.readString(offsets[9]),
    notationImageUrl: reader.readStringOrNull(offsets[10]),
    orderIndex: reader.readLong(offsets[11]),
    parentBoleId: reader.readStringOrNull(offsets[12]),
    patternType: reader.readString(offsets[13]),
    pronunciation: reader.readString(offsets[14]),
    repetitionCount: reader.readLong(offsets[15]),
    tempoBpm: reader.readLongOrNull(offsets[16]),
    textEnglish: reader.readString(offsets[17]),
    textNepali: reader.readString(offsets[18]),
    timeSignature: reader.readStringOrNull(offsets[19]),
    updatedAt: reader.readDateTimeOrNull(offsets[20]),
  );
  return object;
}

P _boleModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readBool(offset)) as P;
    case 8:
      return (reader.readBool(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readLong(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readString(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    case 15:
      return (reader.readLong(offset)) as P;
    case 16:
      return (reader.readLongOrNull(offset)) as P;
    case 17:
      return (reader.readString(offset)) as P;
    case 18:
      return (reader.readString(offset)) as P;
    case 19:
      return (reader.readStringOrNull(offset)) as P;
    case 20:
      return (reader.readDateTimeOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _boleModelGetId(BoleModel object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _boleModelGetLinks(BoleModel object) {
  return [];
}

void _boleModelAttach(IsarCollection<dynamic> col, Id id, BoleModel object) {}

extension BoleModelQueryWhereSort
    on QueryBuilder<BoleModel, BoleModel, QWhere> {
  QueryBuilder<BoleModel, BoleModel, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension BoleModelQueryWhere
    on QueryBuilder<BoleModel, BoleModel, QWhereClause> {
  QueryBuilder<BoleModel, BoleModel, QAfterWhereClause> isarIdEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterWhereClause> isarIdNotEqualTo(
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

  QueryBuilder<BoleModel, BoleModel, QAfterWhereClause> isarIdGreaterThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterWhereClause> isarIdLessThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterWhereClause> isarIdBetween(
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

extension BoleModelQueryFilter
    on QueryBuilder<BoleModel, BoleModel, QFilterCondition> {
  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> attemptsEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attempts',
        value: value,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> attemptsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'attempts',
        value: value,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> attemptsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'attempts',
        value: value,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> attemptsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'attempts',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> audioUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'audioUrl',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      audioUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'audioUrl',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> audioUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'audioUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> audioUrlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'audioUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> audioUrlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'audioUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> audioUrlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'audioUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> audioUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'audioUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> audioUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'audioUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> audioUrlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'audioUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> audioUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'audioUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> audioUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'audioUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      audioUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'audioUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> createdAtEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
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

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> createdAtLessThan(
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

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> createdAtBetween(
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

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      descriptionEnglishIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'descriptionEnglish',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      descriptionEnglishIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'descriptionEnglish',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
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

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
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

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
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

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
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

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
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

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
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

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      descriptionEnglishContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'descriptionEnglish',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      descriptionEnglishMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'descriptionEnglish',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      descriptionEnglishIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descriptionEnglish',
        value: '',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      descriptionEnglishIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'descriptionEnglish',
        value: '',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      descriptionNepaliIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'descriptionNepali',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      descriptionNepaliIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'descriptionNepali',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
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

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
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

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
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

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
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

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
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

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
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

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      descriptionNepaliContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'descriptionNepali',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      descriptionNepaliMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'descriptionNepali',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      descriptionNepaliIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descriptionNepali',
        value: '',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      descriptionNepaliIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'descriptionNepali',
        value: '',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      difficultyLevelEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'difficultyLevel',
        value: value,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      difficultyLevelGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'difficultyLevel',
        value: value,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      difficultyLevelLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'difficultyLevel',
        value: value,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      difficultyLevelBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'difficultyLevel',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> idEqualTo(
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

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> idStartsWith(
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

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> idEndsWith(
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

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> idContains(
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

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> idMatches(
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

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> isCompletedEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isCompleted',
        value: value,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> isVariationEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isVariation',
        value: value,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> isarIdEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> isarIdGreaterThan(
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

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> isarIdLessThan(
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

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> isarIdBetween(
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

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> lessonIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lessonId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> lessonIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lessonId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> lessonIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lessonId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> lessonIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lessonId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> lessonIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lessonId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> lessonIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lessonId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> lessonIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lessonId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> lessonIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lessonId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> lessonIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lessonId',
        value: '',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      lessonIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lessonId',
        value: '',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      notationImageUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'notationImageUrl',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      notationImageUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'notationImageUrl',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      notationImageUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notationImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      notationImageUrlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'notationImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      notationImageUrlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'notationImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      notationImageUrlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'notationImageUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      notationImageUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'notationImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      notationImageUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'notationImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      notationImageUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'notationImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      notationImageUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'notationImageUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      notationImageUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notationImageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      notationImageUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'notationImageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> orderIndexEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'orderIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
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

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> orderIndexLessThan(
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

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> orderIndexBetween(
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

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      parentBoleIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'parentBoleId',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      parentBoleIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'parentBoleId',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> parentBoleIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'parentBoleId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      parentBoleIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'parentBoleId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      parentBoleIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'parentBoleId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> parentBoleIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'parentBoleId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      parentBoleIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'parentBoleId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      parentBoleIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'parentBoleId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      parentBoleIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'parentBoleId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> parentBoleIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'parentBoleId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      parentBoleIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'parentBoleId',
        value: '',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      parentBoleIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'parentBoleId',
        value: '',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> patternTypeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'patternType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      patternTypeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'patternType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> patternTypeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'patternType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> patternTypeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'patternType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      patternTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'patternType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> patternTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'patternType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> patternTypeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'patternType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> patternTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'patternType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      patternTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'patternType',
        value: '',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      patternTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'patternType',
        value: '',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      pronunciationEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pronunciation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      pronunciationGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pronunciation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      pronunciationLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pronunciation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      pronunciationBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pronunciation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      pronunciationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'pronunciation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      pronunciationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'pronunciation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      pronunciationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'pronunciation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      pronunciationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'pronunciation',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      pronunciationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pronunciation',
        value: '',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      pronunciationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'pronunciation',
        value: '',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      repetitionCountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'repetitionCount',
        value: value,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      repetitionCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'repetitionCount',
        value: value,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      repetitionCountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'repetitionCount',
        value: value,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      repetitionCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'repetitionCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> tempoBpmIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tempoBpm',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      tempoBpmIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tempoBpm',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> tempoBpmEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tempoBpm',
        value: value,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> tempoBpmGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tempoBpm',
        value: value,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> tempoBpmLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tempoBpm',
        value: value,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> tempoBpmBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tempoBpm',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> textEnglishEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'textEnglish',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      textEnglishGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'textEnglish',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> textEnglishLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'textEnglish',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> textEnglishBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'textEnglish',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      textEnglishStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'textEnglish',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> textEnglishEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'textEnglish',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> textEnglishContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'textEnglish',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> textEnglishMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'textEnglish',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      textEnglishIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'textEnglish',
        value: '',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      textEnglishIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'textEnglish',
        value: '',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> textNepaliEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'textNepali',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      textNepaliGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'textNepali',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> textNepaliLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'textNepali',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> textNepaliBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'textNepali',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      textNepaliStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'textNepali',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> textNepaliEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'textNepali',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> textNepaliContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'textNepali',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> textNepaliMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'textNepali',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      textNepaliIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'textNepali',
        value: '',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      textNepaliIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'textNepali',
        value: '',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      timeSignatureIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'timeSignature',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      timeSignatureIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'timeSignature',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      timeSignatureEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timeSignature',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      timeSignatureGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timeSignature',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      timeSignatureLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timeSignature',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      timeSignatureBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timeSignature',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      timeSignatureStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'timeSignature',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      timeSignatureEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'timeSignature',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      timeSignatureContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'timeSignature',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      timeSignatureMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'timeSignature',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      timeSignatureIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timeSignature',
        value: '',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      timeSignatureIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'timeSignature',
        value: '',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
      updatedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> updatedAtEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition>
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

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> updatedAtLessThan(
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

  QueryBuilder<BoleModel, BoleModel, QAfterFilterCondition> updatedAtBetween(
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

extension BoleModelQueryObject
    on QueryBuilder<BoleModel, BoleModel, QFilterCondition> {}

extension BoleModelQueryLinks
    on QueryBuilder<BoleModel, BoleModel, QFilterCondition> {}

extension BoleModelQuerySortBy on QueryBuilder<BoleModel, BoleModel, QSortBy> {
  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> sortByAttempts() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attempts', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> sortByAttemptsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attempts', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> sortByAudioUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audioUrl', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> sortByAudioUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audioUrl', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> sortByDescriptionEnglish() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descriptionEnglish', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy>
      sortByDescriptionEnglishDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descriptionEnglish', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> sortByDescriptionNepali() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descriptionNepali', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy>
      sortByDescriptionNepaliDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descriptionNepali', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> sortByDifficultyLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'difficultyLevel', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> sortByDifficultyLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'difficultyLevel', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> sortByIsCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCompleted', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> sortByIsCompletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCompleted', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> sortByIsVariation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isVariation', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> sortByIsVariationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isVariation', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> sortByLessonId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lessonId', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> sortByLessonIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lessonId', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> sortByNotationImageUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notationImageUrl', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy>
      sortByNotationImageUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notationImageUrl', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> sortByOrderIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderIndex', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> sortByOrderIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderIndex', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> sortByParentBoleId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentBoleId', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> sortByParentBoleIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentBoleId', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> sortByPatternType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'patternType', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> sortByPatternTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'patternType', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> sortByPronunciation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pronunciation', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> sortByPronunciationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pronunciation', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> sortByRepetitionCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'repetitionCount', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> sortByRepetitionCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'repetitionCount', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> sortByTempoBpm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tempoBpm', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> sortByTempoBpmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tempoBpm', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> sortByTextEnglish() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textEnglish', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> sortByTextEnglishDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textEnglish', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> sortByTextNepali() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textNepali', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> sortByTextNepaliDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textNepali', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> sortByTimeSignature() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeSignature', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> sortByTimeSignatureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeSignature', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension BoleModelQuerySortThenBy
    on QueryBuilder<BoleModel, BoleModel, QSortThenBy> {
  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByAttempts() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attempts', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByAttemptsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attempts', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByAudioUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audioUrl', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByAudioUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audioUrl', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByDescriptionEnglish() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descriptionEnglish', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy>
      thenByDescriptionEnglishDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descriptionEnglish', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByDescriptionNepali() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descriptionNepali', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy>
      thenByDescriptionNepaliDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descriptionNepali', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByDifficultyLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'difficultyLevel', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByDifficultyLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'difficultyLevel', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByIsCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCompleted', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByIsCompletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCompleted', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByIsVariation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isVariation', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByIsVariationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isVariation', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByLessonId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lessonId', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByLessonIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lessonId', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByNotationImageUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notationImageUrl', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy>
      thenByNotationImageUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notationImageUrl', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByOrderIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderIndex', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByOrderIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderIndex', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByParentBoleId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentBoleId', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByParentBoleIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentBoleId', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByPatternType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'patternType', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByPatternTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'patternType', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByPronunciation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pronunciation', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByPronunciationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pronunciation', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByRepetitionCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'repetitionCount', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByRepetitionCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'repetitionCount', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByTempoBpm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tempoBpm', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByTempoBpmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tempoBpm', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByTextEnglish() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textEnglish', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByTextEnglishDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textEnglish', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByTextNepali() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textNepali', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByTextNepaliDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textNepali', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByTimeSignature() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeSignature', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByTimeSignatureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeSignature', Sort.desc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QAfterSortBy> thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension BoleModelQueryWhereDistinct
    on QueryBuilder<BoleModel, BoleModel, QDistinct> {
  QueryBuilder<BoleModel, BoleModel, QDistinct> distinctByAttempts() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'attempts');
    });
  }

  QueryBuilder<BoleModel, BoleModel, QDistinct> distinctByAudioUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'audioUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<BoleModel, BoleModel, QDistinct> distinctByDescriptionEnglish(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'descriptionEnglish',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QDistinct> distinctByDescriptionNepali(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'descriptionNepali',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QDistinct> distinctByDifficultyLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'difficultyLevel');
    });
  }

  QueryBuilder<BoleModel, BoleModel, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QDistinct> distinctByIsCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isCompleted');
    });
  }

  QueryBuilder<BoleModel, BoleModel, QDistinct> distinctByIsVariation() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isVariation');
    });
  }

  QueryBuilder<BoleModel, BoleModel, QDistinct> distinctByLessonId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lessonId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QDistinct> distinctByNotationImageUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notationImageUrl',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QDistinct> distinctByOrderIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'orderIndex');
    });
  }

  QueryBuilder<BoleModel, BoleModel, QDistinct> distinctByParentBoleId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'parentBoleId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QDistinct> distinctByPatternType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'patternType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QDistinct> distinctByPronunciation(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pronunciation',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QDistinct> distinctByRepetitionCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'repetitionCount');
    });
  }

  QueryBuilder<BoleModel, BoleModel, QDistinct> distinctByTempoBpm() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tempoBpm');
    });
  }

  QueryBuilder<BoleModel, BoleModel, QDistinct> distinctByTextEnglish(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'textEnglish', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QDistinct> distinctByTextNepali(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'textNepali', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QDistinct> distinctByTimeSignature(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timeSignature',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BoleModel, BoleModel, QDistinct> distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }
}

extension BoleModelQueryProperty
    on QueryBuilder<BoleModel, BoleModel, QQueryProperty> {
  QueryBuilder<BoleModel, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<BoleModel, int, QQueryOperations> attemptsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'attempts');
    });
  }

  QueryBuilder<BoleModel, String?, QQueryOperations> audioUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'audioUrl');
    });
  }

  QueryBuilder<BoleModel, DateTime?, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<BoleModel, String?, QQueryOperations>
      descriptionEnglishProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'descriptionEnglish');
    });
  }

  QueryBuilder<BoleModel, String?, QQueryOperations>
      descriptionNepaliProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'descriptionNepali');
    });
  }

  QueryBuilder<BoleModel, int, QQueryOperations> difficultyLevelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'difficultyLevel');
    });
  }

  QueryBuilder<BoleModel, String, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<BoleModel, bool, QQueryOperations> isCompletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isCompleted');
    });
  }

  QueryBuilder<BoleModel, bool, QQueryOperations> isVariationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isVariation');
    });
  }

  QueryBuilder<BoleModel, String, QQueryOperations> lessonIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lessonId');
    });
  }

  QueryBuilder<BoleModel, String?, QQueryOperations>
      notationImageUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notationImageUrl');
    });
  }

  QueryBuilder<BoleModel, int, QQueryOperations> orderIndexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'orderIndex');
    });
  }

  QueryBuilder<BoleModel, String?, QQueryOperations> parentBoleIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'parentBoleId');
    });
  }

  QueryBuilder<BoleModel, String, QQueryOperations> patternTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'patternType');
    });
  }

  QueryBuilder<BoleModel, String, QQueryOperations> pronunciationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pronunciation');
    });
  }

  QueryBuilder<BoleModel, int, QQueryOperations> repetitionCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'repetitionCount');
    });
  }

  QueryBuilder<BoleModel, int?, QQueryOperations> tempoBpmProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tempoBpm');
    });
  }

  QueryBuilder<BoleModel, String, QQueryOperations> textEnglishProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'textEnglish');
    });
  }

  QueryBuilder<BoleModel, String, QQueryOperations> textNepaliProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'textNepali');
    });
  }

  QueryBuilder<BoleModel, String?, QQueryOperations> timeSignatureProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timeSignature');
    });
  }

  QueryBuilder<BoleModel, DateTime?, QQueryOperations> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BoleModel _$$_BoleModelFromJson(Map<String, dynamic> json) => _$_BoleModel(
      id: json['id'] as String,
      lessonId: json['lesson_id'] as String,
      textNepali: json['text_nepali'] as String,
      textEnglish: json['text_english'] as String,
      pronunciation: json['pronunciation'] as String,
      descriptionNepali: json['description_nepali'] as String?,
      descriptionEnglish: json['description_english'] as String?,
      audioUrl: json['audio_url'] as String?,
      orderIndex: (json['order_index'] as num).toInt(),
      difficultyLevel: (json['difficulty_level'] as num?)?.toInt() ?? 1,
      patternType: json['pattern_type'] as String? ?? 'single',
      repetitionCount: (json['repetition_count'] as num?)?.toInt() ?? 1,
      isVariation: json['is_variation'] as bool? ?? false,
      parentBoleId: json['parent_bole_id'] as String?,
      tempoBpm: (json['tempo_bpm'] as num?)?.toInt(),
      timeSignature: json['time_signature'] as String?,
      notationImageUrl: json['notation_image_url'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      isCompleted: json['isCompleted'] as bool? ?? false,
      attempts: (json['attempts'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$_BoleModelToJson(_$_BoleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lesson_id': instance.lessonId,
      'text_nepali': instance.textNepali,
      'text_english': instance.textEnglish,
      'pronunciation': instance.pronunciation,
      'description_nepali': instance.descriptionNepali,
      'description_english': instance.descriptionEnglish,
      'audio_url': instance.audioUrl,
      'order_index': instance.orderIndex,
      'difficulty_level': instance.difficultyLevel,
      'pattern_type': instance.patternType,
      'repetition_count': instance.repetitionCount,
      'is_variation': instance.isVariation,
      'parent_bole_id': instance.parentBoleId,
      'tempo_bpm': instance.tempoBpm,
      'time_signature': instance.timeSignature,
      'notation_image_url': instance.notationImageUrl,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'isCompleted': instance.isCompleted,
      'attempts': instance.attempts,
    };
