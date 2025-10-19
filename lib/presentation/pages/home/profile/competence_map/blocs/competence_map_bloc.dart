import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../domain/usecases/get_events.dart';
import '../../../../../../domain/usecases/get_events_by_type.dart';
import 'competence_map_event.dart';
import 'competence_map_state.dart';

class CompetenceMapBloc extends Bloc<CompetenceMapEvent, CompetenceMapState> {
  final GetEvents getEvents;
  final GetEventsByType getEventsByType;

  CompetenceMapBloc({
    required this.getEvents,
    required this.getEventsByType,
  }) : super(const CompetenceMapInitial()) {
    on<LoadEventsEvent>(_onLoadEvents);
    on<ChangeEventTypeEvent>(_onChangeEventType);
    on<SearchEventsEvent>(_onSearchEvents);
  }

  Future<void> _onLoadEvents(
    LoadEventsEvent event,
    Emitter<CompetenceMapState> emit,
  ) async {
    emit(const CompetenceMapLoading());

    try {
      final events = await getEventsByType(event.type);
      emit(CompetenceMapLoaded(
        allEvents: events,
        filteredEvents: events,
        searchQuery: '',
        currentType: event.type,
      ));
    } catch (e) {
      emit(const CompetenceMapError(
        message: 'Не удалось загрузить мероприятия',
      ));
    }
  }

  Future<void> _onChangeEventType(
    ChangeEventTypeEvent event,
    Emitter<CompetenceMapState> emit,
  ) async {
    emit(const CompetenceMapLoading());

    try {
      final events = await getEventsByType(event.type);
      emit(CompetenceMapLoaded(
        allEvents: events,
        filteredEvents: events,
        searchQuery: '',
        currentType: event.type,
      ));
    } catch (e) {
      emit(const CompetenceMapError(
        message: 'Не удалось загрузить мероприятия',
      ));
    }
  }

  void _onSearchEvents(
    SearchEventsEvent event,
    Emitter<CompetenceMapState> emit,
  ) {
    if (state is CompetenceMapLoaded) {
      final currentState = state as CompetenceMapLoaded;
      final query = event.query.toLowerCase();

      if (query.isEmpty) {
        emit(currentState.copyWith(
          filteredEvents: currentState.allEvents,
          searchQuery: '',
        ));
      } else {
        final filtered = currentState.allEvents.where((ev) {
          return ev.title.toLowerCase().contains(query) ||
              ev.topic.toLowerCase().contains(query);
        }).toList();

        emit(currentState.copyWith(
          filteredEvents: filtered,
          searchQuery: query,
        ));
      }
    }
  }
}
