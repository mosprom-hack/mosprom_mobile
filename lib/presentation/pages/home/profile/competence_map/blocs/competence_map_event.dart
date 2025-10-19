import 'package:equatable/equatable.dart';

abstract class CompetenceMapEvent extends Equatable {
  const CompetenceMapEvent();

  @override
  List<Object?> get props => [];
}

class LoadEventsEvent extends CompetenceMapEvent {
  final String type;

  const LoadEventsEvent({required this.type});

  @override
  List<Object?> get props => [type];
}

class ChangeEventTypeEvent extends CompetenceMapEvent {
  final String type;

  const ChangeEventTypeEvent({required this.type});

  @override
  List<Object?> get props => [type];
}

class SearchEventsEvent extends CompetenceMapEvent {
  final String query;

  const SearchEventsEvent({required this.query});

  @override
  List<Object?> get props => [query];
}
