import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gunla_baja_flutter/core/utils/hash_functions_isar.dart';
import 'package:isar/isar.dart';

part 'user_profile_model.freezed.dart';
part 'user_profile_model.g.dart';

@freezed
@Collection(ignore: {'copyWith'})
class UserProfileModel with _$UserProfileModel {
  const UserProfileModel._();

  const factory UserProfileModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'display_name') String? displayName,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
    @JsonKey(name: 'preferred_language')
    @Default('nepali')
    String preferredLanguage,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _UserProfileModel;

  @override
  Id get isarId => fastHash(id);

  factory UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileModelFromJson(json);
}
