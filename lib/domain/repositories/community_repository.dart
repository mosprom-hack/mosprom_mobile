import '../entities/community.dart';

abstract class CommunityRepository {
  Future<List<Community>> getCommunities();
}
