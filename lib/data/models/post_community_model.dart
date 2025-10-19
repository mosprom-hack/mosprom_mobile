import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/post_community.dart';

part 'post_community_model.freezed.dart';
part 'post_community_model.g.dart';

@freezed
class PostCommunityModel with _$PostCommunityModel {
  const PostCommunityModel._();

  const factory PostCommunityModel({
    required String id,
    required String title,
    @JsonKey(name: 'photo_url') String? photoUrl,
  }) = _PostCommunityModel;

  factory PostCommunityModel.fromJson(Map<String, dynamic> json) =>
      _$PostCommunityModelFromJson(json);

  PostCommunity toEntity() {
    return PostCommunity(
      id: id,
      title: title,
      photoUrl: photoUrl,
    );
  }

  factory PostCommunityModel.fromEntity(PostCommunity entity) {
    return PostCommunityModel(
      id: entity.id,
      title: entity.title,
      photoUrl: entity.photoUrl,
    );
  }
}
