import 'package:freezed_annotation/freezed_annotation.dart';
import 'event_model.dart';

part 'event_list_response.freezed.dart';
part 'event_list_response.g.dart';

@freezed
class EventListResponse with _$EventListResponse {
  const factory EventListResponse({
    required bool success,
    required int count,
    required List<EventModel> data,
  }) = _EventListResponse;

  factory EventListResponse.fromJson(Map<String, dynamic> json) =>
      _$EventListResponseFromJson(json);
}
