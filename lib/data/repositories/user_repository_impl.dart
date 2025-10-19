import '../../domain/entities/user.dart';
import '../../domain/repositories/user_repository.dart';
import '../datasources/user_remote_data_source.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource remoteDataSource;

  UserRepositoryImpl({required this.remoteDataSource});

  @override
  Future<User> getCurrentUser() async {
    final userModel = await remoteDataSource.getUserById(
      UserRemoteDataSourceImpl.currentUserId,
    );
    return userModel.toEntity();
  }

  @override
  Future<User> updateUser({
    required String id,
    String? firstName,
    String? lastName,
    String? telegram,
    String? phone,
    String? email,
    String? description,
  }) async {
    final userModel = await remoteDataSource.updateUser(
      id: id,
      firstName: firstName,
      lastName: lastName,
      telegram: telegram,
      phone: phone,
      email: email,
      description: description,
    );
    return userModel.toEntity();
  }
}
