// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommunityListResponseImpl _$$CommunityListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$CommunityListResponseImpl(
  success: json['success'] as bool,
  count: (json['count'] as num).toInt(),
  data: (json['data'] as List<dynamic>)
      .map((e) => CommunityModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$CommunityListResponseImplToJson(
  _$CommunityListResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'count': instance.count,
  'data': instance.data,
};
