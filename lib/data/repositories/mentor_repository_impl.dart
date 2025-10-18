import '../../domain/entities/mentor.dart';
import '../../domain/repositories/mentor_repository.dart';
import '../datasources/mentor_remote_data_source.dart';

class MentorRepositoryImpl implements MentorRepository {
  final MentorRemoteDataSource remoteDataSource;

  MentorRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<Mentor>> getMentors() async {
    final mentorModels = await remoteDataSource.getMentors();
    return mentorModels.map((model) => model.toEntity()).toList();
  }

  @override
  Future<Mentor> getMentorById(String id) async {
    final mentorModel = await remoteDataSource.getMentorById(id);
    return mentorModel.toEntity();
  }
}
