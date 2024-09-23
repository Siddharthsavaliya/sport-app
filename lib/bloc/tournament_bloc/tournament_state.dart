part of 'tournament_bloc.dart';

class TournamentState extends Equatable {
  const TournamentState({
    this.message = " ",
    this.tournamentList = const [],
    this.matchList = const [],
    this.status = Status.initial,
    this.isMatch = false,
  });
  final String message;
  final Status status;
  final bool isMatch;
  final List<Tournament> tournamentList;
  final List<Match> matchList;

  @override
  List<Object?> get props {
    return [
      status,
      message,
      isMatch,
      matchList,
      tournamentList,
    ];
  }

  TournamentState copyWith({
    String? message,
    Status? status,
    List<Tournament>? tournamentList,
    List<Match>? matchList,
    bool? isMatch,
  }) {
    return TournamentState(
      message: message ?? this.message,
      status: status ?? this.status,
      matchList: matchList ?? this.matchList,
      isMatch: isMatch ?? this.isMatch,
      tournamentList: tournamentList ?? this.tournamentList,
    );
  }
}
