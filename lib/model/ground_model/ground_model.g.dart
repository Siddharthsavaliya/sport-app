// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ground_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroundModelImpl _$$GroundModelImplFromJson(Map<String, dynamic> json) =>
    _$GroundModelImpl(
      id: json['_id'] as String?,
      sportName: (json['sport_name'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      amenities: json['amenities'] as String?,
      address1: json['address1'] as String?,
      location: json['location'] as String?,
      address2: json['address2'] as String?,
      school: json['school'] == null
          ? null
          : School.fromJson(json['school'] as Map<String, dynamic>),
      institutionName: json['institutionName'] as String?,
      price: json['price'] as int?,
      rating: json['rating'] as int?,
      recommended: json['recommended'] as bool?,
      slots:
          (json['slots'] as List<dynamic>?)?.map((e) => e as String).toList(),
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$$GroundModelImplToJson(_$GroundModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'sport_name': instance.sportName,
      'images': instance.images,
      'amenities': instance.amenities,
      'address1': instance.address1,
      'location': instance.location,
      'address2': instance.address2,
      'school': instance.school,
      'institutionName': instance.institutionName,
      'price': instance.price,
      'rating': instance.rating,
      'recommended': instance.recommended,
      'slots': instance.slots,
      '__v': instance.v,
    };
