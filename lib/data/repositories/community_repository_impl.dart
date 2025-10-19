import '../../domain/entities/community.dart';
import '../../domain/repositories/community_repository.dart';
import '../datasources/community_remote_data_source.dart';

class CommunityRepositoryImpl implements CommunityRepository {
  final CommunityRemoteDataSource remoteDataSource;

  CommunityRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<Community>> getCommunities() async {
    final communityModels = await remoteDataSource.getCommunities();
    return communityModels.map((model) => model.toEntity()).toList();
  }
}
