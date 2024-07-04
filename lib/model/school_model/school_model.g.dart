// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SchoolImpl _$$SchoolImplFromJson(Map<String, dynamic> json) => _$SchoolImpl(
      schoolId: json['schoolId'] as String?,
      schoolName: json['schoolName'] as String?,
      address1: json['address1'] as String?,
      address2: json['address2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      institutionemailId: json['institutionemailId'] as String?,
      institutionName: json['institutionName'] as String?,
      contactpersonname: json['contactpersonname'] as String?,
      contactpersonemailId: json['contactpersonemailId'] as String?,
      contactpersonphoneNumber: json['contactpersonphoneNumber'] as String?,
      googlemaplink: json['googlemaplink'] as String?,
      institutionId: json['institutionId'] as String?,
      sportsgrounds: (json['sportsgrounds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      schoolSchedule: json['SchoolSchedule'] == null
          ? null
          : SchoolSchedule.fromJson(
              json['SchoolSchedule'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SchoolImplToJson(_$SchoolImpl instance) =>
    <String, dynamic>{
      'schoolId': instance.schoolId,
      'schoolName': instance.schoolName,
      'address1': instance.address1,
      'address2': instance.address2,
      'city': instance.city,
      'state': instance.state,
      'institutionemailId': instance.institutionemailId,
      'institutionName': instance.institutionName,
      'contactpersonname': instance.contactpersonname,
      'contactpersonemailId': instance.contactpersonemailId,
      'contactpersonphoneNumber': instance.contactpersonphoneNumber,
      'googlemaplink': instance.googlemaplink,
      'institutionId': instance.institutionId,
      'sportsgrounds': instance.sportsgrounds,
      'SchoolSchedule': instance.schoolSchedule,
    };

_$SchoolScheduleImpl _$$SchoolScheduleImplFromJson(Map<String, dynamic> json) =>
    _$SchoolScheduleImpl(
      weekdayfromtime: json['weekdayfromtime'] as String,
      weekdaytotime: json['weekdaytotime'] as String,
    );

Map<String, dynamic> _$$SchoolScheduleImplToJson(
        _$SchoolScheduleImpl instance) =>
    <String, dynamic>{
      'weekdayfromtime': instance.weekdayfromtime,
      'weekdaytotime': instance.weekdaytotime,
    };
