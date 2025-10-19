// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventListResponseImpl _$$EventListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$EventListResponseImpl(
  success: json['success'] as bool,
  count: (json['count'] as num).toInt(),
  data: (json['data'] as List<dynamic>)
      .map((e) => EventModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$EventListResponseImplToJson(
  _$EventListResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'count': instance.count,
  'data': instance.data,
};
