import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/event.dart';

part 'event_model.freezed.dart';
part 'event_model.g.dart';

@freezed
class EventModel with _$EventModel {
  const EventModel._();

  const factory EventModel({
    required String id,
    required String title,
    required String description,
    required String topic,
    required String type,
    String? location,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'community_id') required String communityId,
    required String release,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _EventModel;

  factory EventModel.fromJson(Map<String, dynamic> json) =>
      _$EventModelFromJson(json);

  Event toEntity() {
    return Event(
      id: id,
      title: title,
      description: description,
      topic: topic,
      type: type,
      location: location,
      imageUrl: imageUrl,
      communityId: communityId,
      release: DateTime.parse(release),
      createdAt: DateTime.parse(createdAt),
    );
  }

  factory EventModel.fromEntity(Event entity) {
    return EventModel(
      id: entity.id,
      title: entity.title,
      description: entity.description,
      topic: entity.topic,
      type: entity.type,
      location: entity.location,
      imageUrl: entity.imageUrl,
      communityId: entity.communityId,
      release: entity.release.toIso8601String(),
      createdAt: entity.createdAt.toIso8601String(),
    );
  }
}
