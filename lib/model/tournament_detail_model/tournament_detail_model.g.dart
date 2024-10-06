// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tournament_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TournamentDetailModelImpl _$$TournamentDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TournamentDetailModelImpl(
      tournamentId: json['tournamentId'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      shortDescription: json['shortDescription'] as String,
      longDescription: json['longDescription'] as String,
      numberOfTeams: (json['numberOfTeams'] as num).toInt(),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      sport: json['sport'] as String,
      playersPerTeam: (json['playersPerTeam'] as num).toInt(),
      groundAddress:
          GroundAddress.fromJson(json['groundAddress'] as Map<String, dynamic>),
      status: json['status'] as String,
      teams: (json['teams'] as List<dynamic>)
          .map((e) => Team.fromJson(e as Map<String, dynamic>))
          .toList(),
      matches: (json['matches'] as List<dynamic>)
          .map((e) => Match.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TournamentDetailModelImplToJson(
        _$TournamentDetailModelImpl instance) =>
    <String, dynamic>{
      'tournamentId': instance.tournamentId,
      'name': instance.name,
      'image': instance.image,
      'shortDescription': instance.shortDescription,
      'longDescription': instance.longDescription,
      'numberOfTeams': instance.numberOfTeams,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'sport': instance.sport,
      'playersPerTeam': instance.playersPerTeam,
      'groundAddress': instance.groundAddress,
      'status': instance.status,
      'teams': instance.teams,
      'matches': instance.matches,
    };

_$GroundAddressImpl _$$GroundAddressImplFromJson(Map<String, dynamic> json) =>
    _$GroundAddressImpl(
      address1: json['address1'] as String,
      address2: json['address2'] as String? ?? "",
      city: json['city'] as String,
      state: json['state'] as String,
      pincode: json['pincode'] as String,
      country: json['country'] as String,
    );

Map<String, dynamic> _$$GroundAddressImplToJson(_$GroundAddressImpl instance) =>
    <String, dynamic>{
      'address1': instance.address1,
      'address2': instance.address2,
      'city': instance.city,
      'state': instance.state,
      'pincode': instance.pincode,
      'country': instance.country,
    };

_$TeamImpl _$$TeamImplFromJson(Map<String, dynamic> json) => _$TeamImpl(
      teamId: json['teamId'] as String?,
      name: json['name'] as String?,
      players: (json['players'] as List<dynamic>)
          .map((e) => Player.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TeamImplToJson(_$TeamImpl instance) =>
    <String, dynamic>{
      'teamId': instance.teamId,
      'name': instance.name,
      'players': instance.players,
    };

_$MatchImpl _$$MatchImplFromJson(Map<String, dynamic> json) => _$MatchImpl(
      matchId: json['matchId'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      time: json['time'] as String?,
      teams: (json['teams'] as List<dynamic>?)
              ?.map((e) => MatchTeam.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      score: (json['score'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const [],
      status: json['status'] as String?,
      calculatedStatus: json['calculatedStatus'] as String?,
      tossWinner: json['tossWinner'] as String?,
      winner: json['winner'] as String?,
    );

Map<String, dynamic> _$$MatchImplToJson(_$MatchImpl instance) =>
    <String, dynamic>{
      'matchId': instance.matchId,
      'date': instance.date?.toIso8601String(),
      'time': instance.time,
      'teams': instance.teams,
      'score': instance.score,
      'status': instance.status,
      'calculatedStatus': instance.calculatedStatus,
      'tossWinner': instance.tossWinner,
      'winner': instance.winner,
    };

_$PlayerImpl _$$PlayerImplFromJson(Map<String, dynamic> json) => _$PlayerImpl(
      image: json['image'] as String?,
      name: json['name'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      email: json['email'] as String?,
      age: (json['age'] as num?)?.toInt(),
      gender: json['gender'] as String?,
      note: json['note'] as String?,
      role: json['role'] as String?,
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$$PlayerImplToJson(_$PlayerImpl instance) =>
    <String, dynamic>{
      'image': instance.image,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'age': instance.age,
      'gender': instance.gender,
      'note': instance.note,
      'role': instance.role,
      '_id': instance.id,
    };

_$MatchTeamImpl _$$MatchTeamImplFromJson(Map<String, dynamic> json) =>
    _$MatchTeamImpl(
      id: json['id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$MatchTeamImplToJson(_$MatchTeamImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$ScoreImpl _$$ScoreImplFromJson(Map<String, dynamic> json) => _$ScoreImpl(
      team: json['team'] as String,
      runs: (json['runs'] as num).toInt(),
      wickets: (json['wickets'] as num).toInt(),
      overs: (json['overs'] as num).toInt(),
    );

Map<String, dynamic> _$$ScoreImplToJson(_$ScoreImpl instance) =>
    <String, dynamic>{
      'team': instance.team,
      'runs': instance.runs,
      'wickets': instance.wickets,
      'overs': instance.overs,
    };
