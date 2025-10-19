// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommunityModelImpl _$$CommunityModelImplFromJson(Map<String, dynamic> json) =>
    _$CommunityModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      type: json['type'] as String,
      photoUrl: json['photo_url'] as String?,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$$CommunityModelImplToJson(
  _$CommunityModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'type': instance.type,
  'photo_url': instance.photoUrl,
  'created_at': instance.createdAt,
};
