import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../domain/usecases/get_communities.dart';
import 'communities_event.dart';
import 'communities_state.dart';

class CommunitiesBloc extends Bloc<CommunitiesEvent, CommunitiesState> {
  final GetCommunities getCommunities;

  CommunitiesBloc({required this.getCommunities})
      : super(const CommunitiesInitial()) {
    on<LoadCommunitiesEvent>(_onLoadCommunities);
    on<SearchCommunitiesEvent>(_onSearchCommunities);
  }

  Future<void> _onLoadCommunities(
    LoadCommunitiesEvent event,
    Emitter<CommunitiesState> emit,
  ) async {
    emit(const CommunitiesLoading());

    try {
      final communities = await getCommunities();
      emit(CommunitiesLoaded(
        communities: communities,
        filteredCommunities: communities,
      ));
    } catch (e) {
      emit(const CommunitiesError(
        message: 'Не удалось загрузить сообщества',
      ));
    }
  }

  void _onSearchCommunities(
    SearchCommunitiesEvent event,
    Emitter<CommunitiesState> emit,
  ) {
    if (state is CommunitiesLoaded) {
      final currentState = state as CommunitiesLoaded;
      final query = event.query.toLowerCase();

      if (query.isEmpty) {
        emit(CommunitiesLoaded(
          communities: currentState.communities,
          filteredCommunities: currentState.communities,
          searchQuery: '',
        ));
      } else {
        final filtered = currentState.communities
            .where((community) =>
                community.title.toLowerCase().contains(query) ||
                community.description.toLowerCase().contains(query) ||
                community.type.toLowerCase().contains(query))
            .toList();

        emit(CommunitiesLoaded(
          communities: currentState.communities,
          filteredCommunities: filtered,
          searchQuery: query,
        ));
      }
    }
  }
}
