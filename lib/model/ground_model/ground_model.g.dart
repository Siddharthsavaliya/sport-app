// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ground_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroundModelImpl _$$GroundModelImplFromJson(Map<String, dynamic> json) =>
    _$GroundModelImpl(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      location: json['location'] as String?,
      facility: json['facility'] as String?,
      address: json['address'] as String?,
      playingHours: json['playingHours'] as String?,
      price: json['price'] as int?,
      number: json['number'] as String?,
      rating: json['rating'] as int?,
      recommended: json['recommended'] as bool?,
      slots: (json['slots'] as List<dynamic>?)
          ?.map((e) => Slot.fromJson(e as Map<String, dynamic>))
          .toList(),
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$$GroundModelImplToJson(_$GroundModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'location': instance.location,
      'facility': instance.facility,
      'address': instance.address,
      'playingHours': instance.playingHours,
      'price': instance.price,
      'number': instance.number,
      'rating': instance.rating,
      'recommended': instance.recommended,
      'slots': instance.slots,
      '__v': instance.v,
    };
