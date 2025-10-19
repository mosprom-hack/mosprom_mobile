import '../entities/user.dart';
import '../repositories/user_repository.dart';

class UpdateUser {
  final UserRepository repository;

  UpdateUser(this.repository);

  Future<User> call({
    required String id,
    String? firstName,
    String? lastName,
    String? telegram,
    String? phone,
    String? email,
    String? description,
  }) async {
    return await repository.updateUser(
      id: id,
      firstName: firstName,
      lastName: lastName,
      telegram: telegram,
      phone: phone,
      email: email,
      description: description,
    );
  }
}
