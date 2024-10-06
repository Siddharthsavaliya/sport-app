import 'package:freezed_annotation/freezed_annotation.dart';
part 'tournament_detail_model.freezed.dart';
part 'tournament_detail_model.g.dart';

@freezed
class TournamentDetailModel with _$TournamentDetailModel {
  const factory TournamentDetailModel({
    required String tournamentId,
    required String name,
    required String image,
    required String shortDescription,
    required String longDescription,
    required int numberOfTeams,
    required DateTime startDate,
    required DateTime endDate,
    required String sport,
    required int playersPerTeam,
    required GroundAddress groundAddress,
    required String status,
    required List<Team> teams,
    required List<Match> matches,
  }) = _TournamentDetailModel;

  factory TournamentDetailModel.fromJson(Map<String, dynamic> json) =>
      _$TournamentDetailModelFromJson(json);
}

@freezed
class GroundAddress with _$GroundAddress {
  const factory GroundAddress({
    required String address1,
    @Default("") String? address2,
    required String city,
    required String state,
    required String pincode,
    required String country,
  }) = _GroundAddress;

  factory GroundAddress.fromJson(Map<String, dynamic> json) =>
      _$GroundAddressFromJson(json);
}

@freezed
class Team with _$Team {
  const factory Team({
    String? teamId,
    String? name,
    required List<Player> players,
  }) = _Team;

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
}

@freezed
class Match with _$Match {
  const factory Match({
    String? matchId,
    DateTime? date,
    String? time,
    @Default([]) List<MatchTeam> teams,
    @Default([]) List<Map<String, dynamic>> score,
    String? status,
    String? calculatedStatus,
    String? tossWinner,
    String? winner,
  }) = _Match;

  factory Match.fromJson(Map<String, dynamic> json) => _$MatchFromJson(json);
}

@freezed
class Player with _$Player {
  const factory Player({
    String? image,
    String? name,
    String? phoneNumber,
    String? email,
    int? age,
    String? gender,
    String? note,
    String? role,
    @JsonKey(name: '_id') required String? id,
  }) = _Player;

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);
}

@freezed
class MatchTeam with _$MatchTeam {
  const factory MatchTeam({
    required String id,
    required String name,
  }) = _MatchTeam;

  factory MatchTeam.fromJson(Map<String, dynamic> json) =>
      _$MatchTeamFromJson(json);
}

@freezed
class Score with _$Score {
  const factory Score({
    required String team,
    required int runs,
    required int wickets,
    required int overs,
  }) = _Score;

  factory Score.fromJson(Map<String, dynamic> json) => _$ScoreFromJson(json);
}

List<Team> buildTeamListFromResponse(
  List<dynamic> response,
) {
  return (response)
      .map(
        (json) => Team.fromJson(json as Map<String, dynamic>),
      )
      .toList();
}
