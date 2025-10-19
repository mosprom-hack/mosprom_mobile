import 'package:dio/dio.dart';
import '../models/post_model.dart';
import '../models/post_list_response.dart';

abstract class PostRemoteDataSource {
  Future<List<PostModel>> getPosts();
}

class PostRemoteDataSourceImpl implements PostRemoteDataSource {
  final Dio dio;

  PostRemoteDataSourceImpl({required this.dio});

  @override
  Future<List<PostModel>> getPosts() async {
    try {
      final response = await dio.get('/api/posts');
      final postListResponse = PostListResponse.fromJson(response.data);
      return postListResponse.data;
    } catch (e) {
      throw Exception('Не удалось загрузить посты: $e');
    }
  }
}
