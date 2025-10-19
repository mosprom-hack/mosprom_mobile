import 'package:dio/dio.dart';
import '../models/community_model.dart';
import '../models/community_list_response.dart';

abstract class CommunityRemoteDataSource {
  Future<List<CommunityModel>> getCommunities();
}

class CommunityRemoteDataSourceImpl implements CommunityRemoteDataSource {
  final Dio dio;

  CommunityRemoteDataSourceImpl({required this.dio});

  @override
  Future<List<CommunityModel>> getCommunities() async {
    try {
      final response = await dio.get('/api/communities');

      final communityListResponse =
          CommunityListResponse.fromJson(response.data);

      return communityListResponse.data;
    } catch (e) {
      throw Exception('Не удалось загрузить список сообществ: $e');
    }
  }
}
