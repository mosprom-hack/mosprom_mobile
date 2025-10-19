import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/user.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const UserModel._();

  const factory UserModel({
    required String id,
    required String nickname,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    String? phone,
    String? email,
    @JsonKey(name: 'photo_url') String? photoUrl,
    String? description,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  User toEntity() {
    return User(
      id: id,
      nickname: nickname,
      firstName: firstName,
      lastName: lastName,
      phone: phone,
      email: email,
      photoUrl: photoUrl,
      description: description,
      createdAt: createdAt,
    );
  }

  factory UserModel.fromEntity(User entity) {
    return UserModel(
      id: entity.id,
      nickname: entity.nickname,
      firstName: entity.firstName,
      lastName: entity.lastName,
      phone: entity.phone,
      email: entity.email,
      photoUrl: entity.photoUrl,
      description: entity.description,
      createdAt: entity.createdAt,
    );
  }
}
