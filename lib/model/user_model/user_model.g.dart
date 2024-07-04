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
      email: json['email'] as String?,
      subscription: json['subscription'] == null
          ? null
          : Membership.fromJson(json['subscription'] as Map<String, dynamic>),
      phoneNumber: json['phoneNumber'] as String?,
      dpUrl: json['dpUrl'] as String?,
      path: json['path'] as String?,
      dob: json['DOB'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'role': instance.role,
      'institutionName': instance.institutionName,
      'institutionId': instance.institutionId,
      'userName': instance.userName,
      'email': instance.email,
      'subscription': instance.subscription,
      'phoneNumber': instance.phoneNumber,
      'dpUrl': instance.dpUrl,
      'path': instance.path,
      'DOB': instance.dob,
    };
