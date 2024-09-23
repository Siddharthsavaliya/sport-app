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
    @JsonKey(name: 'matchId') required String id,
    required List<TeamReference> teams,
    @JsonKey(name: "score") required Map<String, int> score,
    required String status,
  }) = _Match;

  factory Match.fromJson(Map<String, dynamic> json) => _$MatchFromJson(json);
}

@freezed
class TeamReference with _$TeamReference {
  const factory TeamReference({
    @JsonKey(name: 'id') required String id,
    required String name,
  }) = _TeamReference;

  factory TeamReference.fromJson(Map<String, dynamic> json) =>
      _$TeamReferenceFromJson(json);
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

List<Match> buildMatchListFromResponse(
  List<dynamic> response,
) {
  return (response)
      .map(
        (json) => Match.fromJson(json as Map<String, dynamic>),
      )
      .toList();
}
