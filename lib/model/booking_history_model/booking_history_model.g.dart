// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingImpl _$$BookingImplFromJson(Map<String, dynamic> json) =>
    _$BookingImpl(
      id: json['_id'] as String,
      userId: json['userId'] as String?,
      slotId:
          (json['slotId'] as List<dynamic>?)?.map((e) => e as String).toList(),
      ground: GroundModel.fromJson(json['groundId'] as Map<String, dynamic>),
      date: json['date'] as String?,
      dayOfWeek: json['dayOfWeek'] as String?,
      startTime: (json['startTime'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      endTime:
          (json['endTime'] as List<dynamic>?)?.map((e) => e as String).toList(),
      totalCount: (json['totalCount'] as num?)?.toInt(),
      qrCode: json['qrCode'] as String,
      isCancellationFlag: json['isCancellationFlag'] as bool? ?? true,
      invoiceUrl: json['invoiceUrl'] as String? ?? "",
      users: (json['users'] as List<dynamic>)
          .map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPrice: json['totalPrice'] as num?,
      gstAmount: json['gstAmount'] as num?,
      subtotal: json['subtotal'] as num?,
      status: json['status'] as String?,
      v: (json['v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BookingImplToJson(_$BookingImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'userId': instance.userId,
      'slotId': instance.slotId,
      'groundId': instance.ground,
      'date': instance.date,
      'dayOfWeek': instance.dayOfWeek,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'totalCount': instance.totalCount,
      'qrCode': instance.qrCode,
      'isCancellationFlag': instance.isCancellationFlag,
      'invoiceUrl': instance.invoiceUrl,
      'users': instance.users,
      'totalPrice': instance.totalPrice,
      'gstAmount': instance.gstAmount,
      'subtotal': instance.subtotal,
      'status': instance.status,
      'v': instance.v,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      firstName: json['firstName'] as String,
      isFree: json['isFree'] as bool,
      phoneNumber: json['phoneNumber'] as String,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'isFree': instance.isFree,
      'phoneNumber': instance.phoneNumber,
    };
