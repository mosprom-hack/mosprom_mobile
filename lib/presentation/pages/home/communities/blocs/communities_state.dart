import 'package:equatable/equatable.dart';
import '../../../../../domain/entities/community.dart';

abstract class CommunitiesState extends Equatable {
  const CommunitiesState();

  @override
  List<Object?> get props => [];
}

class CommunitiesInitial extends CommunitiesState {
  const CommunitiesInitial();
}

class CommunitiesLoading extends CommunitiesState {
  const CommunitiesLoading();
}

class CommunitiesLoaded extends CommunitiesState {
  final List<Community> communities;
  final List<Community> filteredCommunities;
  final String searchQuery;

  const CommunitiesLoaded({
    required this.communities,
    required this.filteredCommunities,
    this.searchQuery = '',
  });

  @override
  List<Object?> get props => [communities, filteredCommunities, searchQuery];
}

class CommunitiesError extends CommunitiesState {
  final String message;

  const CommunitiesError({required this.message});

  @override
  List<Object?> get props => [message];
}
