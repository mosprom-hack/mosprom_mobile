import 'package:equatable/equatable.dart';
import '../../../../../domain/entities/user.dart';

abstract class ProfileState extends Equatable {
  final bool isEditMode;

  const ProfileState({this.isEditMode = false});

  @override
  List<Object?> get props => [isEditMode];
}

class ProfileInitial extends ProfileState {
  const ProfileInitial({super.isEditMode});
}

class ProfileLoading extends ProfileState {
  const ProfileLoading({super.isEditMode});
}

class ProfileLoaded extends ProfileState {
  final User user;

  const ProfileLoaded({
    required this.user,
    super.isEditMode,
  });

  @override
  List<Object?> get props => [user, isEditMode];
}

class ProfileSaving extends ProfileState {
  final User user;

  const ProfileSaving({
    required this.user,
    super.isEditMode,
  });

  @override
  List<Object?> get props => [user, isEditMode];
}

class ProfileError extends ProfileState {
  final String message;

  const ProfileError({
    required this.message,
    super.isEditMode,
  });

  @override
  List<Object?> get props => [message, isEditMode];
}
