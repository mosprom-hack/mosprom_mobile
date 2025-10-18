import 'package:dio/dio.dart';
import '../models/mentor_detail_model.dart';
import '../models/mentor_list_response.dart';
import '../models/mentor_detail_response.dart';

abstract class MentorRemoteDataSource {
  Future<List<MentorDetailModel>> getMentors();
  Future<MentorDetailModel> getMentorById(String id);
}

class MentorRemoteDataSourceImpl implements MentorRemoteDataSource {
  final Dio dio;

  MentorRemoteDataSourceImpl({required this.dio});

  @override
  Future<List<MentorDetailModel>> getMentors() async {
    try {
      final response = await dio.get('/api/mentors');

      final mentorListResponse = MentorListResponse.fromJson(response.data);

      final List<MentorDetailModel> mentorDetails = [];

      for (final preview in mentorListResponse.data) {
        final detailResponse = await dio.get('/api/mentors/${preview.id}');
        final mentorDetailResponse =
            MentorDetailResponse.fromJson(detailResponse.data);
        mentorDetails.add(mentorDetailResponse.data);
      }

      return mentorDetails;
    } catch (e) {
      throw Exception('Не удалось загрузить список менторов: $e');
    }
  }

  @override
  Future<MentorDetailModel> getMentorById(String id) async {
    try {
      final response = await dio.get('/api/mentors/$id');

      final mentorDetailResponse = MentorDetailResponse.fromJson(response.data);

      return mentorDetailResponse.data;
    } catch (e) {
      throw Exception('Не удалось загрузить ментора: $e');
    }
  }
}
