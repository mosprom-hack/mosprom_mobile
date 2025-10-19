import '../../../../../domain/entities/post.dart';

abstract class FeedState {
  const FeedState();
}

class FeedInitial extends FeedState {
  const FeedInitial();
}

class FeedLoading extends FeedState {
  const FeedLoading();
}

class FeedLoaded extends FeedState {
  final List<Post> posts;

  const FeedLoaded({required this.posts});
}

class FeedError extends FeedState {
  final String message;

  const FeedError({required this.message});
}
