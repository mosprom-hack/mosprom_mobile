import 'package:equatable/equatable.dart';

class Mentor extends Equatable {
  final String id;
  final String firstName;
  final String lastName;
  final String? avatarUrl;
  final String? specialization;
  final String? bio;
  final String? aboutMe;
  final String? helpWith;
  final String? experience;

  const Mentor({
    required this.id,
    required this.firstName,
    required this.lastName,
    this.avatarUrl,
    this.specialization,
    this.bio,
    this.aboutMe,
    this.helpWith,
    this.experience,
  });

  String get fullName => '$firstName $lastName';

  @override
  List<Object?> get props => [
        id,
        firstName,
        lastName,
        avatarUrl,
        specialization,
        bio,
        aboutMe,
        helpWith,
        experience,
      ];
}
