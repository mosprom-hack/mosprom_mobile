import '../entities/mentor.dart';

abstract class MentorRepository {
  Future<List<Mentor>> getMentors();
}
