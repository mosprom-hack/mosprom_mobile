import '../entities/event.dart';
import '../repositories/event_repository.dart';

class GetEventsByType {
  final EventRepository repository;

  GetEventsByType(this.repository);

  Future<List<Event>> call(String type) async {
    return await repository.getEventsByType(type);
  }
}
