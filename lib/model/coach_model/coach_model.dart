import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sport_app/model/school_model/school_model.dart';

part 'coach_model.freezed.dart';
part 'coach_model.g.dart';

@freezed
class Coach with _$Coach {
  const factory Coach({
    @JsonKey(name: '_id') String? id,
    String? role,
    String? firstname,
    String? lastname,
    String? nationality,
    int? yearsOfExperience,
    String? email,
    @Default("0") String? coachRating,
    @Default([]) List<School>? schools,
    String? address1,
    @Default("2500") String? coachSubscriptionprice,
    String? address2,
    String? institutionId,
    String? description,
    String? city,
    String? state,
    String? pincode,
    String? country,
    String? phoneNumber,
    String? gender,
    @Default([]) List<String> sportsgrounds,
    @Default([]) List<Certificate> certificates,
    @JsonKey(name: 'coachingSpecialties')
    CoachingSpecialties? coachingSpecialties,
    @JsonKey(name: 'qualificationsAndCertifications')
    QualificationsAndCertifications? qualificationsAndCertifications,
    @JsonKey(name: 'biographyAndBackground')
    BiographyAndBackground? biographyAndBackground,
    @JsonKey(name: 'availabilityAndSchedule')
    AvailabilityAndSchedule? availabilityAndSchedule,
    @JsonKey(name: 'locationAndServiceArea')
    LocationAndServiceArea? locationAndServiceArea,
    @JsonKey(name: 'ratesAndPricing') RatesAndPricing? ratesAndPricing,
  }) = _Coach;

  factory Coach.fromJson(Map<String, dynamic> json) => _$CoachFromJson(json);
}

List<Coach> buildCoachListFromResponse(
  List<dynamic> response,
) {
  return (response)
      .map(
        (json) => Coach.fromJson(json as Map<String, dynamic>),
      )
      .toList();
}

@freezed
class Certificate with _$Certificate {
  const factory Certificate({
    required String certificateName,
    required String organizationName,
    required String certificateUrl,
  }) = _Certificate;

  factory Certificate.fromJson(Map<String, dynamic> json) =>
      _$CertificateFromJson(json);
}

@freezed
class CoachingSpecialties with _$CoachingSpecialties {
  const factory CoachingSpecialties({
    required List<String> sports,
    required List<String> levels,
  }) = _CoachingSpecialties;

  factory CoachingSpecialties.fromJson(Map<String, dynamic> json) =>
      _$CoachingSpecialtiesFromJson(json);
}

@freezed
class QualificationsAndCertifications with _$QualificationsAndCertifications {
  const factory QualificationsAndCertifications({
    required List<String> academicQualifications,
    required List<String> professionalCertifications,
  }) = _QualificationsAndCertifications;

  factory QualificationsAndCertifications.fromJson(Map<String, dynamic> json) =>
      _$QualificationsAndCertificationsFromJson(json);
}

@freezed
class BiographyAndBackground with _$BiographyAndBackground {
  const factory BiographyAndBackground({
    required List<String> achievements,
  }) = _BiographyAndBackground;

  factory BiographyAndBackground.fromJson(Map<String, dynamic> json) =>
      _$BiographyAndBackgroundFromJson(json);
}

@freezed
class AvailabilityAndSchedule with _$AvailabilityAndSchedule {
  const factory AvailabilityAndSchedule({
    required List<String> daysAndTimes,
    required List<String> blockedDatesTimes,
  }) = _AvailabilityAndSchedule;

  factory AvailabilityAndSchedule.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityAndScheduleFromJson(json);
}

@freezed
class LocationAndServiceArea with _$LocationAndServiceArea {
  const factory LocationAndServiceArea({
    required List<String> primaryLocations,
  }) = _LocationAndServiceArea;

  factory LocationAndServiceArea.fromJson(Map<String, dynamic> json) =>
      _$LocationAndServiceAreaFromJson(json);
}

@freezed
class RatesAndPricing with _$RatesAndPricing {
  const factory RatesAndPricing({
    required List<GroupPricing> groupPricing,
  }) = _RatesAndPricing;

  factory RatesAndPricing.fromJson(Map<String, dynamic> json) =>
      _$RatesAndPricingFromJson(json);
}

@freezed
class PaymentInformation with _$PaymentInformation {
  const factory PaymentInformation({
    required List<String> methods,
  }) = _PaymentInformation;

  factory PaymentInformation.fromJson(Map<String, dynamic> json) =>
      _$PaymentInformationFromJson(json);
}

@freezed
class GroupPricing with _$GroupPricing {
  const factory GroupPricing({
    required int groupSize,
    required int rate,
  }) = _GroupPricing;

  factory GroupPricing.fromJson(Map<String, dynamic> json) =>
      _$GroupPricingFromJson(json);
}
