// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostModelImpl _$$PostModelImplFromJson(Map<String, dynamic> json) =>
    _$PostModelImpl(
      id: json['id'] as String,
      description: json['description'] as String,
      createdAt: json['created_at'] as String,
      community: PostCommunityModel.fromJson(
        json['community'] as Map<String, dynamic>,
      ),
      images: (json['images'] as List<dynamic>)
          .map((e) => PostImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      likes: (json['likes'] as List<dynamic>)
          .map((e) => PostLikeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PostModelImplToJson(_$PostModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'created_at': instance.createdAt,
      'community': instance.community,
      'images': instance.images,
      'likes': instance.likes,
    };
