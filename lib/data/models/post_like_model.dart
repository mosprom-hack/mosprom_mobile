import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/post_like.dart';

part 'post_like_model.freezed.dart';
part 'post_like_model.g.dart';

@freezed
class PostLikeModel with _$PostLikeModel {
  const PostLikeModel._();

  const factory PostLikeModel({
    required String id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _PostLikeModel;

  factory PostLikeModel.fromJson(Map<String, dynamic> json) =>
      _$PostLikeModelFromJson(json);

  PostLike toEntity() {
    return PostLike(
      id: id,
      userId: userId,
      createdAt: DateTime.parse(createdAt),
    );
  }

  factory PostLikeModel.fromEntity(PostLike entity) {
    return PostLikeModel(
      id: entity.id,
      userId: entity.userId,
      createdAt: entity.createdAt.toIso8601String(),
    );
  }
}
