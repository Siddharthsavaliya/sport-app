// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coach_booking_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoachBookingHistoryImpl _$$CoachBookingHistoryImplFromJson(
        Map<String, dynamic> json) =>
    _$CoachBookingHistoryImpl(
      id: json['_id'] as String,
      userId: json['userId'] as String,
      coachId: Coach.fromJson(json['coachId'] as Map<String, dynamic>),
      schoolId: json['schoolId'] as String,
      qrCode: json['qrCode'] as String,
      totalPrice: json['totalPrice'] as int,
      expirationDate: DateTime.parse(json['expirationDate'] as String),
    );

Map<String, dynamic> _$$CoachBookingHistoryImplToJson(
        _$CoachBookingHistoryImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'userId': instance.userId,
      'coachId': instance.coachId,
      'schoolId': instance.schoolId,
      'qrCode': instance.qrCode,
      'totalPrice': instance.totalPrice,
      'expirationDate': instance.expirationDate.toIso8601String(),
    };
