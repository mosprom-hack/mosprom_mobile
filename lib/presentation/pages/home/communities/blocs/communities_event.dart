import 'package:equatable/equatable.dart';

abstract class CommunitiesEvent extends Equatable {
  const CommunitiesEvent();

  @override
  List<Object?> get props => [];
}

class LoadCommunitiesEvent extends CommunitiesEvent {
  const LoadCommunitiesEvent();
}

class SearchCommunitiesEvent extends CommunitiesEvent {
  final String query;

  const SearchCommunitiesEvent(this.query);

  @override
  List<Object?> get props => [query];
}
