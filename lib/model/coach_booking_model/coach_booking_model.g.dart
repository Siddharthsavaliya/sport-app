// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coach_booking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoachBookingModelImpl _$$CoachBookingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CoachBookingModelImpl(
      coachBooking:
          CoachBooking.fromJson(json['coachBooking'] as Map<String, dynamic>),
      starttime: json['starttime'] as String,
      endtime: json['endtime'] as String,
      userName: json['userName'] as String,
      phoneNumber: json['phoneNumber'] as String,
    );

Map<String, dynamic> _$$CoachBookingModelImplToJson(
        _$CoachBookingModelImpl instance) =>
    <String, dynamic>{
      'coachBooking': instance.coachBooking,
      'starttime': instance.starttime,
      'endtime': instance.endtime,
      'userName': instance.userName,
      'phoneNumber': instance.phoneNumber,
    };

_$CoachBookingImpl _$$CoachBookingImplFromJson(Map<String, dynamic> json) =>
    _$CoachBookingImpl(
      userId: json['userId'] as String,
      coachId: json['coachId'] as String,
      qrCode: json['qrCode'] as String,
      totalPrice: json['totalPrice'] as int,
      expirationDate: DateTime.parse(json['expirationDate'] as String),
      id: json['_id'] as String,
      v: json['__v'] as int,
    );

Map<String, dynamic> _$$CoachBookingImplToJson(_$CoachBookingImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'coachId': instance.coachId,
      'qrCode': instance.qrCode,
      'totalPrice': instance.totalPrice,
      'expirationDate': instance.expirationDate.toIso8601String(),
      '_id': instance.id,
      '__v': instance.v,
    };
