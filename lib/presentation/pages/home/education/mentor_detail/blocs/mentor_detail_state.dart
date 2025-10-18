import 'package:equatable/equatable.dart';
import '../../../../../../domain/entities/mentor.dart';

sealed class MentorDetailState extends Equatable {
  final int currentTabIndex;

  const MentorDetailState({this.currentTabIndex = 0});

  @override
  List<Object?> get props => [currentTabIndex];
}

final class MentorDetailInitial extends MentorDetailState {
  const MentorDetailInitial({super.currentTabIndex});
}

final class MentorDetailLoading extends MentorDetailState {
  const MentorDetailLoading({super.currentTabIndex});
}

final class MentorDetailLoaded extends MentorDetailState {
  final Mentor mentor;

  const MentorDetailLoaded({
    required this.mentor,
    super.currentTabIndex,
  });

  @override
  List<Object?> get props => [mentor, currentTabIndex];
}

final class MentorDetailError extends MentorDetailState {
  final String message;

  const MentorDetailError({
    required this.message,
    super.currentTabIndex,
  });

  @override
  List<Object?> get props => [message, currentTabIndex];
}
