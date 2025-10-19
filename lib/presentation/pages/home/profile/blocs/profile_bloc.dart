import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../domain/usecases/get_current_user.dart';
import '../../../../../domain/usecases/update_user.dart';
import '../../../../../data/datasources/user_remote_data_source.dart';
import 'profile_event.dart';
import 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetCurrentUser getCurrentUser;
  final UpdateUser updateUser;

  ProfileBloc({
    required this.getCurrentUser,
    required this.updateUser,
  }) : super(const ProfileInitial()) {
    on<LoadUserEvent>(_onLoadUser);
    on<UpdateUserEvent>(_onUpdateUser);
    on<EnableEditModeEvent>(_onEnableEditMode);
    on<DisableEditModeEvent>(_onDisableEditMode);
  }

  Future<void> _onLoadUser(
    LoadUserEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(ProfileLoading(isEditMode: state.isEditMode));

    try {
      final user = await getCurrentUser();
      emit(ProfileLoaded(
        user: user,
        isEditMode: state.isEditMode,
      ));
    } catch (e) {
      emit(ProfileError(
        message: 'Не удалось загрузить профиль',
        isEditMode: state.isEditMode,
      ));
    }
  }

  Future<void> _onUpdateUser(
    UpdateUserEvent event,
    Emitter<ProfileState> emit,
  ) async {
    if (state is ProfileLoaded) {
      final currentState = state as ProfileLoaded;
      emit(ProfileSaving(
        user: currentState.user,
        isEditMode: true,
      ));

      try {
        final updatedUser = await updateUser(
          id: UserRemoteDataSourceImpl.currentUserId,
          firstName: event.firstName,
          lastName: event.lastName,
          nickname: event.nickname,
        );
        emit(ProfileLoaded(
          user: updatedUser,
          isEditMode: false,
        ));
      } catch (e) {
        emit(ProfileError(
          message: 'Не удалось сохранить изменения',
          isEditMode: true,
        ));
      }
    }
  }

  void _onEnableEditMode(
    EnableEditModeEvent event,
    Emitter<ProfileState> emit,
  ) {
    if (state is ProfileLoaded) {
      final currentState = state as ProfileLoaded;
      emit(ProfileLoaded(
        user: currentState.user,
        isEditMode: true,
      ));
    }
  }

  void _onDisableEditMode(
    DisableEditModeEvent event,
    Emitter<ProfileState> emit,
  ) {
    if (state is ProfileLoaded) {
      final currentState = state as ProfileLoaded;
      emit(ProfileLoaded(
        user: currentState.user,
        isEditMode: false,
      ));
    }
  }
}
