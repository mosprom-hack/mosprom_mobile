import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_like.freezed.dart';

@freezed
class PostLike with _$PostLike {
  const PostLike._();

  const factory PostLike({
    required String id,
    required String userId,
    required DateTime createdAt,
  }) = _PostLike;
}
