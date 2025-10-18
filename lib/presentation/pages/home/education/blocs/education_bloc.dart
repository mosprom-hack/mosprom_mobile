import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../domain/usecases/get_mentors.dart';
import 'education_event.dart';
import 'education_state.dart';

class EducationBloc extends Bloc<EducationEvent, EducationState> {
  final GetMentors getMentors;

  EducationBloc({required this.getMentors}) : super(const EducationInitial()) {
    on<LoadMentorsEvent>(_onLoadMentors);
    on<ChangeTabEvent>(_onChangeTab);
  }

  Future<void> _onLoadMentors(
    LoadMentorsEvent event,
    Emitter<EducationState> emit,
  ) async {
    emit(EducationLoading(currentTabIndex: state.currentTabIndex));

    try {
      final mentors = await getMentors();
      emit(EducationLoaded(
        mentors: mentors,
        currentTabIndex: state.currentTabIndex,
      ));
    } catch (e) {
      emit(EducationError(
        message: 'Не удалось загрузить менторов',
        currentTabIndex: state.currentTabIndex,
      ));
    }
  }

  void _onChangeTab(
    ChangeTabEvent event,
    Emitter<EducationState> emit,
  ) {
    if (state is EducationLoaded) {
      final currentState = state as EducationLoaded;
      emit(EducationLoaded(
        mentors: currentState.mentors,
        currentTabIndex: event.tabIndex,
      ));
    } else {
      emit(EducationInitial(currentTabIndex: event.tabIndex));
    }
  }
}
