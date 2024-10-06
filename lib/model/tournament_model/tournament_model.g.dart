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
      logo: json['logo'] as String?,
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
      'logo': instance.logo,
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
      googleMapLink: json['googleMapLink'] as String?,
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
      'googleMapLink': instance.googleMapLink,
      'country': instance.country,
    };
