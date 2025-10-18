import '../entities/mentor.dart';
import '../repositories/mentor_repository.dart';

class GetMentors {
  final MentorRepository repository;

  GetMentors(this.repository);

  Future<List<Mentor>> call() async {
    return await repository.getMentors();
  }
}
