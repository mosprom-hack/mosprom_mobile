// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mentor_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MentorListResponseImpl _$$MentorListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$MentorListResponseImpl(
  success: json['success'] as bool,
  count: (json['count'] as num).toInt(),
  data: (json['data'] as List<dynamic>)
      .map((e) => MentorPreviewModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$MentorListResponseImplToJson(
  _$MentorListResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'count': instance.count,
  'data': instance.data,
};
