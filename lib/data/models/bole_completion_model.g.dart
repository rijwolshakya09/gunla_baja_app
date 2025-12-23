// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bole_completion_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetBoleCompletionModelCollection on Isar {
  IsarCollection<BoleCompletionModel> get boleCompletionModels =>
      this.collection();
}

const BoleCompletionModelSchema = CollectionSchema(
  name: r'BoleCompletionModel',
  id: 4144170734783355511,
  properties: {
    r'accuracyScore': PropertySchema(
      id: 0,
      name: r'accuracyScore',
      type: IsarType.double,
    ),
    r'attempts': PropertySchema(
      id: 1,
      name: r'attempts',
      type: IsarType.long,
    ),
    r'boleId': PropertySchema(
      id: 2,
      name: r'boleId',
      type: IsarType.string,
    ),
    r'completedAt': PropertySchema(
      id: 3,
      name: r'completedAt',
      type: IsarType.dateTime,
    ),
    r'createdAt': PropertySchema(
      id: 4,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'id': PropertySchema(
      id: 5,
      name: r'id',
      type: IsarType.string,
    ),
    r'isCompleted': PropertySchema(
      id: 6,
      name: r'isCompleted',
      type: IsarType.bool,
    ),
    r'lessonId': PropertySchema(
      id: 7,
      name: r'lessonId',
      type: IsarType.string,
    ),
    r'updatedAt': PropertySchema(
      id: 8,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'userId': PropertySchema(
      id: 9,
      name: r'userId',
      type: IsarType.string,
    )
  },
  estimateSize: _boleCompletionModelEstimateSize,
  serialize: _boleCompletionModelSerialize,
  deserialize: _boleCompletionModelDeserialize,
  deserializeProp: _boleCompletionModelDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _boleCompletionModelGetId,
  getLinks: _boleCompletionModelGetLinks,
  attach: _boleCompletionModelAttach,
  version: '3.1.0+1',
);

int _boleCompletionModelEstimateSize(
  BoleCompletionModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.boleId.length * 3;
  bytesCount += 3 + object.id.length * 3;
  bytesCount += 3 + object.lessonId.length * 3;
  bytesCount += 3 + object.userId.length * 3;
  return bytesCount;
}

void _boleCompletionModelSerialize(
  BoleCompletionModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.accuracyScore);
  writer.writeLong(offsets[1], object.attempts);
  writer.writeString(offsets[2], object.boleId);
  writer.writeDateTime(offsets[3], object.completedAt);
  writer.writeDateTime(offsets[4], object.createdAt);
  writer.writeString(offsets[5], object.id);
  writer.writeBool(offsets[6], object.isCompleted);
  writer.writeString(offsets[7], object.lessonId);
  writer.writeDateTime(offsets[8], object.updatedAt);
  writer.writeString(offsets[9], object.userId);
}

BoleCompletionModel _boleCompletionModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = BoleCompletionModel(
    accuracyScore: reader.readDoubleOrNull(offsets[0]),
    attempts: reader.readLong(offsets[1]),
    boleId: reader.readString(offsets[2]),
    completedAt: reader.readDateTimeOrNull(offsets[3]),
    createdAt: reader.readDateTimeOrNull(offsets[4]),
    id: reader.readString(offsets[5]),
    isCompleted: reader.readBool(offsets[6]),
    lessonId: reader.readString(offsets[7]),
    updatedAt: reader.readDateTimeOrNull(offsets[8]),
    userId: reader.readString(offsets[9]),
  );
  return object;
}

P _boleCompletionModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleOrNull(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 4:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readBool(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _boleCompletionModelGetId(BoleCompletionModel object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _boleCompletionModelGetLinks(
    BoleCompletionModel object) {
  return [];
}

void _boleCompletionModelAttach(
    IsarCollection<dynamic> col, Id id, BoleCompletionModel object) {}

extension BoleCompletionModelQueryWhereSort
    on QueryBuilder<BoleCompletionModel, BoleCompletionModel, QWhere> {
  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterWhere>
      anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension BoleCompletionModelQueryWhere
    on QueryBuilder<BoleCompletionModel, BoleCompletionModel, QWhereClause> {
  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterWhereClause>
      isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterWhereClause>
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

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterWhereClause>
      isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterWhereClause>
      isarIdLessThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterWhereClause>
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

extension BoleCompletionModelQueryFilter on QueryBuilder<BoleCompletionModel,
    BoleCompletionModel, QFilterCondition> {
  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      accuracyScoreIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'accuracyScore',
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      accuracyScoreIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'accuracyScore',
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      accuracyScoreEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'accuracyScore',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      accuracyScoreGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'accuracyScore',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      accuracyScoreLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'accuracyScore',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      accuracyScoreBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'accuracyScore',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      attemptsEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attempts',
        value: value,
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      attemptsGreaterThan(
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

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      attemptsLessThan(
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

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      attemptsBetween(
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

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      boleIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'boleId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      boleIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'boleId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      boleIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'boleId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      boleIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'boleId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      boleIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'boleId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      boleIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'boleId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      boleIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'boleId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      boleIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'boleId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      boleIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'boleId',
        value: '',
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      boleIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'boleId',
        value: '',
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      completedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'completedAt',
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      completedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'completedAt',
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      completedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'completedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      completedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'completedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      completedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'completedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      completedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'completedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      createdAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
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

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
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

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
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

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      idEqualTo(
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

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      idStartsWith(
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

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      idEndsWith(
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

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      idContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      idMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      isCompletedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isCompleted',
        value: value,
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
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

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      isarIdLessThan(
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

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      isarIdBetween(
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

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      lessonIdEqualTo(
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

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      lessonIdGreaterThan(
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

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      lessonIdLessThan(
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

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      lessonIdBetween(
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

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      lessonIdStartsWith(
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

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      lessonIdEndsWith(
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

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      lessonIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lessonId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      lessonIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lessonId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      lessonIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lessonId',
        value: '',
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      lessonIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lessonId',
        value: '',
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      updatedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      updatedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
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

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
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

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
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

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      userIdEqualTo(
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

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      userIdGreaterThan(
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

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      userIdLessThan(
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

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      userIdBetween(
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

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      userIdStartsWith(
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

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      userIdEndsWith(
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

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      userIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      userIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      userIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: '',
      ));
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterFilterCondition>
      userIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'userId',
        value: '',
      ));
    });
  }
}

extension BoleCompletionModelQueryObject on QueryBuilder<BoleCompletionModel,
    BoleCompletionModel, QFilterCondition> {}

extension BoleCompletionModelQueryLinks on QueryBuilder<BoleCompletionModel,
    BoleCompletionModel, QFilterCondition> {}

extension BoleCompletionModelQuerySortBy
    on QueryBuilder<BoleCompletionModel, BoleCompletionModel, QSortBy> {
  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      sortByAccuracyScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accuracyScore', Sort.asc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      sortByAccuracyScoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accuracyScore', Sort.desc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      sortByAttempts() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attempts', Sort.asc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      sortByAttemptsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attempts', Sort.desc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      sortByBoleId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'boleId', Sort.asc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      sortByBoleIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'boleId', Sort.desc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      sortByCompletedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedAt', Sort.asc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      sortByCompletedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedAt', Sort.desc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      sortByIsCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCompleted', Sort.asc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      sortByIsCompletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCompleted', Sort.desc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      sortByLessonId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lessonId', Sort.asc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      sortByLessonIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lessonId', Sort.desc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      sortByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      sortByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension BoleCompletionModelQuerySortThenBy
    on QueryBuilder<BoleCompletionModel, BoleCompletionModel, QSortThenBy> {
  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      thenByAccuracyScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accuracyScore', Sort.asc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      thenByAccuracyScoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accuracyScore', Sort.desc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      thenByAttempts() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attempts', Sort.asc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      thenByAttemptsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attempts', Sort.desc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      thenByBoleId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'boleId', Sort.asc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      thenByBoleIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'boleId', Sort.desc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      thenByCompletedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedAt', Sort.asc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      thenByCompletedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedAt', Sort.desc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      thenByIsCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCompleted', Sort.asc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      thenByIsCompletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCompleted', Sort.desc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      thenByLessonId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lessonId', Sort.asc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      thenByLessonIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lessonId', Sort.desc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      thenByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QAfterSortBy>
      thenByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension BoleCompletionModelQueryWhereDistinct
    on QueryBuilder<BoleCompletionModel, BoleCompletionModel, QDistinct> {
  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QDistinct>
      distinctByAccuracyScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'accuracyScore');
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QDistinct>
      distinctByAttempts() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'attempts');
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QDistinct>
      distinctByBoleId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'boleId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QDistinct>
      distinctByCompletedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'completedAt');
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QDistinct>
      distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QDistinct>
      distinctById({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QDistinct>
      distinctByIsCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isCompleted');
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QDistinct>
      distinctByLessonId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lessonId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QDistinct>
      distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }

  QueryBuilder<BoleCompletionModel, BoleCompletionModel, QDistinct>
      distinctByUserId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userId', caseSensitive: caseSensitive);
    });
  }
}

extension BoleCompletionModelQueryProperty
    on QueryBuilder<BoleCompletionModel, BoleCompletionModel, QQueryProperty> {
  QueryBuilder<BoleCompletionModel, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<BoleCompletionModel, double?, QQueryOperations>
      accuracyScoreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'accuracyScore');
    });
  }

  QueryBuilder<BoleCompletionModel, int, QQueryOperations> attemptsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'attempts');
    });
  }

  QueryBuilder<BoleCompletionModel, String, QQueryOperations> boleIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'boleId');
    });
  }

  QueryBuilder<BoleCompletionModel, DateTime?, QQueryOperations>
      completedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'completedAt');
    });
  }

  QueryBuilder<BoleCompletionModel, DateTime?, QQueryOperations>
      createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<BoleCompletionModel, String, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<BoleCompletionModel, bool, QQueryOperations>
      isCompletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isCompleted');
    });
  }

  QueryBuilder<BoleCompletionModel, String, QQueryOperations>
      lessonIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lessonId');
    });
  }

  QueryBuilder<BoleCompletionModel, DateTime?, QQueryOperations>
      updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<BoleCompletionModel, String, QQueryOperations> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userId');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BoleCompletionModel _$$_BoleCompletionModelFromJson(
        Map<String, dynamic> json) =>
    _$_BoleCompletionModel(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      boleId: json['bole_id'] as String,
      lessonId: json['lesson_id'] as String,
      isCompleted: json['is_completed'] as bool? ?? false,
      accuracyScore: (json['accuracy_score'] as num?)?.toDouble(),
      attempts: (json['attempts'] as num?)?.toInt() ?? 0,
      completedAt: json['completed_at'] == null
          ? null
          : DateTime.parse(json['completed_at'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_BoleCompletionModelToJson(
        _$_BoleCompletionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'bole_id': instance.boleId,
      'lesson_id': instance.lessonId,
      'is_completed': instance.isCompleted,
      'accuracy_score': instance.accuracyScore,
      'attempts': instance.attempts,
      'completed_at': instance.completedAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
