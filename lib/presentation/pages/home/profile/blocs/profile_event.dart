import 'package:equatable/equatable.dart';

abstract class ProfileEvent extends Equatable {
  const ProfileEvent();

  @override
  List<Object?> get props => [];
}

class LoadUserEvent extends ProfileEvent {
  const LoadUserEvent();
}

class UpdateUserEvent extends ProfileEvent {
  final String firstName;
  final String lastName;
  final String telegram;

  const UpdateUserEvent({
    required this.firstName,
    required this.lastName,
    required this.telegram,
  });

  @override
  List<Object?> get props => [firstName, lastName, telegram];
}

class EnableEditModeEvent extends ProfileEvent {
  const EnableEditModeEvent();
}

class DisableEditModeEvent extends ProfileEvent {
  const DisableEditModeEvent();
}
