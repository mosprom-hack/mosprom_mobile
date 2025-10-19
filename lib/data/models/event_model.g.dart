// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventModelImpl _$$EventModelImplFromJson(Map<String, dynamic> json) =>
    _$EventModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      topic: json['topic'] as String,
      type: json['type'] as String,
      location: json['location'] as String?,
      imageUrl: json['image_url'] as String?,
      communityId: json['community_id'] as String,
      release: json['release'] as String,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$$EventModelImplToJson(_$EventModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'topic': instance.topic,
      'type': instance.type,
      'location': instance.location,
      'image_url': instance.imageUrl,
      'community_id': instance.communityId,
      'release': instance.release,
      'created_at': instance.createdAt,
    };
