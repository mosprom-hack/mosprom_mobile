// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mentor_preview_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MentorPreviewModelImpl _$$MentorPreviewModelImplFromJson(
  Map<String, dynamic> json,
) => _$MentorPreviewModelImpl(
  id: json['id'] as String,
  firstName: json['first_name'] as String,
  lastName: json['last_name'] as String,
  photoUrl: json['photo_url'] as String?,
);

Map<String, dynamic> _$$MentorPreviewModelImplToJson(
  _$MentorPreviewModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'photo_url': instance.photoUrl,
};
