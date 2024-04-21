// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      role: json['role'] as String?,
      institutionName: json['institutionName'] as String?,
      institutionId: json['institutionId'] as String?,
      userName: json['userName'] as String?,
      subscription: json['subscription'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      dob: json['DOB'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'role': instance.role,
      'institutionName': instance.institutionName,
      'institutionId': instance.institutionId,
      'userName': instance.userName,
      'subscription': instance.subscription,
      'phoneNumber': instance.phoneNumber,
      'DOB': instance.dob,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
