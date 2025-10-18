import 'package:equatable/equatable.dart';

abstract class EducationEvent extends Equatable {
  const EducationEvent();

  @override
  List<Object?> get props => [];
}

class LoadMentorsEvent extends EducationEvent {
  const LoadMentorsEvent();
}

class ChangeTabEvent extends EducationEvent {
  final int tabIndex;

  const ChangeTabEvent(this.tabIndex);

  @override
  List<Object?> get props => [tabIndex];
}
