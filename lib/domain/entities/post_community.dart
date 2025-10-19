import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_community.freezed.dart';

@freezed
class PostCommunity with _$PostCommunity {
  const PostCommunity._();

  const factory PostCommunity({
    required String id,
    required String title,
    String? photoUrl,
  }) = _PostCommunity;
}
