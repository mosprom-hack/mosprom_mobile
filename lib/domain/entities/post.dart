import 'package:freezed_annotation/freezed_annotation.dart';
import 'post_community.dart';
import 'post_image.dart';
import 'post_like.dart';

part 'post.freezed.dart';

@freezed
class Post with _$Post {
  const Post._();

  const factory Post({
    required String id,
    required String description,
    required DateTime createdAt,
    required PostCommunity community,
    required List<PostImage> images,
    required List<PostLike> likes,
  }) = _Post;

  int get likesCount => likes.length;

  String? get firstImageUrl => images.isNotEmpty ? images.first.imageUrl : null;
}
