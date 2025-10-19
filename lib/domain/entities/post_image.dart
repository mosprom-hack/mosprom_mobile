import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_image.freezed.dart';

@freezed
class PostImage with _$PostImage {
  const PostImage._();

  const factory PostImage({
    required String id,
    required String imageUrl,
  }) = _PostImage;
}
