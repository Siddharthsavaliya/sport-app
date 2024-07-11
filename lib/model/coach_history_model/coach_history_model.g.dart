// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coach_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoachHistoryModelImpl _$$CoachHistoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CoachHistoryModelImpl(
      id: json['_id'] as String,
      userId: User.fromJson(json['userId'] as Map<String, dynamic>),
      coachId: Coach.fromJson(json['coachId'] as Map<String, dynamic>),
      schoolId: School.fromJson(json['schoolId'] as Map<String, dynamic>),
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      qrCode: json['qrCode'] as String,
      transactionId: json['transactionId'] as String,
      totalPrice: (json['totalPrice'] as num).toDouble(),
      subtotal: (json['subtotal'] as num).toDouble(),
      gstAmount: (json['gstAmount'] as num).toDouble(),
      expirationDate: DateTime.parse(json['expirationDate'] as String),
      payment: json['payment'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      url: json['url'] as String,
      bookingDateTime: json['bookingDateTime'] as String,
    );

Map<String, dynamic> _$$CoachHistoryModelImplToJson(
        _$CoachHistoryModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'userId': instance.userId,
      'coachId': instance.coachId,
      'schoolId': instance.schoolId,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'qrCode': instance.qrCode,
      'transactionId': instance.transactionId,
      'totalPrice': instance.totalPrice,
      'subtotal': instance.subtotal,
      'gstAmount': instance.gstAmount,
      'expirationDate': instance.expirationDate.toIso8601String(),
      'payment': instance.payment,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'url': instance.url,
      'bookingDateTime': instance.bookingDateTime,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      userName: json['userName'] as String,
      phoneNumber: json['phoneNumber'] as String,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'phoneNumber': instance.phoneNumber,
    };

_$CoachImpl _$$CoachImplFromJson(Map<String, dynamic> json) => _$CoachImpl(
      sportsgrounds: (json['sportsgrounds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$CoachImplToJson(_$CoachImpl instance) =>
    <String, dynamic>{
      'sportsgrounds': instance.sportsgrounds,
    };

_$SchoolImpl _$$SchoolImplFromJson(Map<String, dynamic> json) => _$SchoolImpl(
      institutionName: json['institutionName'] as String,
      institutionId: json['institutionId'] as String,
    );

Map<String, dynamic> _$$SchoolImplToJson(_$SchoolImpl instance) =>
    <String, dynamic>{
      'institutionName': instance.institutionName,
      'institutionId': instance.institutionId,
    };
