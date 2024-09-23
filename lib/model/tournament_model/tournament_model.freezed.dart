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

Team _$TeamFromJson(Map<String, dynamic> json) {
  return _Team.fromJson(json);
}

/// @nodoc
mixin _$Team {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get tournament => throw _privateConstructorUsedError;
  List<Player> get players => throw _privateConstructorUsedError;
  @JsonKey(name: '__v')
  int get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamCopyWith<Team> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamCopyWith<$Res> {
  factory $TeamCopyWith(Team value, $Res Function(Team) then) =
      _$TeamCopyWithImpl<$Res, Team>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      String tournament,
      List<Player> players,
      @JsonKey(name: '__v') int version});
}

/// @nodoc
class _$TeamCopyWithImpl<$Res, $Val extends Team>
    implements $TeamCopyWith<$Res> {
  _$TeamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? tournament = null,
    Object? players = null,
    Object? version = null,
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
      tournament: null == tournament
          ? _value.tournament
          : tournament // ignore: cast_nullable_to_non_nullable
              as String,
      players: null == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamImplCopyWith<$Res> implements $TeamCopyWith<$Res> {
  factory _$$TeamImplCopyWith(
          _$TeamImpl value, $Res Function(_$TeamImpl) then) =
      __$$TeamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      String tournament,
      List<Player> players,
      @JsonKey(name: '__v') int version});
}

/// @nodoc
class __$$TeamImplCopyWithImpl<$Res>
    extends _$TeamCopyWithImpl<$Res, _$TeamImpl>
    implements _$$TeamImplCopyWith<$Res> {
  __$$TeamImplCopyWithImpl(_$TeamImpl _value, $Res Function(_$TeamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? tournament = null,
    Object? players = null,
    Object? version = null,
  }) {
    return _then(_$TeamImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tournament: null == tournament
          ? _value.tournament
          : tournament // ignore: cast_nullable_to_non_nullable
              as String,
      players: null == players
          ? _value._players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamImpl implements _Team {
  const _$TeamImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.name,
      required this.tournament,
      required final List<Player> players,
      @JsonKey(name: '__v') required this.version})
      : _players = players;

  factory _$TeamImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String name;
  @override
  final String tournament;
  final List<Player> _players;
  @override
  List<Player> get players {
    if (_players is EqualUnmodifiableListView) return _players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_players);
  }

  @override
  @JsonKey(name: '__v')
  final int version;

  @override
  String toString() {
    return 'Team(id: $id, name: $name, tournament: $tournament, players: $players, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.tournament, tournament) ||
                other.tournament == tournament) &&
            const DeepCollectionEquality().equals(other._players, _players) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, tournament,
      const DeepCollectionEquality().hash(_players), version);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamImplCopyWith<_$TeamImpl> get copyWith =>
      __$$TeamImplCopyWithImpl<_$TeamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamImplToJson(
      this,
    );
  }
}

abstract class _Team implements Team {
  const factory _Team(
      {@JsonKey(name: '_id') required final String id,
      required final String name,
      required final String tournament,
      required final List<Player> players,
      @JsonKey(name: '__v') required final int version}) = _$TeamImpl;

  factory _Team.fromJson(Map<String, dynamic> json) = _$TeamImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  String get tournament;
  @override
  List<Player> get players;
  @override
  @JsonKey(name: '__v')
  int get version;
  @override
  @JsonKey(ignore: true)
  _$$TeamImplCopyWith<_$TeamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Player _$PlayerFromJson(Map<String, dynamic> json) {
  return _Player.fromJson(json);
}

/// @nodoc
mixin _$Player {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerCopyWith<Player> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerCopyWith<$Res> {
  factory $PlayerCopyWith(Player value, $Res Function(Player) then) =
      _$PlayerCopyWithImpl<$Res, Player>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String image,
      String name,
      String phoneNumber,
      String email,
      int age,
      String gender,
      String note});
}

/// @nodoc
class _$PlayerCopyWithImpl<$Res, $Val extends Player>
    implements $PlayerCopyWith<$Res> {
  _$PlayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? name = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? age = null,
    Object? gender = null,
    Object? note = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayerImplCopyWith<$Res> implements $PlayerCopyWith<$Res> {
  factory _$$PlayerImplCopyWith(
          _$PlayerImpl value, $Res Function(_$PlayerImpl) then) =
      __$$PlayerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String image,
      String name,
      String phoneNumber,
      String email,
      int age,
      String gender,
      String note});
}

/// @nodoc
class __$$PlayerImplCopyWithImpl<$Res>
    extends _$PlayerCopyWithImpl<$Res, _$PlayerImpl>
    implements _$$PlayerImplCopyWith<$Res> {
  __$$PlayerImplCopyWithImpl(
      _$PlayerImpl _value, $Res Function(_$PlayerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? name = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? age = null,
    Object? gender = null,
    Object? note = null,
  }) {
    return _then(_$PlayerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayerImpl implements _Player {
  const _$PlayerImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.image,
      required this.name,
      required this.phoneNumber,
      required this.email,
      required this.age,
      required this.gender,
      required this.note});

  factory _$PlayerImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayerImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String image;
  @override
  final String name;
  @override
  final String phoneNumber;
  @override
  final String email;
  @override
  final int age;
  @override
  final String gender;
  @override
  final String note;

  @override
  String toString() {
    return 'Player(id: $id, image: $image, name: $name, phoneNumber: $phoneNumber, email: $email, age: $age, gender: $gender, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, image, name, phoneNumber, email, age, gender, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerImplCopyWith<_$PlayerImpl> get copyWith =>
      __$$PlayerImplCopyWithImpl<_$PlayerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerImplToJson(
      this,
    );
  }
}

abstract class _Player implements Player {
  const factory _Player(
      {@JsonKey(name: '_id') required final String id,
      required final String image,
      required final String name,
      required final String phoneNumber,
      required final String email,
      required final int age,
      required final String gender,
      required final String note}) = _$PlayerImpl;

  factory _Player.fromJson(Map<String, dynamic> json) = _$PlayerImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get image;
  @override
  String get name;
  @override
  String get phoneNumber;
  @override
  String get email;
  @override
  int get age;
  @override
  String get gender;
  @override
  String get note;
  @override
  @JsonKey(ignore: true)
  _$$PlayerImplCopyWith<_$PlayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Match _$MatchFromJson(Map<String, dynamic> json) {
  return _Match.fromJson(json);
}

/// @nodoc
mixin _$Match {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get tournament => throw _privateConstructorUsedError;
  TeamReference get teamA => throw _privateConstructorUsedError;
  TeamReference get teamB => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "score")
  Map<String, dynamic> get score => throw _privateConstructorUsedError;
  String get tossWinner => throw _privateConstructorUsedError;
  @JsonKey(name: '__v')
  int get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchCopyWith<Match> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchCopyWith<$Res> {
  factory $MatchCopyWith(Match value, $Res Function(Match) then) =
      _$MatchCopyWithImpl<$Res, Match>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String tournament,
      TeamReference teamA,
      TeamReference teamB,
      DateTime date,
      String time,
      String status,
      @JsonKey(name: "score") Map<String, dynamic> score,
      String tossWinner,
      @JsonKey(name: '__v') int version});

  $TeamReferenceCopyWith<$Res> get teamA;
  $TeamReferenceCopyWith<$Res> get teamB;
}

/// @nodoc
class _$MatchCopyWithImpl<$Res, $Val extends Match>
    implements $MatchCopyWith<$Res> {
  _$MatchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tournament = null,
    Object? teamA = null,
    Object? teamB = null,
    Object? date = null,
    Object? time = null,
    Object? status = null,
    Object? score = null,
    Object? tossWinner = null,
    Object? version = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      tournament: null == tournament
          ? _value.tournament
          : tournament // ignore: cast_nullable_to_non_nullable
              as String,
      teamA: null == teamA
          ? _value.teamA
          : teamA // ignore: cast_nullable_to_non_nullable
              as TeamReference,
      teamB: null == teamB
          ? _value.teamB
          : teamB // ignore: cast_nullable_to_non_nullable
              as TeamReference,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      tossWinner: null == tossWinner
          ? _value.tossWinner
          : tossWinner // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamReferenceCopyWith<$Res> get teamA {
    return $TeamReferenceCopyWith<$Res>(_value.teamA, (value) {
      return _then(_value.copyWith(teamA: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamReferenceCopyWith<$Res> get teamB {
    return $TeamReferenceCopyWith<$Res>(_value.teamB, (value) {
      return _then(_value.copyWith(teamB: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MatchImplCopyWith<$Res> implements $MatchCopyWith<$Res> {
  factory _$$MatchImplCopyWith(
          _$MatchImpl value, $Res Function(_$MatchImpl) then) =
      __$$MatchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String tournament,
      TeamReference teamA,
      TeamReference teamB,
      DateTime date,
      String time,
      String status,
      @JsonKey(name: "score") Map<String, dynamic> score,
      String tossWinner,
      @JsonKey(name: '__v') int version});

  @override
  $TeamReferenceCopyWith<$Res> get teamA;
  @override
  $TeamReferenceCopyWith<$Res> get teamB;
}

/// @nodoc
class __$$MatchImplCopyWithImpl<$Res>
    extends _$MatchCopyWithImpl<$Res, _$MatchImpl>
    implements _$$MatchImplCopyWith<$Res> {
  __$$MatchImplCopyWithImpl(
      _$MatchImpl _value, $Res Function(_$MatchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tournament = null,
    Object? teamA = null,
    Object? teamB = null,
    Object? date = null,
    Object? time = null,
    Object? status = null,
    Object? score = null,
    Object? tossWinner = null,
    Object? version = null,
  }) {
    return _then(_$MatchImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      tournament: null == tournament
          ? _value.tournament
          : tournament // ignore: cast_nullable_to_non_nullable
              as String,
      teamA: null == teamA
          ? _value.teamA
          : teamA // ignore: cast_nullable_to_non_nullable
              as TeamReference,
      teamB: null == teamB
          ? _value.teamB
          : teamB // ignore: cast_nullable_to_non_nullable
              as TeamReference,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value._score
          : score // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      tossWinner: null == tossWinner
          ? _value.tossWinner
          : tossWinner // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MatchImpl implements _Match {
  const _$MatchImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.tournament,
      required this.teamA,
      required this.teamB,
      required this.date,
      required this.time,
      required this.status,
      @JsonKey(name: "score") required final Map<String, dynamic> score,
      required this.tossWinner,
      @JsonKey(name: '__v') required this.version})
      : _score = score;

  factory _$MatchImpl.fromJson(Map<String, dynamic> json) =>
      _$$MatchImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String tournament;
  @override
  final TeamReference teamA;
  @override
  final TeamReference teamB;
  @override
  final DateTime date;
  @override
  final String time;
  @override
  final String status;
  final Map<String, dynamic> _score;
  @override
  @JsonKey(name: "score")
  Map<String, dynamic> get score {
    if (_score is EqualUnmodifiableMapView) return _score;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_score);
  }

  @override
  final String tossWinner;
  @override
  @JsonKey(name: '__v')
  final int version;

  @override
  String toString() {
    return 'Match(id: $id, tournament: $tournament, teamA: $teamA, teamB: $teamB, date: $date, time: $time, status: $status, score: $score, tossWinner: $tossWinner, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tournament, tournament) ||
                other.tournament == tournament) &&
            (identical(other.teamA, teamA) || other.teamA == teamA) &&
            (identical(other.teamB, teamB) || other.teamB == teamB) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._score, _score) &&
            (identical(other.tossWinner, tossWinner) ||
                other.tossWinner == tossWinner) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      tournament,
      teamA,
      teamB,
      date,
      time,
      status,
      const DeepCollectionEquality().hash(_score),
      tossWinner,
      version);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchImplCopyWith<_$MatchImpl> get copyWith =>
      __$$MatchImplCopyWithImpl<_$MatchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MatchImplToJson(
      this,
    );
  }
}

abstract class _Match implements Match {
  const factory _Match(
      {@JsonKey(name: '_id') required final String id,
      required final String tournament,
      required final TeamReference teamA,
      required final TeamReference teamB,
      required final DateTime date,
      required final String time,
      required final String status,
      @JsonKey(name: "score") required final Map<String, dynamic> score,
      required final String tossWinner,
      @JsonKey(name: '__v') required final int version}) = _$MatchImpl;

  factory _Match.fromJson(Map<String, dynamic> json) = _$MatchImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get tournament;
  @override
  TeamReference get teamA;
  @override
  TeamReference get teamB;
  @override
  DateTime get date;
  @override
  String get time;
  @override
  String get status;
  @override
  @JsonKey(name: "score")
  Map<String, dynamic> get score;
  @override
  String get tossWinner;
  @override
  @JsonKey(name: '__v')
  int get version;
  @override
  @JsonKey(ignore: true)
  _$$MatchImplCopyWith<_$MatchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TeamReference _$TeamReferenceFromJson(Map<String, dynamic> json) {
  return _TeamReference.fromJson(json);
}

/// @nodoc
mixin _$TeamReference {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamReferenceCopyWith<TeamReference> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamReferenceCopyWith<$Res> {
  factory $TeamReferenceCopyWith(
          TeamReference value, $Res Function(TeamReference) then) =
      _$TeamReferenceCopyWithImpl<$Res, TeamReference>;
  @useResult
  $Res call({@JsonKey(name: '_id') String id, String name});
}

/// @nodoc
class _$TeamReferenceCopyWithImpl<$Res, $Val extends TeamReference>
    implements $TeamReferenceCopyWith<$Res> {
  _$TeamReferenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamReferenceImplCopyWith<$Res>
    implements $TeamReferenceCopyWith<$Res> {
  factory _$$TeamReferenceImplCopyWith(
          _$TeamReferenceImpl value, $Res Function(_$TeamReferenceImpl) then) =
      __$$TeamReferenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '_id') String id, String name});
}

/// @nodoc
class __$$TeamReferenceImplCopyWithImpl<$Res>
    extends _$TeamReferenceCopyWithImpl<$Res, _$TeamReferenceImpl>
    implements _$$TeamReferenceImplCopyWith<$Res> {
  __$$TeamReferenceImplCopyWithImpl(
      _$TeamReferenceImpl _value, $Res Function(_$TeamReferenceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$TeamReferenceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamReferenceImpl implements _TeamReference {
  const _$TeamReferenceImpl(
      {@JsonKey(name: '_id') required this.id, required this.name});

  factory _$TeamReferenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamReferenceImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'TeamReference(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamReferenceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamReferenceImplCopyWith<_$TeamReferenceImpl> get copyWith =>
      __$$TeamReferenceImplCopyWithImpl<_$TeamReferenceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamReferenceImplToJson(
      this,
    );
  }
}

abstract class _TeamReference implements TeamReference {
  const factory _TeamReference(
      {@JsonKey(name: '_id') required final String id,
      required final String name}) = _$TeamReferenceImpl;

  factory _TeamReference.fromJson(Map<String, dynamic> json) =
      _$TeamReferenceImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$TeamReferenceImplCopyWith<_$TeamReferenceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MatchScore _$MatchScoreFromJson(Map<String, dynamic> json) {
  return _MatchScore.fromJson(json);
}

/// @nodoc
mixin _$MatchScore {
  @JsonKey(name: '66ea8d36c27c6be554fa4fd8')
  ScoreDetail get teamAScore => throw _privateConstructorUsedError;
  @JsonKey(name: '66ea91a4d2791e7f240d28f5')
  ScoreDetail get teamBScore => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchScoreCopyWith<MatchScore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchScoreCopyWith<$Res> {
  factory $MatchScoreCopyWith(
          MatchScore value, $Res Function(MatchScore) then) =
      _$MatchScoreCopyWithImpl<$Res, MatchScore>;
  @useResult
  $Res call(
      {@JsonKey(name: '66ea8d36c27c6be554fa4fd8') ScoreDetail teamAScore,
      @JsonKey(name: '66ea91a4d2791e7f240d28f5') ScoreDetail teamBScore});

  $ScoreDetailCopyWith<$Res> get teamAScore;
  $ScoreDetailCopyWith<$Res> get teamBScore;
}

/// @nodoc
class _$MatchScoreCopyWithImpl<$Res, $Val extends MatchScore>
    implements $MatchScoreCopyWith<$Res> {
  _$MatchScoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamAScore = null,
    Object? teamBScore = null,
  }) {
    return _then(_value.copyWith(
      teamAScore: null == teamAScore
          ? _value.teamAScore
          : teamAScore // ignore: cast_nullable_to_non_nullable
              as ScoreDetail,
      teamBScore: null == teamBScore
          ? _value.teamBScore
          : teamBScore // ignore: cast_nullable_to_non_nullable
              as ScoreDetail,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ScoreDetailCopyWith<$Res> get teamAScore {
    return $ScoreDetailCopyWith<$Res>(_value.teamAScore, (value) {
      return _then(_value.copyWith(teamAScore: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ScoreDetailCopyWith<$Res> get teamBScore {
    return $ScoreDetailCopyWith<$Res>(_value.teamBScore, (value) {
      return _then(_value.copyWith(teamBScore: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MatchScoreImplCopyWith<$Res>
    implements $MatchScoreCopyWith<$Res> {
  factory _$$MatchScoreImplCopyWith(
          _$MatchScoreImpl value, $Res Function(_$MatchScoreImpl) then) =
      __$$MatchScoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '66ea8d36c27c6be554fa4fd8') ScoreDetail teamAScore,
      @JsonKey(name: '66ea91a4d2791e7f240d28f5') ScoreDetail teamBScore});

  @override
  $ScoreDetailCopyWith<$Res> get teamAScore;
  @override
  $ScoreDetailCopyWith<$Res> get teamBScore;
}

/// @nodoc
class __$$MatchScoreImplCopyWithImpl<$Res>
    extends _$MatchScoreCopyWithImpl<$Res, _$MatchScoreImpl>
    implements _$$MatchScoreImplCopyWith<$Res> {
  __$$MatchScoreImplCopyWithImpl(
      _$MatchScoreImpl _value, $Res Function(_$MatchScoreImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamAScore = null,
    Object? teamBScore = null,
  }) {
    return _then(_$MatchScoreImpl(
      teamAScore: null == teamAScore
          ? _value.teamAScore
          : teamAScore // ignore: cast_nullable_to_non_nullable
              as ScoreDetail,
      teamBScore: null == teamBScore
          ? _value.teamBScore
          : teamBScore // ignore: cast_nullable_to_non_nullable
              as ScoreDetail,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MatchScoreImpl implements _MatchScore {
  const _$MatchScoreImpl(
      {@JsonKey(name: '66ea8d36c27c6be554fa4fd8') required this.teamAScore,
      @JsonKey(name: '66ea91a4d2791e7f240d28f5') required this.teamBScore});

  factory _$MatchScoreImpl.fromJson(Map<String, dynamic> json) =>
      _$$MatchScoreImplFromJson(json);

  @override
  @JsonKey(name: '66ea8d36c27c6be554fa4fd8')
  final ScoreDetail teamAScore;
  @override
  @JsonKey(name: '66ea91a4d2791e7f240d28f5')
  final ScoreDetail teamBScore;

  @override
  String toString() {
    return 'MatchScore(teamAScore: $teamAScore, teamBScore: $teamBScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchScoreImpl &&
            (identical(other.teamAScore, teamAScore) ||
                other.teamAScore == teamAScore) &&
            (identical(other.teamBScore, teamBScore) ||
                other.teamBScore == teamBScore));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, teamAScore, teamBScore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchScoreImplCopyWith<_$MatchScoreImpl> get copyWith =>
      __$$MatchScoreImplCopyWithImpl<_$MatchScoreImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MatchScoreImplToJson(
      this,
    );
  }
}

abstract class _MatchScore implements MatchScore {
  const factory _MatchScore(
      {@JsonKey(name: '66ea8d36c27c6be554fa4fd8')
      required final ScoreDetail teamAScore,
      @JsonKey(name: '66ea91a4d2791e7f240d28f5')
      required final ScoreDetail teamBScore}) = _$MatchScoreImpl;

  factory _MatchScore.fromJson(Map<String, dynamic> json) =
      _$MatchScoreImpl.fromJson;

  @override
  @JsonKey(name: '66ea8d36c27c6be554fa4fd8')
  ScoreDetail get teamAScore;
  @override
  @JsonKey(name: '66ea91a4d2791e7f240d28f5')
  ScoreDetail get teamBScore;
  @override
  @JsonKey(ignore: true)
  _$$MatchScoreImplCopyWith<_$MatchScoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ScoreDetail _$ScoreDetailFromJson(Map<String, dynamic> json) {
  return _ScoreDetail.fromJson(json);
}

/// @nodoc
mixin _$ScoreDetail {
  int get runs => throw _privateConstructorUsedError;
  int get wickets => throw _privateConstructorUsedError;
  int get overs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScoreDetailCopyWith<ScoreDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreDetailCopyWith<$Res> {
  factory $ScoreDetailCopyWith(
          ScoreDetail value, $Res Function(ScoreDetail) then) =
      _$ScoreDetailCopyWithImpl<$Res, ScoreDetail>;
  @useResult
  $Res call({int runs, int wickets, int overs});
}

/// @nodoc
class _$ScoreDetailCopyWithImpl<$Res, $Val extends ScoreDetail>
    implements $ScoreDetailCopyWith<$Res> {
  _$ScoreDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? runs = null,
    Object? wickets = null,
    Object? overs = null,
  }) {
    return _then(_value.copyWith(
      runs: null == runs
          ? _value.runs
          : runs // ignore: cast_nullable_to_non_nullable
              as int,
      wickets: null == wickets
          ? _value.wickets
          : wickets // ignore: cast_nullable_to_non_nullable
              as int,
      overs: null == overs
          ? _value.overs
          : overs // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScoreDetailImplCopyWith<$Res>
    implements $ScoreDetailCopyWith<$Res> {
  factory _$$ScoreDetailImplCopyWith(
          _$ScoreDetailImpl value, $Res Function(_$ScoreDetailImpl) then) =
      __$$ScoreDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int runs, int wickets, int overs});
}

/// @nodoc
class __$$ScoreDetailImplCopyWithImpl<$Res>
    extends _$ScoreDetailCopyWithImpl<$Res, _$ScoreDetailImpl>
    implements _$$ScoreDetailImplCopyWith<$Res> {
  __$$ScoreDetailImplCopyWithImpl(
      _$ScoreDetailImpl _value, $Res Function(_$ScoreDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? runs = null,
    Object? wickets = null,
    Object? overs = null,
  }) {
    return _then(_$ScoreDetailImpl(
      runs: null == runs
          ? _value.runs
          : runs // ignore: cast_nullable_to_non_nullable
              as int,
      wickets: null == wickets
          ? _value.wickets
          : wickets // ignore: cast_nullable_to_non_nullable
              as int,
      overs: null == overs
          ? _value.overs
          : overs // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScoreDetailImpl implements _ScoreDetail {
  const _$ScoreDetailImpl(
      {required this.runs, required this.wickets, required this.overs});

  factory _$ScoreDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScoreDetailImplFromJson(json);

  @override
  final int runs;
  @override
  final int wickets;
  @override
  final int overs;

  @override
  String toString() {
    return 'ScoreDetail(runs: $runs, wickets: $wickets, overs: $overs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScoreDetailImpl &&
            (identical(other.runs, runs) || other.runs == runs) &&
            (identical(other.wickets, wickets) || other.wickets == wickets) &&
            (identical(other.overs, overs) || other.overs == overs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, runs, wickets, overs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScoreDetailImplCopyWith<_$ScoreDetailImpl> get copyWith =>
      __$$ScoreDetailImplCopyWithImpl<_$ScoreDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScoreDetailImplToJson(
      this,
    );
  }
}

abstract class _ScoreDetail implements ScoreDetail {
  const factory _ScoreDetail(
      {required final int runs,
      required final int wickets,
      required final int overs}) = _$ScoreDetailImpl;

  factory _ScoreDetail.fromJson(Map<String, dynamic> json) =
      _$ScoreDetailImpl.fromJson;

  @override
  int get runs;
  @override
  int get wickets;
  @override
  int get overs;
  @override
  @JsonKey(ignore: true)
  _$$ScoreDetailImplCopyWith<_$ScoreDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
