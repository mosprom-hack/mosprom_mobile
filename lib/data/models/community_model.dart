import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/community.dart';

part 'community_model.freezed.dart';
part 'community_model.g.dart';

@freezed
class CommunityModel with _$CommunityModel {
  const CommunityModel._();

  const factory CommunityModel({
    required String id,
    required String title,
    required String description,
    required String type,
    @JsonKey(name: 'photo_url') String? photoUrl,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _CommunityModel;

  factory CommunityModel.fromJson(Map<String, dynamic> json) =>
      _$CommunityModelFromJson(json);

  Community toEntity() {
    return Community(
      id: id,
      title: title,
      description: description,
      type: type,
      photoUrl: photoUrl,
      createdAt: createdAt,
    );
  }

  factory CommunityModel.fromEntity(Community entity) {
    return CommunityModel(
      id: entity.id,
      title: entity.title,
      description: entity.description,
      type: entity.type,
      photoUrl: entity.photoUrl,
      createdAt: entity.createdAt,
    );
  }
}
