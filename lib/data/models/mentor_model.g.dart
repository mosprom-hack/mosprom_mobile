// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mentor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MentorModelImpl _$$MentorModelImplFromJson(Map<String, dynamic> json) =>
    _$MentorModelImpl(
      id: json['id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      avatarUrl: json['avatarUrl'] as String?,
      specialization: json['specialization'] as String?,
      bio: json['bio'] as String?,
      aboutMe: json['aboutMe'] as String?,
      helpWith: json['helpWith'] as String?,
      experience: json['experience'] as String?,
    );

Map<String, dynamic> _$$MentorModelImplToJson(_$MentorModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'avatarUrl': instance.avatarUrl,
      'specialization': instance.specialization,
      'bio': instance.bio,
      'aboutMe': instance.aboutMe,
      'helpWith': instance.helpWith,
      'experience': instance.experience,
    };
