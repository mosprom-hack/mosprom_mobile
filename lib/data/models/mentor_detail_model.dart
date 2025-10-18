import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/mentor.dart';

part 'mentor_detail_model.freezed.dart';
part 'mentor_detail_model.g.dart';

@freezed
class MentorDetailModel with _$MentorDetailModel {
  const MentorDetailModel._();

  const factory MentorDetailModel({
    required String id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'photo_url') String? photoUrl,
    String? position,
    String? description,
    String? help,
    String? experience,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _MentorDetailModel;

  factory MentorDetailModel.fromJson(Map<String, dynamic> json) =>
      _$MentorDetailModelFromJson(json);

  Mentor toEntity() {
    return Mentor(
      id: id,
      firstName: firstName,
      lastName: lastName,
      avatarUrl: photoUrl,
      specialization: position,
      aboutMe: description,
      helpWith: help,
      experience: experience,
    );
  }

  factory MentorDetailModel.fromEntity(Mentor entity) {
    return MentorDetailModel(
      id: entity.id,
      firstName: entity.firstName,
      lastName: entity.lastName,
      photoUrl: entity.avatarUrl,
      position: entity.specialization,
      description: entity.aboutMe,
      help: entity.helpWith,
      experience: entity.experience,
    );
  }
}
