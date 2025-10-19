import 'package:dio/dio.dart';
import '../models/event_model.dart';
import '../models/event_list_response.dart';

abstract class EventRemoteDataSource {
  Future<List<EventModel>> getEvents();
  Future<List<EventModel>> getEventsByType(String type);
}

class EventRemoteDataSourceImpl implements EventRemoteDataSource {
  final Dio dio;

  EventRemoteDataSourceImpl({required this.dio});

  @override
  Future<List<EventModel>> getEvents() async {
    try {
      final response = await dio.get('/api/events');
      final eventListResponse = EventListResponse.fromJson(response.data);
      return eventListResponse.data;
    } catch (e) {
      throw Exception('Не удалось загрузить события: $e');
    }
  }

  @override
  Future<List<EventModel>> getEventsByType(String type) async {
    try {
      final response = await dio.get('/api/events', queryParameters: {
        'type': type,
      });
      final eventListResponse = EventListResponse.fromJson(response.data);
      return eventListResponse.data;
    } catch (e) {
      throw Exception('Не удалось загрузить события типа $type: $e');
    }
  }
}
