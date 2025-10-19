import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const User._();

  const factory User({
    required String id,
    required String nickname,
    required String firstName,
    required String lastName,
    String? phone,
    String? email,
    String? photoUrl,
    String? description,
    String? createdAt,
  }) = _User;

  String get fullName => '$firstName $lastName';
}
