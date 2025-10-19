import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class Event with _$Event {
  const Event._();

  const factory Event({
    required String id,
    required String title,
    required String description,
    required String topic,
    required String type,
    String? location,
    String? imageUrl,
    required String communityId,
    required DateTime release,
    required DateTime createdAt,
  }) = _Event;

  bool get isOnline => type == 'Онлайн';
  bool get isOffline => type == 'Оффлайн';
}
