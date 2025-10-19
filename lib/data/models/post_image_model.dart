import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/post_image.dart';

part 'post_image_model.freezed.dart';
part 'post_image_model.g.dart';

@freezed
class PostImageModel with _$PostImageModel {
  const PostImageModel._();

  const factory PostImageModel({
    required String id,
    @JsonKey(name: 'image_url') required String imageUrl,
  }) = _PostImageModel;

  factory PostImageModel.fromJson(Map<String, dynamic> json) =>
      _$PostImageModelFromJson(json);

  PostImage toEntity() {
    return PostImage(
      id: id,
      imageUrl: imageUrl,
    );
  }

  factory PostImageModel.fromEntity(PostImage entity) {
    return PostImageModel(
      id: entity.id,
      imageUrl: entity.imageUrl,
    );
  }
}
