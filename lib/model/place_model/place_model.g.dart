// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaceModelImpl _$$PlaceModelImplFromJson(Map<String, dynamic> json) =>
    _$PlaceModelImpl(
      description: json['description'] as String?,
      matchedSubstrings: (json['matched_substrings'] as List<dynamic>?)
          ?.map((e) => MatchedSubstring.fromJson(e as Map<String, dynamic>))
          .toList(),
      placeId: json['place_id'] as String?,
      reference: json['reference'] as String?,
      structuredFormatting: json['structured_formatting'] == null
          ? null
          : StructuredFormatting.fromJson(
              json['structured_formatting'] as Map<String, dynamic>),
      terms: (json['terms'] as List<dynamic>?)
          ?.map((e) => Term.fromJson(e as Map<String, dynamic>))
          .toList(),
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$PlaceModelImplToJson(_$PlaceModelImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'matched_substrings': instance.matchedSubstrings,
      'place_id': instance.placeId,
      'reference': instance.reference,
      'structured_formatting': instance.structuredFormatting,
      'terms': instance.terms,
      'types': instance.types,
    };
