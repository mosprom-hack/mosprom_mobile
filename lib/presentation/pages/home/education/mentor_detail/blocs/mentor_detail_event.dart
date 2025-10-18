import 'package:equatable/equatable.dart';

sealed class MentorDetailEvent extends Equatable {
  const MentorDetailEvent();

  @override
  List<Object?> get props => [];
}

final class LoadMentorDetailEvent extends MentorDetailEvent {
  final String mentorId;

  const LoadMentorDetailEvent(this.mentorId);

  @override
  List<Object?> get props => [mentorId];
}

final class ChangeTabEvent extends MentorDetailEvent {
  final int tabIndex;

  const ChangeTabEvent(this.tabIndex);

  @override
  List<Object?> get props => [tabIndex];
}
