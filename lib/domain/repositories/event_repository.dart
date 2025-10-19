import '../entities/event.dart';

abstract class EventRepository {
  Future<List<Event>> getEvents();
  Future<List<Event>> getEventsByType(String type);
}
