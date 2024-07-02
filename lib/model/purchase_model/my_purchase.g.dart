// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_purchase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyPurchaseImpl _$$MyPurchaseImplFromJson(Map<String, dynamic> json) =>
    _$MyPurchaseImpl(
      id: json['_id'] as String?,
      subscriptionPlan: json['subscriptionPlan'] == null
          ? null
          : Membership.fromJson(
              json['subscriptionPlan'] as Map<String, dynamic>),
      purchaseDate: json['purchaseDate'] == null
          ? null
          : DateTime.parse(json['purchaseDate'] as String),
      user: json['user'] as String?,
      invoiceUrl: json['invoiceUrl'] as String?,
    );

Map<String, dynamic> _$$MyPurchaseImplToJson(_$MyPurchaseImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'subscriptionPlan': instance.subscriptionPlan,
      'purchaseDate': instance.purchaseDate?.toIso8601String(),
      'user': instance.user,
      'invoiceUrl': instance.invoiceUrl,
    };
