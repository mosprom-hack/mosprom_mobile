import '../entities/mentor.dart';
import '../repositories/mentor_repository.dart';

class GetMentorById {
  final MentorRepository repository;

  GetMentorById(this.repository);

  Future<Mentor> call(String id) async {
    return await repository.getMentorById(id);
  }
}
