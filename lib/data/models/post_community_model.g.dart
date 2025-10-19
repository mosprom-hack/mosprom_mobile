// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_community_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostCommunityModelImpl _$$PostCommunityModelImplFromJson(
  Map<String, dynamic> json,
) => _$PostCommunityModelImpl(
  id: json['id'] as String,
  title: json['title'] as String,
  photoUrl: json['photo_url'] as String?,
);

Map<String, dynamic> _$$PostCommunityModelImplToJson(
  _$PostCommunityModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'photo_url': instance.photoUrl,
};
