// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'membership.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MembershipImpl _$$MembershipImplFromJson(Map<String, dynamic> json) =>
    _$MembershipImpl(
      planType: json['planType'] as String,
      id: json['_id'] as String?,
      planName: json['planName'] as String?,
      price: (json['price'] as num).toDouble(),
      actualPrice: (json['actualPrice'] as num).toDouble(),
    );

Map<String, dynamic> _$$MembershipImplToJson(_$MembershipImpl instance) =>
    <String, dynamic>{
      'planType': instance.planType,
      '_id': instance.id,
      'planName': instance.planName,
      'price': instance.price,
      'actualPrice': instance.actualPrice,
    };
