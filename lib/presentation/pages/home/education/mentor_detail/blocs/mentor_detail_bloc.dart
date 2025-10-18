import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../domain/usecases/get_mentor_by_id.dart';
import 'mentor_detail_event.dart';
import 'mentor_detail_state.dart';

class MentorDetailBloc extends Bloc<MentorDetailEvent, MentorDetailState> {
  final GetMentorById getMentorById;

  MentorDetailBloc({required this.getMentorById})
      : super(const MentorDetailInitial()) {
    on<LoadMentorDetailEvent>(_onLoadMentorDetail);
    on<ChangeTabEvent>(_onChangeTab);
  }

  Future<void> _onLoadMentorDetail(
    LoadMentorDetailEvent event,
    Emitter<MentorDetailState> emit,
  ) async {
    emit(MentorDetailLoading(currentTabIndex: state.currentTabIndex));

    try {
      final mentor = await getMentorById(event.mentorId);
      emit(MentorDetailLoaded(
        mentor: mentor,
        currentTabIndex: state.currentTabIndex,
      ));
    } catch (e) {
      emit(MentorDetailError(
        message: 'Не удалось загрузить информацию о менторе',
        currentTabIndex: state.currentTabIndex,
      ));
    }
  }

  void _onChangeTab(
    ChangeTabEvent event,
    Emitter<MentorDetailState> emit,
  ) {
    if (state is MentorDetailLoaded) {
      final currentState = state as MentorDetailLoaded;
      emit(MentorDetailLoaded(
        mentor: currentState.mentor,
        currentTabIndex: event.tabIndex,
      ));
    }
  }
}
