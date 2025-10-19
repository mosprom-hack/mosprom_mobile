import 'package:freezed_annotation/freezed_annotation.dart';
import 'post_model.dart';

part 'post_list_response.freezed.dart';
part 'post_list_response.g.dart';

@freezed
class PostListResponse with _$PostListResponse {
  const factory PostListResponse({
    required bool success,
    required int count,
    required List<PostModel> data,
  }) = _PostListResponse;

  factory PostListResponse.fromJson(Map<String, dynamic> json) =>
      _$PostListResponseFromJson(json);
}
