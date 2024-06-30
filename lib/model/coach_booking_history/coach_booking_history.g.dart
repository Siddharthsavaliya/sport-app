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
      schoolId: School.fromJson(json['schoolId'] as Map<String, dynamic>),
      qrCode: json['qrCode'] as String,
      totalPrice: json['totalPrice'] as int,
      gstAmount: json['gstAmount'] as num?,
      startTime: json['startTime'] as String?,
      createdAt: json['createdAt'] as String?,
      endTime: json['endTime'] as String?,
      subtotal: json['subtotal'] as num?,
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
      'gstAmount': instance.gstAmount,
      'startTime': instance.startTime,
      'createdAt': instance.createdAt,
      'endTime': instance.endTime,
      'subtotal': instance.subtotal,
      'expirationDate': instance.expirationDate.toIso8601String(),
    };
