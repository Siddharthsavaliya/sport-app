// ignore_for_file: must_be_immutable, camel_case_types

part of 'tournament_bloc.dart';

abstract class TournamentEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetTournamentRequest extends TournamentEvent {
  GetTournamentRequest(this.type);
  final String type;
  @override
  List<Object> get props => [];
}

class GetMatchesRequest extends TournamentEvent {
  GetMatchesRequest(this.id);
  final String id;
  @override
  List<Object> get props => [];
}
