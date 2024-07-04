import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_app/bloc/coach_bloc/coach_event.dart';
import 'package:sport_app/bloc/coach_bloc/coach_state.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/repository/coach_repository.dart';

class CoachBloc extends Bloc<CoachEvent, CoachState> {
  CoachBloc() : super(const CoachState()) {
    on<GetCoachRequest>(
      (event, emit) => _getRequest(event, emit),
    );
    on<BuyCoachRequest>(
      (event, emit) => _buyRequest(event, emit),
    );
  }
  final CoachRepository coachRepository = CoachRepository();
  Future<void> _getRequest(
    GetCoachRequest event,
    Emitter<CoachState> emit,
  ) async {
    emit(state.copyWith(status: Status.inProgress, isBooking: false));
    try {
      final apiResult =
          await coachRepository.getCoachs(event.sport, event.city);
      apiResult.when(
        success: (data) {
          emit(state.copyWith(
            status: Status.loaded,
            coachsData: data,
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

  Future<void> _buyRequest(
    BuyCoachRequest event,
    Emitter<CoachState> emit,
  ) async {
    emit(state.copyWith(status: Status.inProgress, isBooking: true));
    try {
      final apiResult =
          await coachRepository.buyCoach(event.coachId, event.schoolId);
      apiResult.when(
        success: (data) {
          emit(state.copyWith(status: Status.loaded, coachBookingModel: data));
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
