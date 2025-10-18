import 'package:freezed_annotation/freezed_annotation.dart';
import 'mentor_detail_model.dart';

part 'mentor_detail_response.freezed.dart';
part 'mentor_detail_response.g.dart';

@freezed
class MentorDetailResponse with _$MentorDetailResponse {
  const factory MentorDetailResponse({
    required bool success,
    required MentorDetailModel data,
  }) = _MentorDetailResponse;

  factory MentorDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$MentorDetailResponseFromJson(json);
}
