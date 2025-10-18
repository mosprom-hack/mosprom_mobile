// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mentor_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MentorDetailModelImpl _$$MentorDetailModelImplFromJson(
  Map<String, dynamic> json,
) => _$MentorDetailModelImpl(
  id: json['id'] as String,
  userId: json['user_id'] as String?,
  firstName: json['first_name'] as String,
  lastName: json['last_name'] as String,
  photoUrl: json['photo_url'] as String?,
  position: json['position'] as String?,
  description: json['description'] as String?,
  help: json['help'] as String?,
  experience: json['experience'] as String?,
  createdAt: json['created_at'] as String?,
);

Map<String, dynamic> _$$MentorDetailModelImplToJson(
  _$MentorDetailModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'user_id': instance.userId,
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'photo_url': instance.photoUrl,
  'position': instance.position,
  'description': instance.description,
  'help': instance.help,
  'experience': instance.experience,
  'created_at': instance.createdAt,
};
