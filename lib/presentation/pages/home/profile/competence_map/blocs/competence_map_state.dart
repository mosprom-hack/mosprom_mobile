import 'package:equatable/equatable.dart';
import '../../../../../../domain/entities/event.dart';

abstract class CompetenceMapState extends Equatable {
  const CompetenceMapState();

  @override
  List<Object?> get props => [];
}

class CompetenceMapInitial extends CompetenceMapState {
  const CompetenceMapInitial();
}

class CompetenceMapLoading extends CompetenceMapState {
  const CompetenceMapLoading();
}

class CompetenceMapLoaded extends CompetenceMapState {
  final List<Event> allEvents;
  final List<Event> filteredEvents;
  final String searchQuery;
  final String currentType;

  const CompetenceMapLoaded({
    required this.allEvents,
    required this.filteredEvents,
    required this.searchQuery,
    required this.currentType,
  });

  @override
  List<Object?> get props => [allEvents, filteredEvents, searchQuery, currentType];

  CompetenceMapLoaded copyWith({
    List<Event>? allEvents,
    List<Event>? filteredEvents,
    String? searchQuery,
    String? currentType,
  }) {
    return CompetenceMapLoaded(
      allEvents: allEvents ?? this.allEvents,
      filteredEvents: filteredEvents ?? this.filteredEvents,
      searchQuery: searchQuery ?? this.searchQuery,
      currentType: currentType ?? this.currentType,
    );
  }
}

class CompetenceMapError extends CompetenceMapState {
  final String message;

  const CompetenceMapError({required this.message});

  @override
  List<Object?> get props => [message];
}
