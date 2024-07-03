import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_app/model/ground_model/ground_model.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/repository/ground_repository.dart';
part 'ground_state.dart';
part 'ground_event.dart';

class GroundBloc extends Bloc<GroundEvent, GroundState> {
  GroundBloc() : super(const GroundState()) {
    on<GetGroundRequest>(
      (event, emit) => _getRequest(event, emit),
    );
    on<GetAllGroundRequest>(
      (event, emit) => _getAllRequest(event, emit),
    );
  }
  final GroundRepository groundRepository = GroundRepository();
  Future<void> _getRequest(
    GetGroundRequest event,
    Emitter<GroundState> emit,
  ) async {
    emit(state.copyWith(
      status: Status.inProgress,
    ));
    // try {
    final apiResult = await groundRepository.getGrounds(event.sport);
    apiResult.when(
      success: (data) {
        emit(state.copyWith(
          status: Status.loaded,
          groundsData: data,
          // grounds: data,
        ));
      },
      failure: (error) {
        emit(state.copyWith(status: Status.failed, message: error));
      },
    );
    // } catch (e) {
    //   emit(state.copyWith(status: Status.failed, message: e.toString()));
    // }
  }

  Future<void> _getAllRequest(
    GetAllGroundRequest event,
    Emitter<GroundState> emit,
  ) async {
    emit(state.copyWith(
      status: Status.inProgress,
    ));
    try {
      final apiResult = await groundRepository.getGrounds(null);
      apiResult.when(
        success: (data) {
          print(data.length);
          emit(state.copyWith(
            status: Status.loaded,
            allGroundsData: data,
            // grounds: data,
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
