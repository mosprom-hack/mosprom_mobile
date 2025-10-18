import 'package:freezed_annotation/freezed_annotation.dart';
import 'mentor_preview_model.dart';

part 'mentor_list_response.freezed.dart';
part 'mentor_list_response.g.dart';

@freezed
class MentorListResponse with _$MentorListResponse {
  const factory MentorListResponse({
    required bool success,
    required int count,
    required List<MentorPreviewModel> data,
  }) = _MentorListResponse;

  factory MentorListResponse.fromJson(Map<String, dynamic> json) =>
      _$MentorListResponseFromJson(json);
}
