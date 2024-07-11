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
    on<GetCoachSingleHistoryRequest>(
      (event, emit) => _getSingleHistoryRequest(event, emit),
    );
    on<GetCoachHistoryRequest>(
      (event, emit) => _getCoachHistoryRequest(event, emit),
    );
  }
  final CoachRepository coachRepository = CoachRepository();
  Future<void> _getRequest(
    GetCoachRequest event,
    Emitter<CoachState> emit,
  ) async {
    emit(state.copyWith(
        status: Status.inProgress, isBooking: false, isBookingSuccess: false));
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
    emit(state.copyWith(
        status: Status.inProgress, isBooking: true, isBookingSuccess: false));
    try {
      final apiResult =
          await coachRepository.buyCoach(event.coachId, event.schoolId);
      apiResult.when(
        success: (data) {
          emit(state.copyWith(
              status: Status.loaded,
              redirectUrl: data["redirectUrl"],
              id: data["id"]));
        },
        failure: (error) {
          emit(state.copyWith(status: Status.failed, message: error));
        },
      );
    } catch (e) {
      emit(state.copyWith(status: Status.failed, message: e.toString()));
    }
  }

  Future<void> _getSingleHistoryRequest(
    GetCoachSingleHistoryRequest event,
    Emitter<CoachState> emit,
  ) async {
    emit(state.copyWith(
        status: Status.inProgress, isBooking: false, isBookingSuccess: true));
    try {
      final apiResult = await coachRepository.getSingleHistory(event.id);
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

  Future<void> _getCoachHistoryRequest(
    GetCoachHistoryRequest event,
    Emitter<CoachState> emit,
  ) async {
    emit(state.copyWith(
        status: Status.inProgress, isBooking: false, isBookingSuccess: true));
    try {
      final apiResult = await coachRepository.getOneCoachBookings();
      apiResult.when(
        success: (data) {
          emit(state.copyWith(status: Status.loaded, coachHistoryList: data));
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
