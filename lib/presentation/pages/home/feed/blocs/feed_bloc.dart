import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../domain/usecases/get_posts.dart';
import 'feed_event.dart';
import 'feed_state.dart';

class FeedBloc extends Bloc<FeedEvent, FeedState> {
  final GetPosts getPosts;

  FeedBloc({required this.getPosts}) : super(const FeedInitial()) {
    on<LoadPostsEvent>(_onLoadPosts);
  }

  Future<void> _onLoadPosts(
    LoadPostsEvent event,
    Emitter<FeedState> emit,
  ) async {
    emit(const FeedLoading());

    try {
      final posts = await getPosts();
      emit(FeedLoaded(posts: posts));
    } catch (e) {
      emit(FeedError(message: 'Не удалось загрузить посты: $e'));
    }
  }
}
