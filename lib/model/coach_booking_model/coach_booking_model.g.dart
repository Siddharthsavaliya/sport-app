// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coach_booking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoachBookingModelImpl _$$CoachBookingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CoachBookingModelImpl(
      starttime: json['starttime'] as String,
      endtime: json['endtime'] as String,
      transactionId: json['transactionId'] as String,
      url: json['url'] as String,
      qrCode: json['qrCode'] as String,
      totalPrice: json['totalPrice'] as int,
      userName: json['userName'] as String,
      expirationDate: DateTime.parse(json['expirationDate'] as String),
      phoneNumber: json['phoneNumber'] as String,
    );

Map<String, dynamic> _$$CoachBookingModelImplToJson(
        _$CoachBookingModelImpl instance) =>
    <String, dynamic>{
      'starttime': instance.starttime,
      'endtime': instance.endtime,
      'transactionId': instance.transactionId,
      'url': instance.url,
      'qrCode': instance.qrCode,
      'totalPrice': instance.totalPrice,
      'userName': instance.userName,
      'expirationDate': instance.expirationDate.toIso8601String(),
      'phoneNumber': instance.phoneNumber,
    };
