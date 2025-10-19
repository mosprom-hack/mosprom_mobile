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
  final String nickname;

  const UpdateUserEvent({
    required this.firstName,
    required this.lastName,
    required this.nickname,
  });

  @override
  List<Object?> get props => [firstName, lastName, nickname];
}

class EnableEditModeEvent extends ProfileEvent {
  const EnableEditModeEvent();
}

class DisableEditModeEvent extends ProfileEvent {
  const DisableEditModeEvent();
}
