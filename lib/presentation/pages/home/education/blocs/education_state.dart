import 'package:equatable/equatable.dart';
import '../../../../../domain/entities/mentor.dart';

abstract class EducationState extends Equatable {
  final int currentTabIndex;

  const EducationState({this.currentTabIndex = 0});

  @override
  List<Object?> get props => [currentTabIndex];
}

class EducationInitial extends EducationState {
  const EducationInitial({super.currentTabIndex});
}

class EducationLoading extends EducationState {
  const EducationLoading({super.currentTabIndex});
}

class EducationLoaded extends EducationState {
  final List<Mentor> mentors;

  const EducationLoaded({
    required this.mentors,
    super.currentTabIndex,
  });

  @override
  List<Object?> get props => [mentors, currentTabIndex];
}

class EducationError extends EducationState {
  final String message;

  const EducationError({
    required this.message,
    super.currentTabIndex,
  });

  @override
  List<Object?> get props => [message, currentTabIndex];
}
