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

List<Tournament> buildTournamentListFromResponse(
  List<dynamic> response,
) {
  return (response)
      .map(
        (json) => Tournament.fromJson(json as Map<String, dynamic>),
      )
      .toList();
}
