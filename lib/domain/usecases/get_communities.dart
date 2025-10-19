import '../entities/community.dart';
import '../repositories/community_repository.dart';

class GetCommunities {
  final CommunityRepository repository;

  GetCommunities(this.repository);

  Future<List<Community>> call() async {
    return await repository.getCommunities();
  }
}
