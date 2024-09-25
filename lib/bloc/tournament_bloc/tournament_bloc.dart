import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/model/tournament_detail_model/tournament_detail_model.dart';
import 'package:sport_app/model/tournament_model/tournament_model.dart';
import 'package:sport_app/repository/tournament_repo.dart';
part 'tournament_state.dart';
part 'tournament_event.dart';

class TournamentBloc extends Bloc<TournamentEvent, TournamentState> {
  TournamentBloc() : super(const TournamentState()) {
    on<GetTournamentRequest>(
      (event, emit) => _getRequest(event, emit),
    );
    on<GetMatchesRequest>(
      (event, emit) => _getMatchesRequest(event, emit),
    );
    on<GetTeamRequest>(
      (event, emit) => _getTeamRequest(event, emit),
    );
  }
  final TournamentRepository tournamentRepository = TournamentRepository();
  Future<void> _getRequest(
    GetTournamentRequest event,
    Emitter<TournamentState> emit,
  ) async {
    emit(state.copyWith(
        status: Status.inProgress, isMatch: false, isTeam: false));
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

  Future<void> _getMatchesRequest(
    GetMatchesRequest event,
    Emitter<TournamentState> emit,
  ) async {
    emit(state.copyWith(
        status: Status.inProgress, isMatch: true, isTeam: false));
    // try {
    final apiResult =
        await tournamentRepository.getMatches(event.id, event.type);
    apiResult.when(
      success: (data) {
        print(data);
        emit(state.copyWith(
          status: Status.loaded,
          tournamentDetailModel: data,
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

  Future<void> _getTeamRequest(
    GetTeamRequest event,
    Emitter<TournamentState> emit,
  ) async {
    emit(state.copyWith(
        status: Status.inProgress, isMatch: false, isTeam: true));
    // try {
    final apiResult = await tournamentRepository.getTeams(event.id);
    apiResult.when(
      success: (data) {
        print(data);
        emit(state.copyWith(
          status: Status.loaded,
          teamList: data,
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
}
