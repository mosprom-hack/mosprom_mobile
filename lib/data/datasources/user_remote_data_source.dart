import 'package:dio/dio.dart';
import '../models/user_model.dart';
import '../models/user_response.dart';

abstract class UserRemoteDataSource {
  Future<UserModel> getUserById(String id);
  Future<UserModel> updateUser({
    required String id,
    String? firstName,
    String? lastName,
    String? telegram,
    String? phone,
    String? email,
    String? description,
  });
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final Dio dio;
  static const String currentUserId = '823d7582-6282-4c22-b8dc-d7000857b71f';

  UserRemoteDataSourceImpl({required this.dio});

  @override
  Future<UserModel> getUserById(String id) async {
    try {
      final response = await dio.get('/api/users/$id');
      final userResponse = UserResponse.fromJson(response.data);
      return userResponse.data;
    } catch (e) {
      throw Exception('Не удалось загрузить пользователя: $e');
    }
  }

  @override
  Future<UserModel> updateUser({
    required String id,
    String? firstName,
    String? lastName,
    String? telegram,
    String? phone,
    String? email,
    String? description,
  }) async {
    try {
      final Map<String, dynamic> data = {};

      if (firstName != null) data['first_name'] = firstName;
      if (lastName != null) data['last_name'] = lastName;
      if (telegram != null) data['telegram'] = telegram;
      if (phone != null) data['phone'] = phone;
      if (email != null) data['email'] = email;
      if (description != null) data['description'] = description;

      final response = await dio.put('/api/users/$id', data: data);
      final userResponse = UserResponse.fromJson(response.data);
      return userResponse.data;
    } catch (e) {
      throw Exception('Не удалось обновить данные пользователя: $e');
    }
  }
}
