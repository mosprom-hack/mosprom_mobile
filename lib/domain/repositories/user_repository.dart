import '../entities/user.dart';

abstract class UserRepository {
  Future<User> getCurrentUser();
  Future<User> updateUser({
    required String id,
    String? firstName,
    String? lastName,
    String? nickname,
    String? phone,
    String? email,
    String? description,
  });
}
