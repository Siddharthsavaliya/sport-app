// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tournament_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Tournament _$TournamentFromJson(Map<String, dynamic> json) {
  return _Tournament.fromJson(json);
}

/// @nodoc
mixin _$Tournament {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get shortDescription => throw _privateConstructorUsedError;
  String get longDescription => throw _privateConstructorUsedError;
  int get numberOfTeams => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  String get sport => throw _privateConstructorUsedError;
  int get playersPerTeam => throw _privateConstructorUsedError;
  GroundAddress get groundAddress => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TournamentCopyWith<Tournament> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TournamentCopyWith<$Res> {
  factory $TournamentCopyWith(
          Tournament value, $Res Function(Tournament) then) =
      _$TournamentCopyWithImpl<$Res, Tournament>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      String image,
      String shortDescription,
      String longDescription,
      int numberOfTeams,
      DateTime startDate,
      DateTime endDate,
      String sport,
      int playersPerTeam,
      GroundAddress groundAddress,
      String status});

  $GroundAddressCopyWith<$Res> get groundAddress;
}

/// @nodoc
class _$TournamentCopyWithImpl<$Res, $Val extends Tournament>
    implements $TournamentCopyWith<$Res> {
  _$TournamentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? shortDescription = null,
    Object? longDescription = null,
    Object? numberOfTeams = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? sport = null,
    Object? playersPerTeam = null,
    Object? groundAddress = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      longDescription: null == longDescription
          ? _value.longDescription
          : longDescription // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfTeams: null == numberOfTeams
          ? _value.numberOfTeams
          : numberOfTeams // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sport: null == sport
          ? _value.sport
          : sport // ignore: cast_nullable_to_non_nullable
              as String,
      playersPerTeam: null == playersPerTeam
          ? _value.playersPerTeam
          : playersPerTeam // ignore: cast_nullable_to_non_nullable
              as int,
      groundAddress: null == groundAddress
          ? _value.groundAddress
          : groundAddress // ignore: cast_nullable_to_non_nullable
              as GroundAddress,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GroundAddressCopyWith<$Res> get groundAddress {
    return $GroundAddressCopyWith<$Res>(_value.groundAddress, (value) {
      return _then(_value.copyWith(groundAddress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TournamentImplCopyWith<$Res>
    implements $TournamentCopyWith<$Res> {
  factory _$$TournamentImplCopyWith(
          _$TournamentImpl value, $Res Function(_$TournamentImpl) then) =
      __$$TournamentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      String image,
      String shortDescription,
      String longDescription,
      int numberOfTeams,
      DateTime startDate,
      DateTime endDate,
      String sport,
      int playersPerTeam,
      GroundAddress groundAddress,
      String status});

  @override
  $GroundAddressCopyWith<$Res> get groundAddress;
}

/// @nodoc
class __$$TournamentImplCopyWithImpl<$Res>
    extends _$TournamentCopyWithImpl<$Res, _$TournamentImpl>
    implements _$$TournamentImplCopyWith<$Res> {
  __$$TournamentImplCopyWithImpl(
      _$TournamentImpl _value, $Res Function(_$TournamentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? shortDescription = null,
    Object? longDescription = null,
    Object? numberOfTeams = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? sport = null,
    Object? playersPerTeam = null,
    Object? groundAddress = null,
    Object? status = null,
  }) {
    return _then(_$TournamentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      longDescription: null == longDescription
          ? _value.longDescription
          : longDescription // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfTeams: null == numberOfTeams
          ? _value.numberOfTeams
          : numberOfTeams // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sport: null == sport
          ? _value.sport
          : sport // ignore: cast_nullable_to_non_nullable
              as String,
      playersPerTeam: null == playersPerTeam
          ? _value.playersPerTeam
          : playersPerTeam // ignore: cast_nullable_to_non_nullable
              as int,
      groundAddress: null == groundAddress
          ? _value.groundAddress
          : groundAddress // ignore: cast_nullable_to_non_nullable
              as GroundAddress,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TournamentImpl implements _Tournament {
  const _$TournamentImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.name,
      required this.image,
      required this.shortDescription,
      required this.longDescription,
      required this.numberOfTeams,
      required this.startDate,
      required this.endDate,
      required this.sport,
      required this.playersPerTeam,
      required this.groundAddress,
      required this.status});

  factory _$TournamentImpl.fromJson(Map<String, dynamic> json) =>
      _$$TournamentImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String name;
  @override
  final String image;
  @override
  final String shortDescription;
  @override
  final String longDescription;
  @override
  final int numberOfTeams;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final String sport;
  @override
  final int playersPerTeam;
  @override
  final GroundAddress groundAddress;
  @override
  final String status;

  @override
  String toString() {
    return 'Tournament(id: $id, name: $name, image: $image, shortDescription: $shortDescription, longDescription: $longDescription, numberOfTeams: $numberOfTeams, startDate: $startDate, endDate: $endDate, sport: $sport, playersPerTeam: $playersPerTeam, groundAddress: $groundAddress, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TournamentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.longDescription, longDescription) ||
                other.longDescription == longDescription) &&
            (identical(other.numberOfTeams, numberOfTeams) ||
                other.numberOfTeams == numberOfTeams) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.sport, sport) || other.sport == sport) &&
            (identical(other.playersPerTeam, playersPerTeam) ||
                other.playersPerTeam == playersPerTeam) &&
            (identical(other.groundAddress, groundAddress) ||
                other.groundAddress == groundAddress) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      image,
      shortDescription,
      longDescription,
      numberOfTeams,
      startDate,
      endDate,
      sport,
      playersPerTeam,
      groundAddress,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TournamentImplCopyWith<_$TournamentImpl> get copyWith =>
      __$$TournamentImplCopyWithImpl<_$TournamentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TournamentImplToJson(
      this,
    );
  }
}

abstract class _Tournament implements Tournament {
  const factory _Tournament(
      {@JsonKey(name: '_id') required final String id,
      required final String name,
      required final String image,
      required final String shortDescription,
      required final String longDescription,
      required final int numberOfTeams,
      required final DateTime startDate,
      required final DateTime endDate,
      required final String sport,
      required final int playersPerTeam,
      required final GroundAddress groundAddress,
      required final String status}) = _$TournamentImpl;

  factory _Tournament.fromJson(Map<String, dynamic> json) =
      _$TournamentImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  String get image;
  @override
  String get shortDescription;
  @override
  String get longDescription;
  @override
  int get numberOfTeams;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  String get sport;
  @override
  int get playersPerTeam;
  @override
  GroundAddress get groundAddress;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$TournamentImplCopyWith<_$TournamentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GroundAddress _$GroundAddressFromJson(Map<String, dynamic> json) {
  return _GroundAddress.fromJson(json);
}

/// @nodoc
mixin _$GroundAddress {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String? get address1 => throw _privateConstructorUsedError;
  String? get address2 => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get pincode => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroundAddressCopyWith<GroundAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroundAddressCopyWith<$Res> {
  factory $GroundAddressCopyWith(
          GroundAddress value, $Res Function(GroundAddress) then) =
      _$GroundAddressCopyWithImpl<$Res, GroundAddress>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String? address1,
      String? address2,
      String? city,
      String? state,
      String? pincode,
      String? country});
}

/// @nodoc
class _$GroundAddressCopyWithImpl<$Res, $Val extends GroundAddress>
    implements $GroundAddressCopyWith<$Res> {
  _$GroundAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? pincode = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      address1: freezed == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroundAddressImplCopyWith<$Res>
    implements $GroundAddressCopyWith<$Res> {
  factory _$$GroundAddressImplCopyWith(
          _$GroundAddressImpl value, $Res Function(_$GroundAddressImpl) then) =
      __$$GroundAddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String? address1,
      String? address2,
      String? city,
      String? state,
      String? pincode,
      String? country});
}

/// @nodoc
class __$$GroundAddressImplCopyWithImpl<$Res>
    extends _$GroundAddressCopyWithImpl<$Res, _$GroundAddressImpl>
    implements _$$GroundAddressImplCopyWith<$Res> {
  __$$GroundAddressImplCopyWithImpl(
      _$GroundAddressImpl _value, $Res Function(_$GroundAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? pincode = freezed,
    Object? country = freezed,
  }) {
    return _then(_$GroundAddressImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      address1: freezed == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroundAddressImpl implements _GroundAddress {
  const _$GroundAddressImpl(
      {@JsonKey(name: '_id') required this.id,
      this.address1,
      this.address2,
      this.city,
      this.state,
      this.pincode,
      this.country});

  factory _$GroundAddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroundAddressImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String? address1;
  @override
  final String? address2;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? pincode;
  @override
  final String? country;

  @override
  String toString() {
    return 'GroundAddress(id: $id, address1: $address1, address2: $address2, city: $city, state: $state, pincode: $pincode, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroundAddressImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.address1, address1) ||
                other.address1 == address1) &&
            (identical(other.address2, address2) ||
                other.address2 == address2) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.pincode, pincode) || other.pincode == pincode) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, address1, address2, city, state, pincode, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroundAddressImplCopyWith<_$GroundAddressImpl> get copyWith =>
      __$$GroundAddressImplCopyWithImpl<_$GroundAddressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroundAddressImplToJson(
      this,
    );
  }
}

abstract class _GroundAddress implements GroundAddress {
  const factory _GroundAddress(
      {@JsonKey(name: '_id') required final String id,
      final String? address1,
      final String? address2,
      final String? city,
      final String? state,
      final String? pincode,
      final String? country}) = _$GroundAddressImpl;

  factory _GroundAddress.fromJson(Map<String, dynamic> json) =
      _$GroundAddressImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String? get address1;
  @override
  String? get address2;
  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get pincode;
  @override
  String? get country;
  @override
  @JsonKey(ignore: true)
  _$$GroundAddressImplCopyWith<_$GroundAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
