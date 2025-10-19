import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/post.dart';
import 'post_community_model.dart';
import 'post_image_model.dart';
import 'post_like_model.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

@freezed
class PostModel with _$PostModel {
  const PostModel._();

  const factory PostModel({
    required String id,
    required String description,
    @JsonKey(name: 'created_at') required String createdAt,
    required PostCommunityModel community,
    required List<PostImageModel> images,
    required List<PostLikeModel> likes,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);

  Post toEntity() {
    return Post(
      id: id,
      description: description,
      createdAt: DateTime.parse(createdAt),
      community: community.toEntity(),
      images: images.map((img) => img.toEntity()).toList(),
      likes: likes.map((like) => like.toEntity()).toList(),
    );
  }

  factory PostModel.fromEntity(Post entity) {
    return PostModel(
      id: entity.id,
      description: entity.description,
      createdAt: entity.createdAt.toIso8601String(),
      community: PostCommunityModel.fromEntity(entity.community),
      images: entity.images.map((img) => PostImageModel.fromEntity(img)).toList(),
      likes: entity.likes.map((like) => PostLikeModel.fromEntity(like)).toList(),
    );
  }
}
