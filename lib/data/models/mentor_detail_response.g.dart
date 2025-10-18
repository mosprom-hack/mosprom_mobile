// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mentor_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MentorDetailResponseImpl _$$MentorDetailResponseImplFromJson(
  Map<String, dynamic> json,
) => _$MentorDetailResponseImpl(
  success: json['success'] as bool,
  data: MentorDetailModel.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$MentorDetailResponseImplToJson(
  _$MentorDetailResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
