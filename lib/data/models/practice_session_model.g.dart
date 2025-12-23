// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'practice_session_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPracticeSessionModelCollection on Isar {
  IsarCollection<PracticeSessionModel> get practiceSessionModels =>
      this.collection();
}

const PracticeSessionModelSchema = CollectionSchema(
  name: r'PracticeSessionModel',
  id: -4947741442469199433,
  properties: {
    r'bolesCompleted': PropertySchema(
      id: 0,
      name: r'bolesCompleted',
      type: IsarType.long,
    ),
    r'bolesPracticed': PropertySchema(
      id: 1,
      name: r'bolesPracticed',
      type: IsarType.long,
    ),
    r'durationSeconds': PropertySchema(
      id: 2,
      name: r'durationSeconds',
      type: IsarType.long,
    ),
    r'endedAt': PropertySchema(
      id: 3,
      name: r'endedAt',
      type: IsarType.dateTime,
    ),
    r'id': PropertySchema(
      id: 4,
      name: r'id',
      type: IsarType.string,
    ),
    r'lessonId': PropertySchema(
      id: 5,
      name: r'lessonId',
      type: IsarType.string,
    ),
    r'startedAt': PropertySchema(
      id: 6,
      name: r'startedAt',
      type: IsarType.dateTime,
    ),
    r'userId': PropertySchema(
      id: 7,
      name: r'userId',
      type: IsarType.string,
    )
  },
  estimateSize: _practiceSessionModelEstimateSize,
  serialize: _practiceSessionModelSerialize,
  deserialize: _practiceSessionModelDeserialize,
  deserializeProp: _practiceSessionModelDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _practiceSessionModelGetId,
  getLinks: _practiceSessionModelGetLinks,
  attach: _practiceSessionModelAttach,
  version: '3.1.0+1',
);

int _practiceSessionModelEstimateSize(
  PracticeSessionModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.id.length * 3;
  bytesCount += 3 + object.lessonId.length * 3;
  bytesCount += 3 + object.userId.length * 3;
  return bytesCount;
}

void _practiceSessionModelSerialize(
  PracticeSessionModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.bolesCompleted);
  writer.writeLong(offsets[1], object.bolesPracticed);
  writer.writeLong(offsets[2], object.durationSeconds);
  writer.writeDateTime(offsets[3], object.endedAt);
  writer.writeString(offsets[4], object.id);
  writer.writeString(offsets[5], object.lessonId);
  writer.writeDateTime(offsets[6], object.startedAt);
  writer.writeString(offsets[7], object.userId);
}

PracticeSessionModel _practiceSessionModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PracticeSessionModel(
    bolesCompleted: reader.readLong(offsets[0]),
    bolesPracticed: reader.readLong(offsets[1]),
    durationSeconds: reader.readLongOrNull(offsets[2]),
    endedAt: reader.readDateTimeOrNull(offsets[3]),
    id: reader.readString(offsets[4]),
    lessonId: reader.readString(offsets[5]),
    startedAt: reader.readDateTime(offsets[6]),
    userId: reader.readString(offsets[7]),
  );
  return object;
}

P _practiceSessionModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readDateTime(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _practiceSessionModelGetId(PracticeSessionModel object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _practiceSessionModelGetLinks(
    PracticeSessionModel object) {
  return [];
}

void _practiceSessionModelAttach(
    IsarCollection<dynamic> col, Id id, PracticeSessionModel object) {}

extension PracticeSessionModelQueryWhereSort
    on QueryBuilder<PracticeSessionModel, PracticeSessionModel, QWhere> {
  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterWhere>
      anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PracticeSessionModelQueryWhere
    on QueryBuilder<PracticeSessionModel, PracticeSessionModel, QWhereClause> {
  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterWhereClause>
      isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterWhereClause>
      isarIdNotEqualTo(Id isarId) {
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

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterWhereClause>
      isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterWhereClause>
      isarIdLessThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterWhereClause>
      isarIdBetween(
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

extension PracticeSessionModelQueryFilter on QueryBuilder<PracticeSessionModel,
    PracticeSessionModel, QFilterCondition> {
  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> bolesCompletedEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bolesCompleted',
        value: value,
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> bolesCompletedGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bolesCompleted',
        value: value,
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> bolesCompletedLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bolesCompleted',
        value: value,
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> bolesCompletedBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bolesCompleted',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> bolesPracticedEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bolesPracticed',
        value: value,
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> bolesPracticedGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bolesPracticed',
        value: value,
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> bolesPracticedLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bolesPracticed',
        value: value,
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> bolesPracticedBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bolesPracticed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> durationSecondsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'durationSeconds',
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> durationSecondsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'durationSeconds',
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> durationSecondsEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'durationSeconds',
        value: value,
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> durationSecondsGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'durationSeconds',
        value: value,
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> durationSecondsLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'durationSeconds',
        value: value,
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> durationSecondsBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'durationSeconds',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> endedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'endedAt',
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> endedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'endedAt',
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> endedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'endedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> endedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'endedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> endedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'endedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> endedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'endedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> idEqualTo(
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

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> idLessThan(
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

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> idBetween(
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

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> idStartsWith(
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

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> idEndsWith(
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

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
          QAfterFilterCondition>
      idContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
          QAfterFilterCondition>
      idMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> isarIdGreaterThan(
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

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> isarIdLessThan(
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

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> isarIdBetween(
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

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> lessonIdEqualTo(
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

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> lessonIdGreaterThan(
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

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> lessonIdLessThan(
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

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> lessonIdBetween(
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

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> lessonIdStartsWith(
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

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> lessonIdEndsWith(
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

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
          QAfterFilterCondition>
      lessonIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lessonId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
          QAfterFilterCondition>
      lessonIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lessonId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> lessonIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lessonId',
        value: '',
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> lessonIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lessonId',
        value: '',
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> startedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'startedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> startedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'startedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> startedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'startedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> startedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'startedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> userIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> userIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> userIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> userIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> userIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> userIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
          QAfterFilterCondition>
      userIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
          QAfterFilterCondition>
      userIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> userIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: '',
      ));
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel,
      QAfterFilterCondition> userIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'userId',
        value: '',
      ));
    });
  }
}

extension PracticeSessionModelQueryObject on QueryBuilder<PracticeSessionModel,
    PracticeSessionModel, QFilterCondition> {}

extension PracticeSessionModelQueryLinks on QueryBuilder<PracticeSessionModel,
    PracticeSessionModel, QFilterCondition> {}

extension PracticeSessionModelQuerySortBy
    on QueryBuilder<PracticeSessionModel, PracticeSessionModel, QSortBy> {
  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterSortBy>
      sortByBolesCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bolesCompleted', Sort.asc);
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterSortBy>
      sortByBolesCompletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bolesCompleted', Sort.desc);
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterSortBy>
      sortByBolesPracticed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bolesPracticed', Sort.asc);
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterSortBy>
      sortByBolesPracticedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bolesPracticed', Sort.desc);
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterSortBy>
      sortByDurationSeconds() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durationSeconds', Sort.asc);
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterSortBy>
      sortByDurationSecondsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durationSeconds', Sort.desc);
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterSortBy>
      sortByEndedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endedAt', Sort.asc);
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterSortBy>
      sortByEndedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endedAt', Sort.desc);
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterSortBy>
      sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterSortBy>
      sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterSortBy>
      sortByLessonId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lessonId', Sort.asc);
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterSortBy>
      sortByLessonIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lessonId', Sort.desc);
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterSortBy>
      sortByStartedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedAt', Sort.asc);
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterSortBy>
      sortByStartedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedAt', Sort.desc);
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterSortBy>
      sortByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterSortBy>
      sortByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension PracticeSessionModelQuerySortThenBy
    on QueryBuilder<PracticeSessionModel, PracticeSessionModel, QSortThenBy> {
  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterSortBy>
      thenByBolesCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bolesCompleted', Sort.asc);
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterSortBy>
      thenByBolesCompletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bolesCompleted', Sort.desc);
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterSortBy>
      thenByBolesPracticed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bolesPracticed', Sort.asc);
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterSortBy>
      thenByBolesPracticedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bolesPracticed', Sort.desc);
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterSortBy>
      thenByDurationSeconds() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durationSeconds', Sort.asc);
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterSortBy>
      thenByDurationSecondsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durationSeconds', Sort.desc);
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterSortBy>
      thenByEndedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endedAt', Sort.asc);
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterSortBy>
      thenByEndedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endedAt', Sort.desc);
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterSortBy>
      thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterSortBy>
      thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterSortBy>
      thenByLessonId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lessonId', Sort.asc);
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterSortBy>
      thenByLessonIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lessonId', Sort.desc);
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterSortBy>
      thenByStartedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedAt', Sort.asc);
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterSortBy>
      thenByStartedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedAt', Sort.desc);
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterSortBy>
      thenByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QAfterSortBy>
      thenByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension PracticeSessionModelQueryWhereDistinct
    on QueryBuilder<PracticeSessionModel, PracticeSessionModel, QDistinct> {
  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QDistinct>
      distinctByBolesCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bolesCompleted');
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QDistinct>
      distinctByBolesPracticed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bolesPracticed');
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QDistinct>
      distinctByDurationSeconds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'durationSeconds');
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QDistinct>
      distinctByEndedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'endedAt');
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QDistinct>
      distinctById({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QDistinct>
      distinctByLessonId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lessonId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QDistinct>
      distinctByStartedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'startedAt');
    });
  }

  QueryBuilder<PracticeSessionModel, PracticeSessionModel, QDistinct>
      distinctByUserId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userId', caseSensitive: caseSensitive);
    });
  }
}

extension PracticeSessionModelQueryProperty on QueryBuilder<
    PracticeSessionModel, PracticeSessionModel, QQueryProperty> {
  QueryBuilder<PracticeSessionModel, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<PracticeSessionModel, int, QQueryOperations>
      bolesCompletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bolesCompleted');
    });
  }

  QueryBuilder<PracticeSessionModel, int, QQueryOperations>
      bolesPracticedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bolesPracticed');
    });
  }

  QueryBuilder<PracticeSessionModel, int?, QQueryOperations>
      durationSecondsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'durationSeconds');
    });
  }

  QueryBuilder<PracticeSessionModel, DateTime?, QQueryOperations>
      endedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'endedAt');
    });
  }

  QueryBuilder<PracticeSessionModel, String, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PracticeSessionModel, String, QQueryOperations>
      lessonIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lessonId');
    });
  }

  QueryBuilder<PracticeSessionModel, DateTime, QQueryOperations>
      startedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'startedAt');
    });
  }

  QueryBuilder<PracticeSessionModel, String, QQueryOperations>
      userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userId');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PracticeSessionModel _$$_PracticeSessionModelFromJson(
        Map<String, dynamic> json) =>
    _$_PracticeSessionModel(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      lessonId: json['lesson_id'] as String,
      durationSeconds: (json['duration_seconds'] as num?)?.toInt(),
      bolesPracticed: (json['boles_practiced'] as num?)?.toInt() ?? 0,
      bolesCompleted: (json['boles_completed'] as num?)?.toInt() ?? 0,
      startedAt: DateTime.parse(json['started_at'] as String),
      endedAt: json['ended_at'] == null
          ? null
          : DateTime.parse(json['ended_at'] as String),
    );

Map<String, dynamic> _$$_PracticeSessionModelToJson(
        _$_PracticeSessionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'lesson_id': instance.lessonId,
      'duration_seconds': instance.durationSeconds,
      'boles_practiced': instance.bolesPracticed,
      'boles_completed': instance.bolesCompleted,
      'started_at': instance.startedAt.toIso8601String(),
      'ended_at': instance.endedAt?.toIso8601String(),
    };
