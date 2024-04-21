// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SlotImpl _$$SlotImplFromJson(Map<String, dynamic> json) => _$SlotImpl(
      dayofweek: json['dayofweek'] as int?,
      starttime: json['starttime'] as String?,
      endtime: json['endtime'] as String?,
      booked: json['booked'] as bool?,
      id: json['_id'] as String?,
      bookedBy: json['bookedBy'] as String?,
    );

Map<String, dynamic> _$$SlotImplToJson(_$SlotImpl instance) =>
    <String, dynamic>{
      'dayofweek': instance.dayofweek,
      'starttime': instance.starttime,
      'endtime': instance.endtime,
      'booked': instance.booked,
      '_id': instance.id,
      'bookedBy': instance.bookedBy,
    };
