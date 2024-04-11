// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'membership.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MembershipImpl _$$MembershipImplFromJson(Map<String, dynamic> json) =>
    _$MembershipImpl(
      planType: json['planType'] as String,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$$MembershipImplToJson(_$MembershipImpl instance) =>
    <String, dynamic>{
      'planType': instance.planType,
      'price': instance.price,
    };
