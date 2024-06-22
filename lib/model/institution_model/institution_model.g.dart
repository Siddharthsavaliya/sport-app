// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'institution_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InstitutionResponseImpl _$$InstitutionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$InstitutionResponseImpl(
      success: json['success'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => Institution.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$InstitutionResponseImplToJson(
        _$InstitutionResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

_$InstitutionImpl _$$InstitutionImplFromJson(Map<String, dynamic> json) =>
    _$InstitutionImpl(
      institutionName: json['institutionName'] as String,
      institutionId: json['institutionId'] as String,
    );

Map<String, dynamic> _$$InstitutionImplToJson(_$InstitutionImpl instance) =>
    <String, dynamic>{
      'institutionName': instance.institutionName,
      'institutionId': instance.institutionId,
    };
