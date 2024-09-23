import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/model/tournament_model/tournament_model.dart';
import 'package:sport_app/repository/tournament_repo.dart';
part 'tournament_state.dart';
part 'tournament_event.dart';

class TournamentBloc extends Bloc<TournamentEvent, TournamentState> {
  TournamentBloc() : super(const TournamentState()) {
    on<GetTournamentRequest>(
      (event, emit) => _getRequest(event, emit),
    );
  }
  final TournamentRepository tournamentRepository = TournamentRepository();
  Future<void> _getRequest(
    GetTournamentRequest event,
    Emitter<TournamentState> emit,
  ) async {
    emit(state.copyWith(
      status: Status.inProgress,
    ));
    try {
      final apiResult = await tournamentRepository.getTournament(event.type);
      apiResult.when(
        success: (data) {
          emit(state.copyWith(
            status: Status.loaded,
            tournamentList: data,
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
