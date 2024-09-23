import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:collection/collection.dart';

part 'tournament_model.freezed.dart';
part 'tournament_model.g.dart';

@freezed
class Tournament with _$Tournament {
  const factory Tournament({
    @JsonKey(name: '_id') required String id,
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
  }) = _Tournament;

  factory Tournament.fromJson(Map<String, dynamic> json) =>
      _$TournamentFromJson(json);
}

@freezed
class GroundAddress with _$GroundAddress {
  const factory GroundAddress({
    @JsonKey(name: '_id') required String id,
    String? address1,
    String? address2,
    String? city,
    String? state,
    String? pincode,
    String? country,
  }) = _GroundAddress;

  factory GroundAddress.fromJson(Map<String, dynamic> json) =>
      _$GroundAddressFromJson(json);
}

@freezed
class Team with _$Team {
  const factory Team({
    @JsonKey(name: '_id') required String id,
    required String name,
    required String tournament,
    required List<Player> players,
    @JsonKey(name: '__v') required int version,
  }) = _Team;

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
}

@freezed
class Player with _$Player {
  const factory Player({
    @JsonKey(name: '_id') required String id,
    required String image,
    required String name,
    required String phoneNumber,
    required String email,
    required int age,
    required String gender,
    required String note,
  }) = _Player;

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);
}

@freezed
class Match with _$Match {
  const factory Match({
    @JsonKey(name: '_id') required String id,
    required String tournament,
    required TeamReference teamA,
    required TeamReference teamB,
    required DateTime date,
    required String time,
    required String status,
    @JsonKey(name: "score") required Map<String, dynamic> score,
    required String tossWinner,
    @JsonKey(name: '__v') required int version,
  }) = _Match;

  factory Match.fromJson(Map<String, dynamic> json) => _$MatchFromJson(json);
}

@freezed
class TeamReference with _$TeamReference {
  const factory TeamReference({
    @JsonKey(name: '_id') required String id,
    required String name,
  }) = _TeamReference;

  factory TeamReference.fromJson(Map<String, dynamic> json) =>
      _$TeamReferenceFromJson(json);
}

@freezed
class MatchScore with _$MatchScore {
  const factory MatchScore({
    @JsonKey(name: '66ea8d36c27c6be554fa4fd8') required ScoreDetail teamAScore,
    @JsonKey(name: '66ea91a4d2791e7f240d28f5') required ScoreDetail teamBScore,
  }) = _MatchScore;

  factory MatchScore.fromJson(Map<String, dynamic> json) =>
      _$MatchScoreFromJson(json);
}

@freezed
class ScoreDetail with _$ScoreDetail {
  const factory ScoreDetail({
    required int runs,
    required int wickets,
    required int overs,
  }) = _ScoreDetail;

  factory ScoreDetail.fromJson(Map<String, dynamic> json) =>
      _$ScoreDetailFromJson(json);
}

List<Tournament> buildTournamentListFromResponse(
  List<dynamic> response,
) {
  return (response)
      .map(
        (json) => Tournament.fromJson(json as Map<String, dynamic>),
      )
      .toList();
}
