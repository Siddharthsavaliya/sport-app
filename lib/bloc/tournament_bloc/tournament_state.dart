part of 'tournament_bloc.dart';

class TournamentState extends Equatable {
  const TournamentState({
    this.message = " ",
    this.tournamentList = const [],
    this.teamList = const [],
    this.tournamentDetailModel,
    this.status = Status.initial,
    this.isMatch = false,
    this.isTeam = false,
  });
  final String message;
  final Status status;
  final bool isMatch;
  final bool isTeam;
  final List<Tournament> tournamentList;
  final List<Team> teamList;
  final TournamentDetailModel? tournamentDetailModel;

  @override
  List<Object?> get props {
    return [
      status,
      message,
      isTeam,
      isMatch,
      teamList,
      tournamentDetailModel,
      tournamentList,
    ];
  }

  TournamentState copyWith({
    String? message,
    Status? status,
    List<Tournament>? tournamentList,
    TournamentDetailModel? tournamentDetailModel,
    bool? isMatch,
    bool? isTeam,
    List<Team>? teamList,
  }) {
    return TournamentState(
      message: message ?? this.message,
      isTeam: isTeam ?? this.isTeam,
      status: status ?? this.status,
      teamList: teamList ?? this.teamList,
      tournamentDetailModel:
          tournamentDetailModel ?? this.tournamentDetailModel,
      isMatch: isMatch ?? this.isMatch,
      tournamentList: tournamentList ?? this.tournamentList,
    );
  }
}
