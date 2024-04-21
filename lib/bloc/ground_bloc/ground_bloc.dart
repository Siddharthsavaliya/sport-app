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
  }
  final GroundRepository groundRepository = GroundRepository();
  Future<void> _getRequest(
    GetGroundRequest event,
    Emitter<GroundState> emit,
  ) async {
    emit(state.copyWith(
      status: Status.inProgress,
    ));
    try {
      final apiResult = await groundRepository.getGrounds();
      apiResult.when(
        success: (data) {
          emit(state.copyWith(
            
            status: Status.loaded,
            grounds: data,
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
