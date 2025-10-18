import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/mentor.dart';

part 'mentor_model.freezed.dart';
part 'mentor_model.g.dart';

@freezed
class MentorModel with _$MentorModel {
  const MentorModel._();

  const factory MentorModel({
    required String id,
    required String firstName,
    required String lastName,
    String? avatarUrl,
    String? specialization,
    String? bio,
    String? aboutMe,
    String? helpWith,
    String? experience,
  }) = _MentorModel;

  factory MentorModel.fromJson(Map<String, dynamic> json) =>
      _$MentorModelFromJson(json);

  Mentor toEntity() {
    return Mentor(
      id: id,
      firstName: firstName,
      lastName: lastName,
      avatarUrl: avatarUrl,
      specialization: specialization,
      bio: bio,
      aboutMe: aboutMe,
      helpWith: helpWith,
      experience: experience,
    );
  }

  factory MentorModel.fromEntity(Mentor entity) {
    return MentorModel(
      id: entity.id,
      firstName: entity.firstName,
      lastName: entity.lastName,
      avatarUrl: entity.avatarUrl,
      specialization: entity.specialization,
      bio: entity.bio,
      aboutMe: entity.aboutMe,
      helpWith: entity.helpWith,
      experience: entity.experience,
    );
  }
}
