// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coach_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Coach _$CoachFromJson(Map<String, dynamic> json) {
  return _Coach.fromJson(json);
}

/// @nodoc
mixin _$Coach {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  String? get firstname => throw _privateConstructorUsedError;
  String? get lastname => throw _privateConstructorUsedError;
  String? get nationality => throw _privateConstructorUsedError;
  int? get yearsOfExperience => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get coachRating => throw _privateConstructorUsedError;
  List<School>? get schools => throw _privateConstructorUsedError;
  String? get address1 => throw _privateConstructorUsedError;
  String? get coachSubscriptionprice => throw _privateConstructorUsedError;
  String? get address2 => throw _privateConstructorUsedError;
  String? get institutionId => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get pincode => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  List<String> get sportsgrounds => throw _privateConstructorUsedError;
  List<Certificate> get certificates => throw _privateConstructorUsedError;
  @JsonKey(name: 'coachingSpecialties')
  CoachingSpecialties? get coachingSpecialties =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'qualificationsAndCertifications')
  QualificationsAndCertifications? get qualificationsAndCertifications =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'biographyAndBackground')
  BiographyAndBackground? get biographyAndBackground =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'availabilityAndSchedule')
  AvailabilityAndSchedule? get availabilityAndSchedule =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'locationAndServiceArea')
  LocationAndServiceArea? get locationAndServiceArea =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'ratesAndPricing')
  RatesAndPricing? get ratesAndPricing => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoachCopyWith<Coach> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachCopyWith<$Res> {
  factory $CoachCopyWith(Coach value, $Res Function(Coach) then) =
      _$CoachCopyWithImpl<$Res, Coach>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? role,
      String? firstname,
      String? lastname,
      String? nationality,
      int? yearsOfExperience,
      String? email,
      String? coachRating,
      List<School>? schools,
      String? address1,
      String? coachSubscriptionprice,
      String? address2,
      String? institutionId,
      String? description,
      String? city,
      String? state,
      String? pincode,
      String? country,
      String? phoneNumber,
      String? gender,
      List<String> sportsgrounds,
      List<Certificate> certificates,
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
      @JsonKey(name: 'ratesAndPricing') RatesAndPricing? ratesAndPricing});

  $CoachingSpecialtiesCopyWith<$Res>? get coachingSpecialties;
  $QualificationsAndCertificationsCopyWith<$Res>?
      get qualificationsAndCertifications;
  $BiographyAndBackgroundCopyWith<$Res>? get biographyAndBackground;
  $AvailabilityAndScheduleCopyWith<$Res>? get availabilityAndSchedule;
  $LocationAndServiceAreaCopyWith<$Res>? get locationAndServiceArea;
  $RatesAndPricingCopyWith<$Res>? get ratesAndPricing;
}

/// @nodoc
class _$CoachCopyWithImpl<$Res, $Val extends Coach>
    implements $CoachCopyWith<$Res> {
  _$CoachCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? role = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? nationality = freezed,
    Object? yearsOfExperience = freezed,
    Object? email = freezed,
    Object? coachRating = freezed,
    Object? schools = freezed,
    Object? address1 = freezed,
    Object? coachSubscriptionprice = freezed,
    Object? address2 = freezed,
    Object? institutionId = freezed,
    Object? description = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? pincode = freezed,
    Object? country = freezed,
    Object? phoneNumber = freezed,
    Object? gender = freezed,
    Object? sportsgrounds = null,
    Object? certificates = null,
    Object? coachingSpecialties = freezed,
    Object? qualificationsAndCertifications = freezed,
    Object? biographyAndBackground = freezed,
    Object? availabilityAndSchedule = freezed,
    Object? locationAndServiceArea = freezed,
    Object? ratesAndPricing = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      firstname: freezed == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: freezed == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
      nationality: freezed == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      yearsOfExperience: freezed == yearsOfExperience
          ? _value.yearsOfExperience
          : yearsOfExperience // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      coachRating: freezed == coachRating
          ? _value.coachRating
          : coachRating // ignore: cast_nullable_to_non_nullable
              as String?,
      schools: freezed == schools
          ? _value.schools
          : schools // ignore: cast_nullable_to_non_nullable
              as List<School>?,
      address1: freezed == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      coachSubscriptionprice: freezed == coachSubscriptionprice
          ? _value.coachSubscriptionprice
          : coachSubscriptionprice // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      institutionId: freezed == institutionId
          ? _value.institutionId
          : institutionId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      pincode: freezed == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      sportsgrounds: null == sportsgrounds
          ? _value.sportsgrounds
          : sportsgrounds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      certificates: null == certificates
          ? _value.certificates
          : certificates // ignore: cast_nullable_to_non_nullable
              as List<Certificate>,
      coachingSpecialties: freezed == coachingSpecialties
          ? _value.coachingSpecialties
          : coachingSpecialties // ignore: cast_nullable_to_non_nullable
              as CoachingSpecialties?,
      qualificationsAndCertifications: freezed ==
              qualificationsAndCertifications
          ? _value.qualificationsAndCertifications
          : qualificationsAndCertifications // ignore: cast_nullable_to_non_nullable
              as QualificationsAndCertifications?,
      biographyAndBackground: freezed == biographyAndBackground
          ? _value.biographyAndBackground
          : biographyAndBackground // ignore: cast_nullable_to_non_nullable
              as BiographyAndBackground?,
      availabilityAndSchedule: freezed == availabilityAndSchedule
          ? _value.availabilityAndSchedule
          : availabilityAndSchedule // ignore: cast_nullable_to_non_nullable
              as AvailabilityAndSchedule?,
      locationAndServiceArea: freezed == locationAndServiceArea
          ? _value.locationAndServiceArea
          : locationAndServiceArea // ignore: cast_nullable_to_non_nullable
              as LocationAndServiceArea?,
      ratesAndPricing: freezed == ratesAndPricing
          ? _value.ratesAndPricing
          : ratesAndPricing // ignore: cast_nullable_to_non_nullable
              as RatesAndPricing?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoachingSpecialtiesCopyWith<$Res>? get coachingSpecialties {
    if (_value.coachingSpecialties == null) {
      return null;
    }

    return $CoachingSpecialtiesCopyWith<$Res>(_value.coachingSpecialties!,
        (value) {
      return _then(_value.copyWith(coachingSpecialties: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QualificationsAndCertificationsCopyWith<$Res>?
      get qualificationsAndCertifications {
    if (_value.qualificationsAndCertifications == null) {
      return null;
    }

    return $QualificationsAndCertificationsCopyWith<$Res>(
        _value.qualificationsAndCertifications!, (value) {
      return _then(
          _value.copyWith(qualificationsAndCertifications: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BiographyAndBackgroundCopyWith<$Res>? get biographyAndBackground {
    if (_value.biographyAndBackground == null) {
      return null;
    }

    return $BiographyAndBackgroundCopyWith<$Res>(_value.biographyAndBackground!,
        (value) {
      return _then(_value.copyWith(biographyAndBackground: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AvailabilityAndScheduleCopyWith<$Res>? get availabilityAndSchedule {
    if (_value.availabilityAndSchedule == null) {
      return null;
    }

    return $AvailabilityAndScheduleCopyWith<$Res>(
        _value.availabilityAndSchedule!, (value) {
      return _then(_value.copyWith(availabilityAndSchedule: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationAndServiceAreaCopyWith<$Res>? get locationAndServiceArea {
    if (_value.locationAndServiceArea == null) {
      return null;
    }

    return $LocationAndServiceAreaCopyWith<$Res>(_value.locationAndServiceArea!,
        (value) {
      return _then(_value.copyWith(locationAndServiceArea: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RatesAndPricingCopyWith<$Res>? get ratesAndPricing {
    if (_value.ratesAndPricing == null) {
      return null;
    }

    return $RatesAndPricingCopyWith<$Res>(_value.ratesAndPricing!, (value) {
      return _then(_value.copyWith(ratesAndPricing: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoachImplCopyWith<$Res> implements $CoachCopyWith<$Res> {
  factory _$$CoachImplCopyWith(
          _$CoachImpl value, $Res Function(_$CoachImpl) then) =
      __$$CoachImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? role,
      String? firstname,
      String? lastname,
      String? nationality,
      int? yearsOfExperience,
      String? email,
      String? coachRating,
      List<School>? schools,
      String? address1,
      String? coachSubscriptionprice,
      String? address2,
      String? institutionId,
      String? description,
      String? city,
      String? state,
      String? pincode,
      String? country,
      String? phoneNumber,
      String? gender,
      List<String> sportsgrounds,
      List<Certificate> certificates,
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
      @JsonKey(name: 'ratesAndPricing') RatesAndPricing? ratesAndPricing});

  @override
  $CoachingSpecialtiesCopyWith<$Res>? get coachingSpecialties;
  @override
  $QualificationsAndCertificationsCopyWith<$Res>?
      get qualificationsAndCertifications;
  @override
  $BiographyAndBackgroundCopyWith<$Res>? get biographyAndBackground;
  @override
  $AvailabilityAndScheduleCopyWith<$Res>? get availabilityAndSchedule;
  @override
  $LocationAndServiceAreaCopyWith<$Res>? get locationAndServiceArea;
  @override
  $RatesAndPricingCopyWith<$Res>? get ratesAndPricing;
}

/// @nodoc
class __$$CoachImplCopyWithImpl<$Res>
    extends _$CoachCopyWithImpl<$Res, _$CoachImpl>
    implements _$$CoachImplCopyWith<$Res> {
  __$$CoachImplCopyWithImpl(
      _$CoachImpl _value, $Res Function(_$CoachImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? role = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? nationality = freezed,
    Object? yearsOfExperience = freezed,
    Object? email = freezed,
    Object? coachRating = freezed,
    Object? schools = freezed,
    Object? address1 = freezed,
    Object? coachSubscriptionprice = freezed,
    Object? address2 = freezed,
    Object? institutionId = freezed,
    Object? description = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? pincode = freezed,
    Object? country = freezed,
    Object? phoneNumber = freezed,
    Object? gender = freezed,
    Object? sportsgrounds = null,
    Object? certificates = null,
    Object? coachingSpecialties = freezed,
    Object? qualificationsAndCertifications = freezed,
    Object? biographyAndBackground = freezed,
    Object? availabilityAndSchedule = freezed,
    Object? locationAndServiceArea = freezed,
    Object? ratesAndPricing = freezed,
  }) {
    return _then(_$CoachImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      firstname: freezed == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: freezed == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
      nationality: freezed == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      yearsOfExperience: freezed == yearsOfExperience
          ? _value.yearsOfExperience
          : yearsOfExperience // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      coachRating: freezed == coachRating
          ? _value.coachRating
          : coachRating // ignore: cast_nullable_to_non_nullable
              as String?,
      schools: freezed == schools
          ? _value._schools
          : schools // ignore: cast_nullable_to_non_nullable
              as List<School>?,
      address1: freezed == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      coachSubscriptionprice: freezed == coachSubscriptionprice
          ? _value.coachSubscriptionprice
          : coachSubscriptionprice // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      institutionId: freezed == institutionId
          ? _value.institutionId
          : institutionId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      pincode: freezed == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      sportsgrounds: null == sportsgrounds
          ? _value._sportsgrounds
          : sportsgrounds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      certificates: null == certificates
          ? _value._certificates
          : certificates // ignore: cast_nullable_to_non_nullable
              as List<Certificate>,
      coachingSpecialties: freezed == coachingSpecialties
          ? _value.coachingSpecialties
          : coachingSpecialties // ignore: cast_nullable_to_non_nullable
              as CoachingSpecialties?,
      qualificationsAndCertifications: freezed ==
              qualificationsAndCertifications
          ? _value.qualificationsAndCertifications
          : qualificationsAndCertifications // ignore: cast_nullable_to_non_nullable
              as QualificationsAndCertifications?,
      biographyAndBackground: freezed == biographyAndBackground
          ? _value.biographyAndBackground
          : biographyAndBackground // ignore: cast_nullable_to_non_nullable
              as BiographyAndBackground?,
      availabilityAndSchedule: freezed == availabilityAndSchedule
          ? _value.availabilityAndSchedule
          : availabilityAndSchedule // ignore: cast_nullable_to_non_nullable
              as AvailabilityAndSchedule?,
      locationAndServiceArea: freezed == locationAndServiceArea
          ? _value.locationAndServiceArea
          : locationAndServiceArea // ignore: cast_nullable_to_non_nullable
              as LocationAndServiceArea?,
      ratesAndPricing: freezed == ratesAndPricing
          ? _value.ratesAndPricing
          : ratesAndPricing // ignore: cast_nullable_to_non_nullable
              as RatesAndPricing?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoachImpl implements _Coach {
  const _$CoachImpl(
      {@JsonKey(name: '_id') this.id,
      this.role,
      this.firstname,
      this.lastname,
      this.nationality,
      this.yearsOfExperience,
      this.email,
      this.coachRating = "0",
      final List<School>? schools = const [],
      this.address1,
      this.coachSubscriptionprice = "2500",
      this.address2,
      this.institutionId,
      this.description,
      this.city,
      this.state,
      this.pincode,
      this.country,
      this.phoneNumber,
      this.gender,
      final List<String> sportsgrounds = const [],
      final List<Certificate> certificates = const [],
      @JsonKey(name: 'coachingSpecialties') this.coachingSpecialties,
      @JsonKey(name: 'qualificationsAndCertifications')
      this.qualificationsAndCertifications,
      @JsonKey(name: 'biographyAndBackground') this.biographyAndBackground,
      @JsonKey(name: 'availabilityAndSchedule') this.availabilityAndSchedule,
      @JsonKey(name: 'locationAndServiceArea') this.locationAndServiceArea,
      @JsonKey(name: 'ratesAndPricing') this.ratesAndPricing})
      : _schools = schools,
        _sportsgrounds = sportsgrounds,
        _certificates = certificates;

  factory _$CoachImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoachImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? role;
  @override
  final String? firstname;
  @override
  final String? lastname;
  @override
  final String? nationality;
  @override
  final int? yearsOfExperience;
  @override
  final String? email;
  @override
  @JsonKey()
  final String? coachRating;
  final List<School>? _schools;
  @override
  @JsonKey()
  List<School>? get schools {
    final value = _schools;
    if (value == null) return null;
    if (_schools is EqualUnmodifiableListView) return _schools;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? address1;
  @override
  @JsonKey()
  final String? coachSubscriptionprice;
  @override
  final String? address2;
  @override
  final String? institutionId;
  @override
  final String? description;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? pincode;
  @override
  final String? country;
  @override
  final String? phoneNumber;
  @override
  final String? gender;
  final List<String> _sportsgrounds;
  @override
  @JsonKey()
  List<String> get sportsgrounds {
    if (_sportsgrounds is EqualUnmodifiableListView) return _sportsgrounds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sportsgrounds);
  }

  final List<Certificate> _certificates;
  @override
  @JsonKey()
  List<Certificate> get certificates {
    if (_certificates is EqualUnmodifiableListView) return _certificates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_certificates);
  }

  @override
  @JsonKey(name: 'coachingSpecialties')
  final CoachingSpecialties? coachingSpecialties;
  @override
  @JsonKey(name: 'qualificationsAndCertifications')
  final QualificationsAndCertifications? qualificationsAndCertifications;
  @override
  @JsonKey(name: 'biographyAndBackground')
  final BiographyAndBackground? biographyAndBackground;
  @override
  @JsonKey(name: 'availabilityAndSchedule')
  final AvailabilityAndSchedule? availabilityAndSchedule;
  @override
  @JsonKey(name: 'locationAndServiceArea')
  final LocationAndServiceArea? locationAndServiceArea;
  @override
  @JsonKey(name: 'ratesAndPricing')
  final RatesAndPricing? ratesAndPricing;

  @override
  String toString() {
    return 'Coach(id: $id, role: $role, firstname: $firstname, lastname: $lastname, nationality: $nationality, yearsOfExperience: $yearsOfExperience, email: $email, coachRating: $coachRating, schools: $schools, address1: $address1, coachSubscriptionprice: $coachSubscriptionprice, address2: $address2, institutionId: $institutionId, description: $description, city: $city, state: $state, pincode: $pincode, country: $country, phoneNumber: $phoneNumber, gender: $gender, sportsgrounds: $sportsgrounds, certificates: $certificates, coachingSpecialties: $coachingSpecialties, qualificationsAndCertifications: $qualificationsAndCertifications, biographyAndBackground: $biographyAndBackground, availabilityAndSchedule: $availabilityAndSchedule, locationAndServiceArea: $locationAndServiceArea, ratesAndPricing: $ratesAndPricing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.nationality, nationality) ||
                other.nationality == nationality) &&
            (identical(other.yearsOfExperience, yearsOfExperience) ||
                other.yearsOfExperience == yearsOfExperience) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.coachRating, coachRating) ||
                other.coachRating == coachRating) &&
            const DeepCollectionEquality().equals(other._schools, _schools) &&
            (identical(other.address1, address1) ||
                other.address1 == address1) &&
            (identical(other.coachSubscriptionprice, coachSubscriptionprice) ||
                other.coachSubscriptionprice == coachSubscriptionprice) &&
            (identical(other.address2, address2) ||
                other.address2 == address2) &&
            (identical(other.institutionId, institutionId) ||
                other.institutionId == institutionId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.pincode, pincode) || other.pincode == pincode) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            const DeepCollectionEquality()
                .equals(other._sportsgrounds, _sportsgrounds) &&
            const DeepCollectionEquality()
                .equals(other._certificates, _certificates) &&
            (identical(other.coachingSpecialties, coachingSpecialties) ||
                other.coachingSpecialties == coachingSpecialties) &&
            (identical(other.qualificationsAndCertifications,
                    qualificationsAndCertifications) ||
                other.qualificationsAndCertifications ==
                    qualificationsAndCertifications) &&
            (identical(other.biographyAndBackground, biographyAndBackground) ||
                other.biographyAndBackground == biographyAndBackground) &&
            (identical(
                    other.availabilityAndSchedule, availabilityAndSchedule) ||
                other.availabilityAndSchedule == availabilityAndSchedule) &&
            (identical(other.locationAndServiceArea, locationAndServiceArea) ||
                other.locationAndServiceArea == locationAndServiceArea) &&
            (identical(other.ratesAndPricing, ratesAndPricing) ||
                other.ratesAndPricing == ratesAndPricing));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        role,
        firstname,
        lastname,
        nationality,
        yearsOfExperience,
        email,
        coachRating,
        const DeepCollectionEquality().hash(_schools),
        address1,
        coachSubscriptionprice,
        address2,
        institutionId,
        description,
        city,
        state,
        pincode,
        country,
        phoneNumber,
        gender,
        const DeepCollectionEquality().hash(_sportsgrounds),
        const DeepCollectionEquality().hash(_certificates),
        coachingSpecialties,
        qualificationsAndCertifications,
        biographyAndBackground,
        availabilityAndSchedule,
        locationAndServiceArea,
        ratesAndPricing
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachImplCopyWith<_$CoachImpl> get copyWith =>
      __$$CoachImplCopyWithImpl<_$CoachImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoachImplToJson(
      this,
    );
  }
}

abstract class _Coach implements Coach {
  const factory _Coach(
      {@JsonKey(name: '_id') final String? id,
      final String? role,
      final String? firstname,
      final String? lastname,
      final String? nationality,
      final int? yearsOfExperience,
      final String? email,
      final String? coachRating,
      final List<School>? schools,
      final String? address1,
      final String? coachSubscriptionprice,
      final String? address2,
      final String? institutionId,
      final String? description,
      final String? city,
      final String? state,
      final String? pincode,
      final String? country,
      final String? phoneNumber,
      final String? gender,
      final List<String> sportsgrounds,
      final List<Certificate> certificates,
      @JsonKey(name: 'coachingSpecialties')
      final CoachingSpecialties? coachingSpecialties,
      @JsonKey(name: 'qualificationsAndCertifications')
      final QualificationsAndCertifications? qualificationsAndCertifications,
      @JsonKey(name: 'biographyAndBackground')
      final BiographyAndBackground? biographyAndBackground,
      @JsonKey(name: 'availabilityAndSchedule')
      final AvailabilityAndSchedule? availabilityAndSchedule,
      @JsonKey(name: 'locationAndServiceArea')
      final LocationAndServiceArea? locationAndServiceArea,
      @JsonKey(name: 'ratesAndPricing')
      final RatesAndPricing? ratesAndPricing}) = _$CoachImpl;

  factory _Coach.fromJson(Map<String, dynamic> json) = _$CoachImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get role;
  @override
  String? get firstname;
  @override
  String? get lastname;
  @override
  String? get nationality;
  @override
  int? get yearsOfExperience;
  @override
  String? get email;
  @override
  String? get coachRating;
  @override
  List<School>? get schools;
  @override
  String? get address1;
  @override
  String? get coachSubscriptionprice;
  @override
  String? get address2;
  @override
  String? get institutionId;
  @override
  String? get description;
  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get pincode;
  @override
  String? get country;
  @override
  String? get phoneNumber;
  @override
  String? get gender;
  @override
  List<String> get sportsgrounds;
  @override
  List<Certificate> get certificates;
  @override
  @JsonKey(name: 'coachingSpecialties')
  CoachingSpecialties? get coachingSpecialties;
  @override
  @JsonKey(name: 'qualificationsAndCertifications')
  QualificationsAndCertifications? get qualificationsAndCertifications;
  @override
  @JsonKey(name: 'biographyAndBackground')
  BiographyAndBackground? get biographyAndBackground;
  @override
  @JsonKey(name: 'availabilityAndSchedule')
  AvailabilityAndSchedule? get availabilityAndSchedule;
  @override
  @JsonKey(name: 'locationAndServiceArea')
  LocationAndServiceArea? get locationAndServiceArea;
  @override
  @JsonKey(name: 'ratesAndPricing')
  RatesAndPricing? get ratesAndPricing;
  @override
  @JsonKey(ignore: true)
  _$$CoachImplCopyWith<_$CoachImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Certificate _$CertificateFromJson(Map<String, dynamic> json) {
  return _Certificate.fromJson(json);
}

/// @nodoc
mixin _$Certificate {
  String get certificateName => throw _privateConstructorUsedError;
  String get organizationName => throw _privateConstructorUsedError;
  String get certificateUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CertificateCopyWith<Certificate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CertificateCopyWith<$Res> {
  factory $CertificateCopyWith(
          Certificate value, $Res Function(Certificate) then) =
      _$CertificateCopyWithImpl<$Res, Certificate>;
  @useResult
  $Res call(
      {String certificateName, String organizationName, String certificateUrl});
}

/// @nodoc
class _$CertificateCopyWithImpl<$Res, $Val extends Certificate>
    implements $CertificateCopyWith<$Res> {
  _$CertificateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? certificateName = null,
    Object? organizationName = null,
    Object? certificateUrl = null,
  }) {
    return _then(_value.copyWith(
      certificateName: null == certificateName
          ? _value.certificateName
          : certificateName // ignore: cast_nullable_to_non_nullable
              as String,
      organizationName: null == organizationName
          ? _value.organizationName
          : organizationName // ignore: cast_nullable_to_non_nullable
              as String,
      certificateUrl: null == certificateUrl
          ? _value.certificateUrl
          : certificateUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CertificateImplCopyWith<$Res>
    implements $CertificateCopyWith<$Res> {
  factory _$$CertificateImplCopyWith(
          _$CertificateImpl value, $Res Function(_$CertificateImpl) then) =
      __$$CertificateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String certificateName, String organizationName, String certificateUrl});
}

/// @nodoc
class __$$CertificateImplCopyWithImpl<$Res>
    extends _$CertificateCopyWithImpl<$Res, _$CertificateImpl>
    implements _$$CertificateImplCopyWith<$Res> {
  __$$CertificateImplCopyWithImpl(
      _$CertificateImpl _value, $Res Function(_$CertificateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? certificateName = null,
    Object? organizationName = null,
    Object? certificateUrl = null,
  }) {
    return _then(_$CertificateImpl(
      certificateName: null == certificateName
          ? _value.certificateName
          : certificateName // ignore: cast_nullable_to_non_nullable
              as String,
      organizationName: null == organizationName
          ? _value.organizationName
          : organizationName // ignore: cast_nullable_to_non_nullable
              as String,
      certificateUrl: null == certificateUrl
          ? _value.certificateUrl
          : certificateUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CertificateImpl implements _Certificate {
  const _$CertificateImpl(
      {required this.certificateName,
      required this.organizationName,
      required this.certificateUrl});

  factory _$CertificateImpl.fromJson(Map<String, dynamic> json) =>
      _$$CertificateImplFromJson(json);

  @override
  final String certificateName;
  @override
  final String organizationName;
  @override
  final String certificateUrl;

  @override
  String toString() {
    return 'Certificate(certificateName: $certificateName, organizationName: $organizationName, certificateUrl: $certificateUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CertificateImpl &&
            (identical(other.certificateName, certificateName) ||
                other.certificateName == certificateName) &&
            (identical(other.organizationName, organizationName) ||
                other.organizationName == organizationName) &&
            (identical(other.certificateUrl, certificateUrl) ||
                other.certificateUrl == certificateUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, certificateName, organizationName, certificateUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CertificateImplCopyWith<_$CertificateImpl> get copyWith =>
      __$$CertificateImplCopyWithImpl<_$CertificateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CertificateImplToJson(
      this,
    );
  }
}

abstract class _Certificate implements Certificate {
  const factory _Certificate(
      {required final String certificateName,
      required final String organizationName,
      required final String certificateUrl}) = _$CertificateImpl;

  factory _Certificate.fromJson(Map<String, dynamic> json) =
      _$CertificateImpl.fromJson;

  @override
  String get certificateName;
  @override
  String get organizationName;
  @override
  String get certificateUrl;
  @override
  @JsonKey(ignore: true)
  _$$CertificateImplCopyWith<_$CertificateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CoachingSpecialties _$CoachingSpecialtiesFromJson(Map<String, dynamic> json) {
  return _CoachingSpecialties.fromJson(json);
}

/// @nodoc
mixin _$CoachingSpecialties {
  List<String> get sports => throw _privateConstructorUsedError;
  List<String> get levels => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoachingSpecialtiesCopyWith<CoachingSpecialties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachingSpecialtiesCopyWith<$Res> {
  factory $CoachingSpecialtiesCopyWith(
          CoachingSpecialties value, $Res Function(CoachingSpecialties) then) =
      _$CoachingSpecialtiesCopyWithImpl<$Res, CoachingSpecialties>;
  @useResult
  $Res call({List<String> sports, List<String> levels});
}

/// @nodoc
class _$CoachingSpecialtiesCopyWithImpl<$Res, $Val extends CoachingSpecialties>
    implements $CoachingSpecialtiesCopyWith<$Res> {
  _$CoachingSpecialtiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sports = null,
    Object? levels = null,
  }) {
    return _then(_value.copyWith(
      sports: null == sports
          ? _value.sports
          : sports // ignore: cast_nullable_to_non_nullable
              as List<String>,
      levels: null == levels
          ? _value.levels
          : levels // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoachingSpecialtiesImplCopyWith<$Res>
    implements $CoachingSpecialtiesCopyWith<$Res> {
  factory _$$CoachingSpecialtiesImplCopyWith(_$CoachingSpecialtiesImpl value,
          $Res Function(_$CoachingSpecialtiesImpl) then) =
      __$$CoachingSpecialtiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> sports, List<String> levels});
}

/// @nodoc
class __$$CoachingSpecialtiesImplCopyWithImpl<$Res>
    extends _$CoachingSpecialtiesCopyWithImpl<$Res, _$CoachingSpecialtiesImpl>
    implements _$$CoachingSpecialtiesImplCopyWith<$Res> {
  __$$CoachingSpecialtiesImplCopyWithImpl(_$CoachingSpecialtiesImpl _value,
      $Res Function(_$CoachingSpecialtiesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sports = null,
    Object? levels = null,
  }) {
    return _then(_$CoachingSpecialtiesImpl(
      sports: null == sports
          ? _value._sports
          : sports // ignore: cast_nullable_to_non_nullable
              as List<String>,
      levels: null == levels
          ? _value._levels
          : levels // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoachingSpecialtiesImpl implements _CoachingSpecialties {
  const _$CoachingSpecialtiesImpl(
      {required final List<String> sports, required final List<String> levels})
      : _sports = sports,
        _levels = levels;

  factory _$CoachingSpecialtiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoachingSpecialtiesImplFromJson(json);

  final List<String> _sports;
  @override
  List<String> get sports {
    if (_sports is EqualUnmodifiableListView) return _sports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sports);
  }

  final List<String> _levels;
  @override
  List<String> get levels {
    if (_levels is EqualUnmodifiableListView) return _levels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_levels);
  }

  @override
  String toString() {
    return 'CoachingSpecialties(sports: $sports, levels: $levels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachingSpecialtiesImpl &&
            const DeepCollectionEquality().equals(other._sports, _sports) &&
            const DeepCollectionEquality().equals(other._levels, _levels));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_sports),
      const DeepCollectionEquality().hash(_levels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachingSpecialtiesImplCopyWith<_$CoachingSpecialtiesImpl> get copyWith =>
      __$$CoachingSpecialtiesImplCopyWithImpl<_$CoachingSpecialtiesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoachingSpecialtiesImplToJson(
      this,
    );
  }
}

abstract class _CoachingSpecialties implements CoachingSpecialties {
  const factory _CoachingSpecialties(
      {required final List<String> sports,
      required final List<String> levels}) = _$CoachingSpecialtiesImpl;

  factory _CoachingSpecialties.fromJson(Map<String, dynamic> json) =
      _$CoachingSpecialtiesImpl.fromJson;

  @override
  List<String> get sports;
  @override
  List<String> get levels;
  @override
  @JsonKey(ignore: true)
  _$$CoachingSpecialtiesImplCopyWith<_$CoachingSpecialtiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QualificationsAndCertifications _$QualificationsAndCertificationsFromJson(
    Map<String, dynamic> json) {
  return _QualificationsAndCertifications.fromJson(json);
}

/// @nodoc
mixin _$QualificationsAndCertifications {
  List<String> get academicQualifications => throw _privateConstructorUsedError;
  List<String> get professionalCertifications =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QualificationsAndCertificationsCopyWith<QualificationsAndCertifications>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QualificationsAndCertificationsCopyWith<$Res> {
  factory $QualificationsAndCertificationsCopyWith(
          QualificationsAndCertifications value,
          $Res Function(QualificationsAndCertifications) then) =
      _$QualificationsAndCertificationsCopyWithImpl<$Res,
          QualificationsAndCertifications>;
  @useResult
  $Res call(
      {List<String> academicQualifications,
      List<String> professionalCertifications});
}

/// @nodoc
class _$QualificationsAndCertificationsCopyWithImpl<$Res,
        $Val extends QualificationsAndCertifications>
    implements $QualificationsAndCertificationsCopyWith<$Res> {
  _$QualificationsAndCertificationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? academicQualifications = null,
    Object? professionalCertifications = null,
  }) {
    return _then(_value.copyWith(
      academicQualifications: null == academicQualifications
          ? _value.academicQualifications
          : academicQualifications // ignore: cast_nullable_to_non_nullable
              as List<String>,
      professionalCertifications: null == professionalCertifications
          ? _value.professionalCertifications
          : professionalCertifications // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QualificationsAndCertificationsImplCopyWith<$Res>
    implements $QualificationsAndCertificationsCopyWith<$Res> {
  factory _$$QualificationsAndCertificationsImplCopyWith(
          _$QualificationsAndCertificationsImpl value,
          $Res Function(_$QualificationsAndCertificationsImpl) then) =
      __$$QualificationsAndCertificationsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> academicQualifications,
      List<String> professionalCertifications});
}

/// @nodoc
class __$$QualificationsAndCertificationsImplCopyWithImpl<$Res>
    extends _$QualificationsAndCertificationsCopyWithImpl<$Res,
        _$QualificationsAndCertificationsImpl>
    implements _$$QualificationsAndCertificationsImplCopyWith<$Res> {
  __$$QualificationsAndCertificationsImplCopyWithImpl(
      _$QualificationsAndCertificationsImpl _value,
      $Res Function(_$QualificationsAndCertificationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? academicQualifications = null,
    Object? professionalCertifications = null,
  }) {
    return _then(_$QualificationsAndCertificationsImpl(
      academicQualifications: null == academicQualifications
          ? _value._academicQualifications
          : academicQualifications // ignore: cast_nullable_to_non_nullable
              as List<String>,
      professionalCertifications: null == professionalCertifications
          ? _value._professionalCertifications
          : professionalCertifications // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QualificationsAndCertificationsImpl
    implements _QualificationsAndCertifications {
  const _$QualificationsAndCertificationsImpl(
      {required final List<String> academicQualifications,
      required final List<String> professionalCertifications})
      : _academicQualifications = academicQualifications,
        _professionalCertifications = professionalCertifications;

  factory _$QualificationsAndCertificationsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$QualificationsAndCertificationsImplFromJson(json);

  final List<String> _academicQualifications;
  @override
  List<String> get academicQualifications {
    if (_academicQualifications is EqualUnmodifiableListView)
      return _academicQualifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_academicQualifications);
  }

  final List<String> _professionalCertifications;
  @override
  List<String> get professionalCertifications {
    if (_professionalCertifications is EqualUnmodifiableListView)
      return _professionalCertifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_professionalCertifications);
  }

  @override
  String toString() {
    return 'QualificationsAndCertifications(academicQualifications: $academicQualifications, professionalCertifications: $professionalCertifications)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QualificationsAndCertificationsImpl &&
            const DeepCollectionEquality().equals(
                other._academicQualifications, _academicQualifications) &&
            const DeepCollectionEquality().equals(
                other._professionalCertifications,
                _professionalCertifications));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_academicQualifications),
      const DeepCollectionEquality().hash(_professionalCertifications));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QualificationsAndCertificationsImplCopyWith<
          _$QualificationsAndCertificationsImpl>
      get copyWith => __$$QualificationsAndCertificationsImplCopyWithImpl<
          _$QualificationsAndCertificationsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QualificationsAndCertificationsImplToJson(
      this,
    );
  }
}

abstract class _QualificationsAndCertifications
    implements QualificationsAndCertifications {
  const factory _QualificationsAndCertifications(
          {required final List<String> academicQualifications,
          required final List<String> professionalCertifications}) =
      _$QualificationsAndCertificationsImpl;

  factory _QualificationsAndCertifications.fromJson(Map<String, dynamic> json) =
      _$QualificationsAndCertificationsImpl.fromJson;

  @override
  List<String> get academicQualifications;
  @override
  List<String> get professionalCertifications;
  @override
  @JsonKey(ignore: true)
  _$$QualificationsAndCertificationsImplCopyWith<
          _$QualificationsAndCertificationsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BiographyAndBackground _$BiographyAndBackgroundFromJson(
    Map<String, dynamic> json) {
  return _BiographyAndBackground.fromJson(json);
}

/// @nodoc
mixin _$BiographyAndBackground {
  List<String> get achievements => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BiographyAndBackgroundCopyWith<BiographyAndBackground> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiographyAndBackgroundCopyWith<$Res> {
  factory $BiographyAndBackgroundCopyWith(BiographyAndBackground value,
          $Res Function(BiographyAndBackground) then) =
      _$BiographyAndBackgroundCopyWithImpl<$Res, BiographyAndBackground>;
  @useResult
  $Res call({List<String> achievements});
}

/// @nodoc
class _$BiographyAndBackgroundCopyWithImpl<$Res,
        $Val extends BiographyAndBackground>
    implements $BiographyAndBackgroundCopyWith<$Res> {
  _$BiographyAndBackgroundCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? achievements = null,
  }) {
    return _then(_value.copyWith(
      achievements: null == achievements
          ? _value.achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BiographyAndBackgroundImplCopyWith<$Res>
    implements $BiographyAndBackgroundCopyWith<$Res> {
  factory _$$BiographyAndBackgroundImplCopyWith(
          _$BiographyAndBackgroundImpl value,
          $Res Function(_$BiographyAndBackgroundImpl) then) =
      __$$BiographyAndBackgroundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> achievements});
}

/// @nodoc
class __$$BiographyAndBackgroundImplCopyWithImpl<$Res>
    extends _$BiographyAndBackgroundCopyWithImpl<$Res,
        _$BiographyAndBackgroundImpl>
    implements _$$BiographyAndBackgroundImplCopyWith<$Res> {
  __$$BiographyAndBackgroundImplCopyWithImpl(
      _$BiographyAndBackgroundImpl _value,
      $Res Function(_$BiographyAndBackgroundImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? achievements = null,
  }) {
    return _then(_$BiographyAndBackgroundImpl(
      achievements: null == achievements
          ? _value._achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BiographyAndBackgroundImpl implements _BiographyAndBackground {
  const _$BiographyAndBackgroundImpl({required final List<String> achievements})
      : _achievements = achievements;

  factory _$BiographyAndBackgroundImpl.fromJson(Map<String, dynamic> json) =>
      _$$BiographyAndBackgroundImplFromJson(json);

  final List<String> _achievements;
  @override
  List<String> get achievements {
    if (_achievements is EqualUnmodifiableListView) return _achievements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_achievements);
  }

  @override
  String toString() {
    return 'BiographyAndBackground(achievements: $achievements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BiographyAndBackgroundImpl &&
            const DeepCollectionEquality()
                .equals(other._achievements, _achievements));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_achievements));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BiographyAndBackgroundImplCopyWith<_$BiographyAndBackgroundImpl>
      get copyWith => __$$BiographyAndBackgroundImplCopyWithImpl<
          _$BiographyAndBackgroundImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BiographyAndBackgroundImplToJson(
      this,
    );
  }
}

abstract class _BiographyAndBackground implements BiographyAndBackground {
  const factory _BiographyAndBackground(
          {required final List<String> achievements}) =
      _$BiographyAndBackgroundImpl;

  factory _BiographyAndBackground.fromJson(Map<String, dynamic> json) =
      _$BiographyAndBackgroundImpl.fromJson;

  @override
  List<String> get achievements;
  @override
  @JsonKey(ignore: true)
  _$$BiographyAndBackgroundImplCopyWith<_$BiographyAndBackgroundImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AvailabilityAndSchedule _$AvailabilityAndScheduleFromJson(
    Map<String, dynamic> json) {
  return _AvailabilityAndSchedule.fromJson(json);
}

/// @nodoc
mixin _$AvailabilityAndSchedule {
  List<String> get daysAndTimes => throw _privateConstructorUsedError;
  List<String> get blockedDatesTimes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailabilityAndScheduleCopyWith<AvailabilityAndSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailabilityAndScheduleCopyWith<$Res> {
  factory $AvailabilityAndScheduleCopyWith(AvailabilityAndSchedule value,
          $Res Function(AvailabilityAndSchedule) then) =
      _$AvailabilityAndScheduleCopyWithImpl<$Res, AvailabilityAndSchedule>;
  @useResult
  $Res call({List<String> daysAndTimes, List<String> blockedDatesTimes});
}

/// @nodoc
class _$AvailabilityAndScheduleCopyWithImpl<$Res,
        $Val extends AvailabilityAndSchedule>
    implements $AvailabilityAndScheduleCopyWith<$Res> {
  _$AvailabilityAndScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? daysAndTimes = null,
    Object? blockedDatesTimes = null,
  }) {
    return _then(_value.copyWith(
      daysAndTimes: null == daysAndTimes
          ? _value.daysAndTimes
          : daysAndTimes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      blockedDatesTimes: null == blockedDatesTimes
          ? _value.blockedDatesTimes
          : blockedDatesTimes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvailabilityAndScheduleImplCopyWith<$Res>
    implements $AvailabilityAndScheduleCopyWith<$Res> {
  factory _$$AvailabilityAndScheduleImplCopyWith(
          _$AvailabilityAndScheduleImpl value,
          $Res Function(_$AvailabilityAndScheduleImpl) then) =
      __$$AvailabilityAndScheduleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> daysAndTimes, List<String> blockedDatesTimes});
}

/// @nodoc
class __$$AvailabilityAndScheduleImplCopyWithImpl<$Res>
    extends _$AvailabilityAndScheduleCopyWithImpl<$Res,
        _$AvailabilityAndScheduleImpl>
    implements _$$AvailabilityAndScheduleImplCopyWith<$Res> {
  __$$AvailabilityAndScheduleImplCopyWithImpl(
      _$AvailabilityAndScheduleImpl _value,
      $Res Function(_$AvailabilityAndScheduleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? daysAndTimes = null,
    Object? blockedDatesTimes = null,
  }) {
    return _then(_$AvailabilityAndScheduleImpl(
      daysAndTimes: null == daysAndTimes
          ? _value._daysAndTimes
          : daysAndTimes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      blockedDatesTimes: null == blockedDatesTimes
          ? _value._blockedDatesTimes
          : blockedDatesTimes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailabilityAndScheduleImpl implements _AvailabilityAndSchedule {
  const _$AvailabilityAndScheduleImpl(
      {required final List<String> daysAndTimes,
      required final List<String> blockedDatesTimes})
      : _daysAndTimes = daysAndTimes,
        _blockedDatesTimes = blockedDatesTimes;

  factory _$AvailabilityAndScheduleImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailabilityAndScheduleImplFromJson(json);

  final List<String> _daysAndTimes;
  @override
  List<String> get daysAndTimes {
    if (_daysAndTimes is EqualUnmodifiableListView) return _daysAndTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_daysAndTimes);
  }

  final List<String> _blockedDatesTimes;
  @override
  List<String> get blockedDatesTimes {
    if (_blockedDatesTimes is EqualUnmodifiableListView)
      return _blockedDatesTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blockedDatesTimes);
  }

  @override
  String toString() {
    return 'AvailabilityAndSchedule(daysAndTimes: $daysAndTimes, blockedDatesTimes: $blockedDatesTimes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailabilityAndScheduleImpl &&
            const DeepCollectionEquality()
                .equals(other._daysAndTimes, _daysAndTimes) &&
            const DeepCollectionEquality()
                .equals(other._blockedDatesTimes, _blockedDatesTimes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_daysAndTimes),
      const DeepCollectionEquality().hash(_blockedDatesTimes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailabilityAndScheduleImplCopyWith<_$AvailabilityAndScheduleImpl>
      get copyWith => __$$AvailabilityAndScheduleImplCopyWithImpl<
          _$AvailabilityAndScheduleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailabilityAndScheduleImplToJson(
      this,
    );
  }
}

abstract class _AvailabilityAndSchedule implements AvailabilityAndSchedule {
  const factory _AvailabilityAndSchedule(
          {required final List<String> daysAndTimes,
          required final List<String> blockedDatesTimes}) =
      _$AvailabilityAndScheduleImpl;

  factory _AvailabilityAndSchedule.fromJson(Map<String, dynamic> json) =
      _$AvailabilityAndScheduleImpl.fromJson;

  @override
  List<String> get daysAndTimes;
  @override
  List<String> get blockedDatesTimes;
  @override
  @JsonKey(ignore: true)
  _$$AvailabilityAndScheduleImplCopyWith<_$AvailabilityAndScheduleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LocationAndServiceArea _$LocationAndServiceAreaFromJson(
    Map<String, dynamic> json) {
  return _LocationAndServiceArea.fromJson(json);
}

/// @nodoc
mixin _$LocationAndServiceArea {
  List<String> get primaryLocations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationAndServiceAreaCopyWith<LocationAndServiceArea> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationAndServiceAreaCopyWith<$Res> {
  factory $LocationAndServiceAreaCopyWith(LocationAndServiceArea value,
          $Res Function(LocationAndServiceArea) then) =
      _$LocationAndServiceAreaCopyWithImpl<$Res, LocationAndServiceArea>;
  @useResult
  $Res call({List<String> primaryLocations});
}

/// @nodoc
class _$LocationAndServiceAreaCopyWithImpl<$Res,
        $Val extends LocationAndServiceArea>
    implements $LocationAndServiceAreaCopyWith<$Res> {
  _$LocationAndServiceAreaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primaryLocations = null,
  }) {
    return _then(_value.copyWith(
      primaryLocations: null == primaryLocations
          ? _value.primaryLocations
          : primaryLocations // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationAndServiceAreaImplCopyWith<$Res>
    implements $LocationAndServiceAreaCopyWith<$Res> {
  factory _$$LocationAndServiceAreaImplCopyWith(
          _$LocationAndServiceAreaImpl value,
          $Res Function(_$LocationAndServiceAreaImpl) then) =
      __$$LocationAndServiceAreaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> primaryLocations});
}

/// @nodoc
class __$$LocationAndServiceAreaImplCopyWithImpl<$Res>
    extends _$LocationAndServiceAreaCopyWithImpl<$Res,
        _$LocationAndServiceAreaImpl>
    implements _$$LocationAndServiceAreaImplCopyWith<$Res> {
  __$$LocationAndServiceAreaImplCopyWithImpl(
      _$LocationAndServiceAreaImpl _value,
      $Res Function(_$LocationAndServiceAreaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primaryLocations = null,
  }) {
    return _then(_$LocationAndServiceAreaImpl(
      primaryLocations: null == primaryLocations
          ? _value._primaryLocations
          : primaryLocations // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationAndServiceAreaImpl implements _LocationAndServiceArea {
  const _$LocationAndServiceAreaImpl(
      {required final List<String> primaryLocations})
      : _primaryLocations = primaryLocations;

  factory _$LocationAndServiceAreaImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationAndServiceAreaImplFromJson(json);

  final List<String> _primaryLocations;
  @override
  List<String> get primaryLocations {
    if (_primaryLocations is EqualUnmodifiableListView)
      return _primaryLocations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_primaryLocations);
  }

  @override
  String toString() {
    return 'LocationAndServiceArea(primaryLocations: $primaryLocations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationAndServiceAreaImpl &&
            const DeepCollectionEquality()
                .equals(other._primaryLocations, _primaryLocations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_primaryLocations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationAndServiceAreaImplCopyWith<_$LocationAndServiceAreaImpl>
      get copyWith => __$$LocationAndServiceAreaImplCopyWithImpl<
          _$LocationAndServiceAreaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationAndServiceAreaImplToJson(
      this,
    );
  }
}

abstract class _LocationAndServiceArea implements LocationAndServiceArea {
  const factory _LocationAndServiceArea(
          {required final List<String> primaryLocations}) =
      _$LocationAndServiceAreaImpl;

  factory _LocationAndServiceArea.fromJson(Map<String, dynamic> json) =
      _$LocationAndServiceAreaImpl.fromJson;

  @override
  List<String> get primaryLocations;
  @override
  @JsonKey(ignore: true)
  _$$LocationAndServiceAreaImplCopyWith<_$LocationAndServiceAreaImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RatesAndPricing _$RatesAndPricingFromJson(Map<String, dynamic> json) {
  return _RatesAndPricing.fromJson(json);
}

/// @nodoc
mixin _$RatesAndPricing {
  List<GroupPricing> get groupPricing => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatesAndPricingCopyWith<RatesAndPricing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatesAndPricingCopyWith<$Res> {
  factory $RatesAndPricingCopyWith(
          RatesAndPricing value, $Res Function(RatesAndPricing) then) =
      _$RatesAndPricingCopyWithImpl<$Res, RatesAndPricing>;
  @useResult
  $Res call({List<GroupPricing> groupPricing});
}

/// @nodoc
class _$RatesAndPricingCopyWithImpl<$Res, $Val extends RatesAndPricing>
    implements $RatesAndPricingCopyWith<$Res> {
  _$RatesAndPricingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupPricing = null,
  }) {
    return _then(_value.copyWith(
      groupPricing: null == groupPricing
          ? _value.groupPricing
          : groupPricing // ignore: cast_nullable_to_non_nullable
              as List<GroupPricing>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatesAndPricingImplCopyWith<$Res>
    implements $RatesAndPricingCopyWith<$Res> {
  factory _$$RatesAndPricingImplCopyWith(_$RatesAndPricingImpl value,
          $Res Function(_$RatesAndPricingImpl) then) =
      __$$RatesAndPricingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GroupPricing> groupPricing});
}

/// @nodoc
class __$$RatesAndPricingImplCopyWithImpl<$Res>
    extends _$RatesAndPricingCopyWithImpl<$Res, _$RatesAndPricingImpl>
    implements _$$RatesAndPricingImplCopyWith<$Res> {
  __$$RatesAndPricingImplCopyWithImpl(
      _$RatesAndPricingImpl _value, $Res Function(_$RatesAndPricingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupPricing = null,
  }) {
    return _then(_$RatesAndPricingImpl(
      groupPricing: null == groupPricing
          ? _value._groupPricing
          : groupPricing // ignore: cast_nullable_to_non_nullable
              as List<GroupPricing>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatesAndPricingImpl implements _RatesAndPricing {
  const _$RatesAndPricingImpl({required final List<GroupPricing> groupPricing})
      : _groupPricing = groupPricing;

  factory _$RatesAndPricingImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatesAndPricingImplFromJson(json);

  final List<GroupPricing> _groupPricing;
  @override
  List<GroupPricing> get groupPricing {
    if (_groupPricing is EqualUnmodifiableListView) return _groupPricing;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groupPricing);
  }

  @override
  String toString() {
    return 'RatesAndPricing(groupPricing: $groupPricing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatesAndPricingImpl &&
            const DeepCollectionEquality()
                .equals(other._groupPricing, _groupPricing));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_groupPricing));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatesAndPricingImplCopyWith<_$RatesAndPricingImpl> get copyWith =>
      __$$RatesAndPricingImplCopyWithImpl<_$RatesAndPricingImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatesAndPricingImplToJson(
      this,
    );
  }
}

abstract class _RatesAndPricing implements RatesAndPricing {
  const factory _RatesAndPricing(
      {required final List<GroupPricing> groupPricing}) = _$RatesAndPricingImpl;

  factory _RatesAndPricing.fromJson(Map<String, dynamic> json) =
      _$RatesAndPricingImpl.fromJson;

  @override
  List<GroupPricing> get groupPricing;
  @override
  @JsonKey(ignore: true)
  _$$RatesAndPricingImplCopyWith<_$RatesAndPricingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentInformation _$PaymentInformationFromJson(Map<String, dynamic> json) {
  return _PaymentInformation.fromJson(json);
}

/// @nodoc
mixin _$PaymentInformation {
  List<String> get methods => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentInformationCopyWith<PaymentInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentInformationCopyWith<$Res> {
  factory $PaymentInformationCopyWith(
          PaymentInformation value, $Res Function(PaymentInformation) then) =
      _$PaymentInformationCopyWithImpl<$Res, PaymentInformation>;
  @useResult
  $Res call({List<String> methods});
}

/// @nodoc
class _$PaymentInformationCopyWithImpl<$Res, $Val extends PaymentInformation>
    implements $PaymentInformationCopyWith<$Res> {
  _$PaymentInformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? methods = null,
  }) {
    return _then(_value.copyWith(
      methods: null == methods
          ? _value.methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentInformationImplCopyWith<$Res>
    implements $PaymentInformationCopyWith<$Res> {
  factory _$$PaymentInformationImplCopyWith(_$PaymentInformationImpl value,
          $Res Function(_$PaymentInformationImpl) then) =
      __$$PaymentInformationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> methods});
}

/// @nodoc
class __$$PaymentInformationImplCopyWithImpl<$Res>
    extends _$PaymentInformationCopyWithImpl<$Res, _$PaymentInformationImpl>
    implements _$$PaymentInformationImplCopyWith<$Res> {
  __$$PaymentInformationImplCopyWithImpl(_$PaymentInformationImpl _value,
      $Res Function(_$PaymentInformationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? methods = null,
  }) {
    return _then(_$PaymentInformationImpl(
      methods: null == methods
          ? _value._methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentInformationImpl implements _PaymentInformation {
  const _$PaymentInformationImpl({required final List<String> methods})
      : _methods = methods;

  factory _$PaymentInformationImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentInformationImplFromJson(json);

  final List<String> _methods;
  @override
  List<String> get methods {
    if (_methods is EqualUnmodifiableListView) return _methods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_methods);
  }

  @override
  String toString() {
    return 'PaymentInformation(methods: $methods)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentInformationImpl &&
            const DeepCollectionEquality().equals(other._methods, _methods));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_methods));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentInformationImplCopyWith<_$PaymentInformationImpl> get copyWith =>
      __$$PaymentInformationImplCopyWithImpl<_$PaymentInformationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentInformationImplToJson(
      this,
    );
  }
}

abstract class _PaymentInformation implements PaymentInformation {
  const factory _PaymentInformation({required final List<String> methods}) =
      _$PaymentInformationImpl;

  factory _PaymentInformation.fromJson(Map<String, dynamic> json) =
      _$PaymentInformationImpl.fromJson;

  @override
  List<String> get methods;
  @override
  @JsonKey(ignore: true)
  _$$PaymentInformationImplCopyWith<_$PaymentInformationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GroupPricing _$GroupPricingFromJson(Map<String, dynamic> json) {
  return _GroupPricing.fromJson(json);
}

/// @nodoc
mixin _$GroupPricing {
  int get groupSize => throw _privateConstructorUsedError;
  int get rate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupPricingCopyWith<GroupPricing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupPricingCopyWith<$Res> {
  factory $GroupPricingCopyWith(
          GroupPricing value, $Res Function(GroupPricing) then) =
      _$GroupPricingCopyWithImpl<$Res, GroupPricing>;
  @useResult
  $Res call({int groupSize, int rate});
}

/// @nodoc
class _$GroupPricingCopyWithImpl<$Res, $Val extends GroupPricing>
    implements $GroupPricingCopyWith<$Res> {
  _$GroupPricingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupSize = null,
    Object? rate = null,
  }) {
    return _then(_value.copyWith(
      groupSize: null == groupSize
          ? _value.groupSize
          : groupSize // ignore: cast_nullable_to_non_nullable
              as int,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupPricingImplCopyWith<$Res>
    implements $GroupPricingCopyWith<$Res> {
  factory _$$GroupPricingImplCopyWith(
          _$GroupPricingImpl value, $Res Function(_$GroupPricingImpl) then) =
      __$$GroupPricingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int groupSize, int rate});
}

/// @nodoc
class __$$GroupPricingImplCopyWithImpl<$Res>
    extends _$GroupPricingCopyWithImpl<$Res, _$GroupPricingImpl>
    implements _$$GroupPricingImplCopyWith<$Res> {
  __$$GroupPricingImplCopyWithImpl(
      _$GroupPricingImpl _value, $Res Function(_$GroupPricingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupSize = null,
    Object? rate = null,
  }) {
    return _then(_$GroupPricingImpl(
      groupSize: null == groupSize
          ? _value.groupSize
          : groupSize // ignore: cast_nullable_to_non_nullable
              as int,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupPricingImpl implements _GroupPricing {
  const _$GroupPricingImpl({required this.groupSize, required this.rate});

  factory _$GroupPricingImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupPricingImplFromJson(json);

  @override
  final int groupSize;
  @override
  final int rate;

  @override
  String toString() {
    return 'GroupPricing(groupSize: $groupSize, rate: $rate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupPricingImpl &&
            (identical(other.groupSize, groupSize) ||
                other.groupSize == groupSize) &&
            (identical(other.rate, rate) || other.rate == rate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, groupSize, rate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupPricingImplCopyWith<_$GroupPricingImpl> get copyWith =>
      __$$GroupPricingImplCopyWithImpl<_$GroupPricingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupPricingImplToJson(
      this,
    );
  }
}

abstract class _GroupPricing implements GroupPricing {
  const factory _GroupPricing(
      {required final int groupSize,
      required final int rate}) = _$GroupPricingImpl;

  factory _GroupPricing.fromJson(Map<String, dynamic> json) =
      _$GroupPricingImpl.fromJson;

  @override
  int get groupSize;
  @override
  int get rate;
  @override
  @JsonKey(ignore: true)
  _$$GroupPricingImplCopyWith<_$GroupPricingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
