// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostListResponseImpl _$$PostListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$PostListResponseImpl(
  success: json['success'] as bool,
  count: (json['count'] as num).toInt(),
  data: (json['data'] as List<dynamic>)
      .map((e) => PostModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$PostListResponseImplToJson(
  _$PostListResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'count': instance.count,
  'data': instance.data,
};
