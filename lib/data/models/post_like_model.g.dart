// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_like_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostLikeModelImpl _$$PostLikeModelImplFromJson(Map<String, dynamic> json) =>
    _$PostLikeModelImpl(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$$PostLikeModelImplToJson(_$PostLikeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'created_at': instance.createdAt,
    };
