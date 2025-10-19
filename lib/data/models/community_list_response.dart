import 'package:freezed_annotation/freezed_annotation.dart';
import 'community_model.dart';

part 'community_list_response.freezed.dart';
part 'community_list_response.g.dart';

@freezed
class CommunityListResponse with _$CommunityListResponse {
  const factory CommunityListResponse({
    required bool success,
    required int count,
    required List<CommunityModel> data,
  }) = _CommunityListResponse;

  factory CommunityListResponse.fromJson(Map<String, dynamic> json) =>
      _$CommunityListResponseFromJson(json);
}
