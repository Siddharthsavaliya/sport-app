// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coach_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoachImpl _$$CoachImplFromJson(Map<String, dynamic> json) => _$CoachImpl(
      id: json['_id'] as String?,
      role: json['role'] as String?,
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      nationality: json['nationality'] as String?,
      yearsOfExperience: json['yearsOfExperience'] as int?,
      email: json['email'] as String?,
      coachRating: json['coachRating'] as String? ?? "0",
      schools: (json['schools'] as List<dynamic>?)
              ?.map((e) => School.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      address1: json['address1'] as String?,
      coachSubscriptionprice:
          json['coachSubscriptionprice'] as String? ?? "2500",
      address2: json['address2'] as String?,
      institutionId: json['institutionId'] as String?,
      description: json['description'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      pincode: json['pincode'] as String?,
      country: json['country'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      gender: json['gender'] as String?,
      sportsgrounds: (json['sportsgrounds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      certificates: (json['certificates'] as List<dynamic>?)
              ?.map((e) => Certificate.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      coachingSpecialties: json['coachingSpecialties'] == null
          ? null
          : CoachingSpecialties.fromJson(
              json['coachingSpecialties'] as Map<String, dynamic>),
      qualificationsAndCertifications:
          json['qualificationsAndCertifications'] == null
              ? null
              : QualificationsAndCertifications.fromJson(
                  json['qualificationsAndCertifications']
                      as Map<String, dynamic>),
      biographyAndBackground: json['biographyAndBackground'] == null
          ? null
          : BiographyAndBackground.fromJson(
              json['biographyAndBackground'] as Map<String, dynamic>),
      availabilityAndSchedule: json['availabilityAndSchedule'] == null
          ? null
          : AvailabilityAndSchedule.fromJson(
              json['availabilityAndSchedule'] as Map<String, dynamic>),
      locationAndServiceArea: json['locationAndServiceArea'] == null
          ? null
          : LocationAndServiceArea.fromJson(
              json['locationAndServiceArea'] as Map<String, dynamic>),
      ratesAndPricing: json['ratesAndPricing'] == null
          ? null
          : RatesAndPricing.fromJson(
              json['ratesAndPricing'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CoachImplToJson(_$CoachImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'role': instance.role,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'nationality': instance.nationality,
      'yearsOfExperience': instance.yearsOfExperience,
      'email': instance.email,
      'coachRating': instance.coachRating,
      'schools': instance.schools,
      'address1': instance.address1,
      'coachSubscriptionprice': instance.coachSubscriptionprice,
      'address2': instance.address2,
      'institutionId': instance.institutionId,
      'description': instance.description,
      'city': instance.city,
      'state': instance.state,
      'pincode': instance.pincode,
      'country': instance.country,
      'phoneNumber': instance.phoneNumber,
      'gender': instance.gender,
      'sportsgrounds': instance.sportsgrounds,
      'certificates': instance.certificates,
      'coachingSpecialties': instance.coachingSpecialties,
      'qualificationsAndCertifications':
          instance.qualificationsAndCertifications,
      'biographyAndBackground': instance.biographyAndBackground,
      'availabilityAndSchedule': instance.availabilityAndSchedule,
      'locationAndServiceArea': instance.locationAndServiceArea,
      'ratesAndPricing': instance.ratesAndPricing,
    };

_$CertificateImpl _$$CertificateImplFromJson(Map<String, dynamic> json) =>
    _$CertificateImpl(
      certificateName: json['certificateName'] as String,
      organizationName: json['organizationName'] as String,
      certificateUrl: json['certificateUrl'] as String,
    );

Map<String, dynamic> _$$CertificateImplToJson(_$CertificateImpl instance) =>
    <String, dynamic>{
      'certificateName': instance.certificateName,
      'organizationName': instance.organizationName,
      'certificateUrl': instance.certificateUrl,
    };

_$CoachingSpecialtiesImpl _$$CoachingSpecialtiesImplFromJson(
        Map<String, dynamic> json) =>
    _$CoachingSpecialtiesImpl(
      sports:
          (json['sports'] as List<dynamic>).map((e) => e as String).toList(),
      levels:
          (json['levels'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$CoachingSpecialtiesImplToJson(
        _$CoachingSpecialtiesImpl instance) =>
    <String, dynamic>{
      'sports': instance.sports,
      'levels': instance.levels,
    };

_$QualificationsAndCertificationsImpl
    _$$QualificationsAndCertificationsImplFromJson(Map<String, dynamic> json) =>
        _$QualificationsAndCertificationsImpl(
          academicQualifications:
              (json['academicQualifications'] as List<dynamic>)
                  .map((e) => e as String)
                  .toList(),
          professionalCertifications:
              (json['professionalCertifications'] as List<dynamic>)
                  .map((e) => e as String)
                  .toList(),
        );

Map<String, dynamic> _$$QualificationsAndCertificationsImplToJson(
        _$QualificationsAndCertificationsImpl instance) =>
    <String, dynamic>{
      'academicQualifications': instance.academicQualifications,
      'professionalCertifications': instance.professionalCertifications,
    };

_$BiographyAndBackgroundImpl _$$BiographyAndBackgroundImplFromJson(
        Map<String, dynamic> json) =>
    _$BiographyAndBackgroundImpl(
      achievements: (json['achievements'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$BiographyAndBackgroundImplToJson(
        _$BiographyAndBackgroundImpl instance) =>
    <String, dynamic>{
      'achievements': instance.achievements,
    };

_$AvailabilityAndScheduleImpl _$$AvailabilityAndScheduleImplFromJson(
        Map<String, dynamic> json) =>
    _$AvailabilityAndScheduleImpl(
      daysAndTimes: (json['daysAndTimes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      blockedDatesTimes: (json['blockedDatesTimes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$AvailabilityAndScheduleImplToJson(
        _$AvailabilityAndScheduleImpl instance) =>
    <String, dynamic>{
      'daysAndTimes': instance.daysAndTimes,
      'blockedDatesTimes': instance.blockedDatesTimes,
    };

_$LocationAndServiceAreaImpl _$$LocationAndServiceAreaImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationAndServiceAreaImpl(
      primaryLocations: (json['primaryLocations'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$LocationAndServiceAreaImplToJson(
        _$LocationAndServiceAreaImpl instance) =>
    <String, dynamic>{
      'primaryLocations': instance.primaryLocations,
    };

_$RatesAndPricingImpl _$$RatesAndPricingImplFromJson(
        Map<String, dynamic> json) =>
    _$RatesAndPricingImpl(
      groupPricing: (json['groupPricing'] as List<dynamic>)
          .map((e) => GroupPricing.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RatesAndPricingImplToJson(
        _$RatesAndPricingImpl instance) =>
    <String, dynamic>{
      'groupPricing': instance.groupPricing,
    };

_$PaymentInformationImpl _$$PaymentInformationImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentInformationImpl(
      methods:
          (json['methods'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$PaymentInformationImplToJson(
        _$PaymentInformationImpl instance) =>
    <String, dynamic>{
      'methods': instance.methods,
    };

_$GroupPricingImpl _$$GroupPricingImplFromJson(Map<String, dynamic> json) =>
    _$GroupPricingImpl(
      groupSize: json['groupSize'] as int,
      rate: json['rate'] as int,
    );

Map<String, dynamic> _$$GroupPricingImplToJson(_$GroupPricingImpl instance) =>
    <String, dynamic>{
      'groupSize': instance.groupSize,
      'rate': instance.rate,
    };
