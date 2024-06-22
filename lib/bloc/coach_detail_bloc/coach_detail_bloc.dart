import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_app/bloc/coach_detail_bloc/coach_detail_event.dart';
import 'package:sport_app/bloc/coach_detail_bloc/coach_detail_state.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/repository/coach_detail_repository.dart';

class CoachDetailBloc extends Bloc<CoachDetailEvent, CoachDetailState> {
  CoachDetailBloc() : super(const CoachDetailState()) {
    on<FetchCoachDetail>(
      (event, emit) => _getCoachDetail(event, emit),
    );
  }
  final CoachDetailRepository coachDetailRepository = CoachDetailRepository();
  Future<void> _getCoachDetail(
    FetchCoachDetail event,
    Emitter<CoachDetailState> emit,
  ) async {
    emit(state.copyWith(
      status: Status.inProgress,
    ));
    try {
    final apiResult = await coachDetailRepository.getCoachDetail(event.id);

    apiResult.when(
      success: (data) {
        emit(state.copyWith(
          status: Status.loaded,
          coachDetail: data,
        ));
      },
      failure: (error) {
        emit(state.copyWith(status: Status.failed, message: error));
      },
    );
    } catch (e) {
      emit(state.copyWith(status: Status.failed, message: e.toString()));
    }
  }
}
