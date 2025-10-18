import '../entities/mentor.dart';

abstract class MentorRepository {
  Future<List<Mentor>> getMentors();
  Future<Mentor> getMentorById(String id);
}
