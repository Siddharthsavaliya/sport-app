// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coach_booking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoachBookingModelImpl _$$CoachBookingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CoachBookingModelImpl(
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      transactionId: json['transactionId'] as String,
      qrCode: json['qrCode'] as String,
      totalPrice: json['totalPrice'] as num,
      expirationDate: DateTime.parse(json['expirationDate'] as String),
    );

Map<String, dynamic> _$$CoachBookingModelImplToJson(
        _$CoachBookingModelImpl instance) =>
    <String, dynamic>{
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'transactionId': instance.transactionId,
      'qrCode': instance.qrCode,
      'totalPrice': instance.totalPrice,
      'expirationDate': instance.expirationDate.toIso8601String(),
    };
