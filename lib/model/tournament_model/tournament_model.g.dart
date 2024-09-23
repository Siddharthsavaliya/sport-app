// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tournament_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TournamentImpl _$$TournamentImplFromJson(Map<String, dynamic> json) =>
    _$TournamentImpl(
      id: json['_id'] as String,
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
    );

Map<String, dynamic> _$$TournamentImplToJson(_$TournamentImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
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
    };

_$GroundAddressImpl _$$GroundAddressImplFromJson(Map<String, dynamic> json) =>
    _$GroundAddressImpl(
      id: json['_id'] as String,
      address1: json['address1'] as String?,
      address2: json['address2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      pincode: json['pincode'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$$GroundAddressImplToJson(_$GroundAddressImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'address1': instance.address1,
      'address2': instance.address2,
      'city': instance.city,
      'state': instance.state,
      'pincode': instance.pincode,
      'country': instance.country,
    };

_$TeamImpl _$$TeamImplFromJson(Map<String, dynamic> json) => _$TeamImpl(
      id: json['_id'] as String,
      name: json['name'] as String,
      tournament: json['tournament'] as String,
      players: (json['players'] as List<dynamic>)
          .map((e) => Player.fromJson(e as Map<String, dynamic>))
          .toList(),
      version: (json['__v'] as num).toInt(),
    );

Map<String, dynamic> _$$TeamImplToJson(_$TeamImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'tournament': instance.tournament,
      'players': instance.players,
      '__v': instance.version,
    };

_$PlayerImpl _$$PlayerImplFromJson(Map<String, dynamic> json) => _$PlayerImpl(
      id: json['_id'] as String,
      image: json['image'] as String,
      name: json['name'] as String,
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
      age: (json['age'] as num).toInt(),
      gender: json['gender'] as String,
      note: json['note'] as String,
    );

Map<String, dynamic> _$$PlayerImplToJson(_$PlayerImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'age': instance.age,
      'gender': instance.gender,
      'note': instance.note,
    };

_$MatchImpl _$$MatchImplFromJson(Map<String, dynamic> json) => _$MatchImpl(
      id: json['matchId'] as String,
      teams: (json['teams'] as List<dynamic>)
          .map((e) => TeamReference.fromJson(e as Map<String, dynamic>))
          .toList(),
      score: Map<String, int>.from(json['score'] as Map),
      status: json['status'] as String,
    );

Map<String, dynamic> _$$MatchImplToJson(_$MatchImpl instance) =>
    <String, dynamic>{
      'matchId': instance.id,
      'teams': instance.teams,
      'score': instance.score,
      'status': instance.status,
    };

_$TeamReferenceImpl _$$TeamReferenceImplFromJson(Map<String, dynamic> json) =>
    _$TeamReferenceImpl(
      id: json['id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$TeamReferenceImplToJson(_$TeamReferenceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
