part of 'tournament_bloc.dart';

class TournamentState extends Equatable {
  const TournamentState({
    this.message = " ",
    this.tournamentList = const [],
    this.status = Status.initial,
  });
  final String message;
  final Status status;
  final List<Tournament> tournamentList;

  @override
  List<Object?> get props {
    return [
      status,
      message,
      tournamentList,
    ];
  }

  TournamentState copyWith({
    String? message,
    Status? status,
    List<Tournament>? tournamentList,
  }) {
    return TournamentState(
      message: message ?? this.message,
      status: status ?? this.status,
      tournamentList: tournamentList ?? this.tournamentList,
    );
  }
}
