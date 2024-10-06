// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tournament_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TournamentDetailModel _$TournamentDetailModelFromJson(
    Map<String, dynamic> json) {
  return _TournamentDetailModel.fromJson(json);
}

/// @nodoc
mixin _$TournamentDetailModel {
  String get tournamentId => throw _privateConstructorUsedError;
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
  List<Team> get teams => throw _privateConstructorUsedError;
  List<Match> get matches => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TournamentDetailModelCopyWith<TournamentDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TournamentDetailModelCopyWith<$Res> {
  factory $TournamentDetailModelCopyWith(TournamentDetailModel value,
          $Res Function(TournamentDetailModel) then) =
      _$TournamentDetailModelCopyWithImpl<$Res, TournamentDetailModel>;
  @useResult
  $Res call(
      {String tournamentId,
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
      String status,
      List<Team> teams,
      List<Match> matches});

  $GroundAddressCopyWith<$Res> get groundAddress;
}

/// @nodoc
class _$TournamentDetailModelCopyWithImpl<$Res,
        $Val extends TournamentDetailModel>
    implements $TournamentDetailModelCopyWith<$Res> {
  _$TournamentDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tournamentId = null,
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
    Object? teams = null,
    Object? matches = null,
  }) {
    return _then(_value.copyWith(
      tournamentId: null == tournamentId
          ? _value.tournamentId
          : tournamentId // ignore: cast_nullable_to_non_nullable
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
      teams: null == teams
          ? _value.teams
          : teams // ignore: cast_nullable_to_non_nullable
              as List<Team>,
      matches: null == matches
          ? _value.matches
          : matches // ignore: cast_nullable_to_non_nullable
              as List<Match>,
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
abstract class _$$TournamentDetailModelImplCopyWith<$Res>
    implements $TournamentDetailModelCopyWith<$Res> {
  factory _$$TournamentDetailModelImplCopyWith(
          _$TournamentDetailModelImpl value,
          $Res Function(_$TournamentDetailModelImpl) then) =
      __$$TournamentDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String tournamentId,
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
      String status,
      List<Team> teams,
      List<Match> matches});

  @override
  $GroundAddressCopyWith<$Res> get groundAddress;
}

/// @nodoc
class __$$TournamentDetailModelImplCopyWithImpl<$Res>
    extends _$TournamentDetailModelCopyWithImpl<$Res,
        _$TournamentDetailModelImpl>
    implements _$$TournamentDetailModelImplCopyWith<$Res> {
  __$$TournamentDetailModelImplCopyWithImpl(_$TournamentDetailModelImpl _value,
      $Res Function(_$TournamentDetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tournamentId = null,
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
    Object? teams = null,
    Object? matches = null,
  }) {
    return _then(_$TournamentDetailModelImpl(
      tournamentId: null == tournamentId
          ? _value.tournamentId
          : tournamentId // ignore: cast_nullable_to_non_nullable
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
      teams: null == teams
          ? _value._teams
          : teams // ignore: cast_nullable_to_non_nullable
              as List<Team>,
      matches: null == matches
          ? _value._matches
          : matches // ignore: cast_nullable_to_non_nullable
              as List<Match>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TournamentDetailModelImpl implements _TournamentDetailModel {
  const _$TournamentDetailModelImpl(
      {required this.tournamentId,
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
      required this.status,
      required final List<Team> teams,
      required final List<Match> matches})
      : _teams = teams,
        _matches = matches;

  factory _$TournamentDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TournamentDetailModelImplFromJson(json);

  @override
  final String tournamentId;
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
  final List<Team> _teams;
  @override
  List<Team> get teams {
    if (_teams is EqualUnmodifiableListView) return _teams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teams);
  }

  final List<Match> _matches;
  @override
  List<Match> get matches {
    if (_matches is EqualUnmodifiableListView) return _matches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_matches);
  }

  @override
  String toString() {
    return 'TournamentDetailModel(tournamentId: $tournamentId, name: $name, image: $image, shortDescription: $shortDescription, longDescription: $longDescription, numberOfTeams: $numberOfTeams, startDate: $startDate, endDate: $endDate, sport: $sport, playersPerTeam: $playersPerTeam, groundAddress: $groundAddress, status: $status, teams: $teams, matches: $matches)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TournamentDetailModelImpl &&
            (identical(other.tournamentId, tournamentId) ||
                other.tournamentId == tournamentId) &&
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
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._teams, _teams) &&
            const DeepCollectionEquality().equals(other._matches, _matches));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      tournamentId,
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
      status,
      const DeepCollectionEquality().hash(_teams),
      const DeepCollectionEquality().hash(_matches));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TournamentDetailModelImplCopyWith<_$TournamentDetailModelImpl>
      get copyWith => __$$TournamentDetailModelImplCopyWithImpl<
          _$TournamentDetailModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TournamentDetailModelImplToJson(
      this,
    );
  }
}

abstract class _TournamentDetailModel implements TournamentDetailModel {
  const factory _TournamentDetailModel(
      {required final String tournamentId,
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
      required final String status,
      required final List<Team> teams,
      required final List<Match> matches}) = _$TournamentDetailModelImpl;

  factory _TournamentDetailModel.fromJson(Map<String, dynamic> json) =
      _$TournamentDetailModelImpl.fromJson;

  @override
  String get tournamentId;
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
  List<Team> get teams;
  @override
  List<Match> get matches;
  @override
  @JsonKey(ignore: true)
  _$$TournamentDetailModelImplCopyWith<_$TournamentDetailModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GroundAddress _$GroundAddressFromJson(Map<String, dynamic> json) {
  return _GroundAddress.fromJson(json);
}

/// @nodoc
mixin _$GroundAddress {
  String get address1 => throw _privateConstructorUsedError;
  String? get address2 => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get pincode => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;

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
      {String address1,
      String? address2,
      String city,
      String state,
      String pincode,
      String country});
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
    Object? address1 = null,
    Object? address2 = freezed,
    Object? city = null,
    Object? state = null,
    Object? pincode = null,
    Object? country = null,
  }) {
    return _then(_value.copyWith(
      address1: null == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      pincode: null == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
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
      {String address1,
      String? address2,
      String city,
      String state,
      String pincode,
      String country});
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
    Object? address1 = null,
    Object? address2 = freezed,
    Object? city = null,
    Object? state = null,
    Object? pincode = null,
    Object? country = null,
  }) {
    return _then(_$GroundAddressImpl(
      address1: null == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      pincode: null == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroundAddressImpl implements _GroundAddress {
  const _$GroundAddressImpl(
      {required this.address1,
      this.address2 = "",
      required this.city,
      required this.state,
      required this.pincode,
      required this.country});

  factory _$GroundAddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroundAddressImplFromJson(json);

  @override
  final String address1;
  @override
  @JsonKey()
  final String? address2;
  @override
  final String city;
  @override
  final String state;
  @override
  final String pincode;
  @override
  final String country;

  @override
  String toString() {
    return 'GroundAddress(address1: $address1, address2: $address2, city: $city, state: $state, pincode: $pincode, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroundAddressImpl &&
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
      runtimeType, address1, address2, city, state, pincode, country);

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
      {required final String address1,
      final String? address2,
      required final String city,
      required final String state,
      required final String pincode,
      required final String country}) = _$GroundAddressImpl;

  factory _GroundAddress.fromJson(Map<String, dynamic> json) =
      _$GroundAddressImpl.fromJson;

  @override
  String get address1;
  @override
  String? get address2;
  @override
  String get city;
  @override
  String get state;
  @override
  String get pincode;
  @override
  String get country;
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
  String? get teamId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<Player> get players => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamCopyWith<Team> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamCopyWith<$Res> {
  factory $TeamCopyWith(Team value, $Res Function(Team) then) =
      _$TeamCopyWithImpl<$Res, Team>;
  @useResult
  $Res call({String? teamId, String? name, List<Player> players});
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
    Object? teamId = freezed,
    Object? name = freezed,
    Object? players = null,
  }) {
    return _then(_value.copyWith(
      teamId: freezed == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      players: null == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>,
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
  $Res call({String? teamId, String? name, List<Player> players});
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
    Object? teamId = freezed,
    Object? name = freezed,
    Object? players = null,
  }) {
    return _then(_$TeamImpl(
      teamId: freezed == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      players: null == players
          ? _value._players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamImpl implements _Team {
  const _$TeamImpl(
      {this.teamId, this.name, required final List<Player> players})
      : _players = players;

  factory _$TeamImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamImplFromJson(json);

  @override
  final String? teamId;
  @override
  final String? name;
  final List<Player> _players;
  @override
  List<Player> get players {
    if (_players is EqualUnmodifiableListView) return _players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_players);
  }

  @override
  String toString() {
    return 'Team(teamId: $teamId, name: $name, players: $players)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamImpl &&
            (identical(other.teamId, teamId) || other.teamId == teamId) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._players, _players));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, teamId, name, const DeepCollectionEquality().hash(_players));

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
      {final String? teamId,
      final String? name,
      required final List<Player> players}) = _$TeamImpl;

  factory _Team.fromJson(Map<String, dynamic> json) = _$TeamImpl.fromJson;

  @override
  String? get teamId;
  @override
  String? get name;
  @override
  List<Player> get players;
  @override
  @JsonKey(ignore: true)
  _$$TeamImplCopyWith<_$TeamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Match _$MatchFromJson(Map<String, dynamic> json) {
  return _Match.fromJson(json);
}

/// @nodoc
mixin _$Match {
  String? get matchId => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  List<MatchTeam> get teams => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get score => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get calculatedStatus => throw _privateConstructorUsedError;
  String? get tossWinner => throw _privateConstructorUsedError;
  String? get winner => throw _privateConstructorUsedError;

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
      {String? matchId,
      DateTime? date,
      String? time,
      List<MatchTeam> teams,
      List<Map<String, dynamic>> score,
      String? status,
      String? calculatedStatus,
      String? tossWinner,
      String? winner});
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
    Object? matchId = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? teams = null,
    Object? score = null,
    Object? status = freezed,
    Object? calculatedStatus = freezed,
    Object? tossWinner = freezed,
    Object? winner = freezed,
  }) {
    return _then(_value.copyWith(
      matchId: freezed == matchId
          ? _value.matchId
          : matchId // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      teams: null == teams
          ? _value.teams
          : teams // ignore: cast_nullable_to_non_nullable
              as List<MatchTeam>,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      calculatedStatus: freezed == calculatedStatus
          ? _value.calculatedStatus
          : calculatedStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      tossWinner: freezed == tossWinner
          ? _value.tossWinner
          : tossWinner // ignore: cast_nullable_to_non_nullable
              as String?,
      winner: freezed == winner
          ? _value.winner
          : winner // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
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
      {String? matchId,
      DateTime? date,
      String? time,
      List<MatchTeam> teams,
      List<Map<String, dynamic>> score,
      String? status,
      String? calculatedStatus,
      String? tossWinner,
      String? winner});
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
    Object? matchId = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? teams = null,
    Object? score = null,
    Object? status = freezed,
    Object? calculatedStatus = freezed,
    Object? tossWinner = freezed,
    Object? winner = freezed,
  }) {
    return _then(_$MatchImpl(
      matchId: freezed == matchId
          ? _value.matchId
          : matchId // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      teams: null == teams
          ? _value._teams
          : teams // ignore: cast_nullable_to_non_nullable
              as List<MatchTeam>,
      score: null == score
          ? _value._score
          : score // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      calculatedStatus: freezed == calculatedStatus
          ? _value.calculatedStatus
          : calculatedStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      tossWinner: freezed == tossWinner
          ? _value.tossWinner
          : tossWinner // ignore: cast_nullable_to_non_nullable
              as String?,
      winner: freezed == winner
          ? _value.winner
          : winner // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MatchImpl implements _Match {
  const _$MatchImpl(
      {this.matchId,
      this.date,
      this.time,
      final List<MatchTeam> teams = const [],
      final List<Map<String, dynamic>> score = const [],
      this.status,
      this.calculatedStatus,
      this.tossWinner,
      this.winner})
      : _teams = teams,
        _score = score;

  factory _$MatchImpl.fromJson(Map<String, dynamic> json) =>
      _$$MatchImplFromJson(json);

  @override
  final String? matchId;
  @override
  final DateTime? date;
  @override
  final String? time;
  final List<MatchTeam> _teams;
  @override
  @JsonKey()
  List<MatchTeam> get teams {
    if (_teams is EqualUnmodifiableListView) return _teams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teams);
  }

  final List<Map<String, dynamic>> _score;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get score {
    if (_score is EqualUnmodifiableListView) return _score;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_score);
  }

  @override
  final String? status;
  @override
  final String? calculatedStatus;
  @override
  final String? tossWinner;
  @override
  final String? winner;

  @override
  String toString() {
    return 'Match(matchId: $matchId, date: $date, time: $time, teams: $teams, score: $score, status: $status, calculatedStatus: $calculatedStatus, tossWinner: $tossWinner, winner: $winner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchImpl &&
            (identical(other.matchId, matchId) || other.matchId == matchId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            const DeepCollectionEquality().equals(other._teams, _teams) &&
            const DeepCollectionEquality().equals(other._score, _score) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.calculatedStatus, calculatedStatus) ||
                other.calculatedStatus == calculatedStatus) &&
            (identical(other.tossWinner, tossWinner) ||
                other.tossWinner == tossWinner) &&
            (identical(other.winner, winner) || other.winner == winner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      matchId,
      date,
      time,
      const DeepCollectionEquality().hash(_teams),
      const DeepCollectionEquality().hash(_score),
      status,
      calculatedStatus,
      tossWinner,
      winner);

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
      {final String? matchId,
      final DateTime? date,
      final String? time,
      final List<MatchTeam> teams,
      final List<Map<String, dynamic>> score,
      final String? status,
      final String? calculatedStatus,
      final String? tossWinner,
      final String? winner}) = _$MatchImpl;

  factory _Match.fromJson(Map<String, dynamic> json) = _$MatchImpl.fromJson;

  @override
  String? get matchId;
  @override
  DateTime? get date;
  @override
  String? get time;
  @override
  List<MatchTeam> get teams;
  @override
  List<Map<String, dynamic>> get score;
  @override
  String? get status;
  @override
  String? get calculatedStatus;
  @override
  String? get tossWinner;
  @override
  String? get winner;
  @override
  @JsonKey(ignore: true)
  _$$MatchImplCopyWith<_$MatchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Player _$PlayerFromJson(Map<String, dynamic> json) {
  return _Player.fromJson(json);
}

/// @nodoc
mixin _$Player {
  String? get image => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;

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
      {String? image,
      String? name,
      String? phoneNumber,
      String? email,
      int? age,
      String? gender,
      String? note,
      String? role,
      @JsonKey(name: '_id') String? id});
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
    Object? image = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? age = freezed,
    Object? gender = freezed,
    Object? note = freezed,
    Object? role = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {String? image,
      String? name,
      String? phoneNumber,
      String? email,
      int? age,
      String? gender,
      String? note,
      String? role,
      @JsonKey(name: '_id') String? id});
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
    Object? image = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? age = freezed,
    Object? gender = freezed,
    Object? note = freezed,
    Object? role = freezed,
    Object? id = freezed,
  }) {
    return _then(_$PlayerImpl(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayerImpl implements _Player {
  const _$PlayerImpl(
      {this.image,
      this.name,
      this.phoneNumber,
      this.email,
      this.age,
      this.gender,
      this.note,
      this.role,
      @JsonKey(name: '_id') required this.id});

  factory _$PlayerImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayerImplFromJson(json);

  @override
  final String? image;
  @override
  final String? name;
  @override
  final String? phoneNumber;
  @override
  final String? email;
  @override
  final int? age;
  @override
  final String? gender;
  @override
  final String? note;
  @override
  final String? role;
  @override
  @JsonKey(name: '_id')
  final String? id;

  @override
  String toString() {
    return 'Player(image: $image, name: $name, phoneNumber: $phoneNumber, email: $email, age: $age, gender: $gender, note: $note, role: $role, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, image, name, phoneNumber, email,
      age, gender, note, role, id);

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
      {final String? image,
      final String? name,
      final String? phoneNumber,
      final String? email,
      final int? age,
      final String? gender,
      final String? note,
      final String? role,
      @JsonKey(name: '_id') required final String? id}) = _$PlayerImpl;

  factory _Player.fromJson(Map<String, dynamic> json) = _$PlayerImpl.fromJson;

  @override
  String? get image;
  @override
  String? get name;
  @override
  String? get phoneNumber;
  @override
  String? get email;
  @override
  int? get age;
  @override
  String? get gender;
  @override
  String? get note;
  @override
  String? get role;
  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$PlayerImplCopyWith<_$PlayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MatchTeam _$MatchTeamFromJson(Map<String, dynamic> json) {
  return _MatchTeam.fromJson(json);
}

/// @nodoc
mixin _$MatchTeam {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchTeamCopyWith<MatchTeam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchTeamCopyWith<$Res> {
  factory $MatchTeamCopyWith(MatchTeam value, $Res Function(MatchTeam) then) =
      _$MatchTeamCopyWithImpl<$Res, MatchTeam>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$MatchTeamCopyWithImpl<$Res, $Val extends MatchTeam>
    implements $MatchTeamCopyWith<$Res> {
  _$MatchTeamCopyWithImpl(this._value, this._then);

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
abstract class _$$MatchTeamImplCopyWith<$Res>
    implements $MatchTeamCopyWith<$Res> {
  factory _$$MatchTeamImplCopyWith(
          _$MatchTeamImpl value, $Res Function(_$MatchTeamImpl) then) =
      __$$MatchTeamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$MatchTeamImplCopyWithImpl<$Res>
    extends _$MatchTeamCopyWithImpl<$Res, _$MatchTeamImpl>
    implements _$$MatchTeamImplCopyWith<$Res> {
  __$$MatchTeamImplCopyWithImpl(
      _$MatchTeamImpl _value, $Res Function(_$MatchTeamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$MatchTeamImpl(
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
class _$MatchTeamImpl implements _MatchTeam {
  const _$MatchTeamImpl({required this.id, required this.name});

  factory _$MatchTeamImpl.fromJson(Map<String, dynamic> json) =>
      _$$MatchTeamImplFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'MatchTeam(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchTeamImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchTeamImplCopyWith<_$MatchTeamImpl> get copyWith =>
      __$$MatchTeamImplCopyWithImpl<_$MatchTeamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MatchTeamImplToJson(
      this,
    );
  }
}

abstract class _MatchTeam implements MatchTeam {
  const factory _MatchTeam(
      {required final String id, required final String name}) = _$MatchTeamImpl;

  factory _MatchTeam.fromJson(Map<String, dynamic> json) =
      _$MatchTeamImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$MatchTeamImplCopyWith<_$MatchTeamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Score _$ScoreFromJson(Map<String, dynamic> json) {
  return _Score.fromJson(json);
}

/// @nodoc
mixin _$Score {
  String get team => throw _privateConstructorUsedError;
  int get runs => throw _privateConstructorUsedError;
  int get wickets => throw _privateConstructorUsedError;
  int get overs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScoreCopyWith<Score> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreCopyWith<$Res> {
  factory $ScoreCopyWith(Score value, $Res Function(Score) then) =
      _$ScoreCopyWithImpl<$Res, Score>;
  @useResult
  $Res call({String team, int runs, int wickets, int overs});
}

/// @nodoc
class _$ScoreCopyWithImpl<$Res, $Val extends Score>
    implements $ScoreCopyWith<$Res> {
  _$ScoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = null,
    Object? runs = null,
    Object? wickets = null,
    Object? overs = null,
  }) {
    return _then(_value.copyWith(
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$ScoreImplCopyWith<$Res> implements $ScoreCopyWith<$Res> {
  factory _$$ScoreImplCopyWith(
          _$ScoreImpl value, $Res Function(_$ScoreImpl) then) =
      __$$ScoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String team, int runs, int wickets, int overs});
}

/// @nodoc
class __$$ScoreImplCopyWithImpl<$Res>
    extends _$ScoreCopyWithImpl<$Res, _$ScoreImpl>
    implements _$$ScoreImplCopyWith<$Res> {
  __$$ScoreImplCopyWithImpl(
      _$ScoreImpl _value, $Res Function(_$ScoreImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = null,
    Object? runs = null,
    Object? wickets = null,
    Object? overs = null,
  }) {
    return _then(_$ScoreImpl(
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$ScoreImpl implements _Score {
  const _$ScoreImpl(
      {required this.team,
      required this.runs,
      required this.wickets,
      required this.overs});

  factory _$ScoreImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScoreImplFromJson(json);

  @override
  final String team;
  @override
  final int runs;
  @override
  final int wickets;
  @override
  final int overs;

  @override
  String toString() {
    return 'Score(team: $team, runs: $runs, wickets: $wickets, overs: $overs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScoreImpl &&
            (identical(other.team, team) || other.team == team) &&
            (identical(other.runs, runs) || other.runs == runs) &&
            (identical(other.wickets, wickets) || other.wickets == wickets) &&
            (identical(other.overs, overs) || other.overs == overs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, team, runs, wickets, overs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScoreImplCopyWith<_$ScoreImpl> get copyWith =>
      __$$ScoreImplCopyWithImpl<_$ScoreImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScoreImplToJson(
      this,
    );
  }
}

abstract class _Score implements Score {
  const factory _Score(
      {required final String team,
      required final int runs,
      required final int wickets,
      required final int overs}) = _$ScoreImpl;

  factory _Score.fromJson(Map<String, dynamic> json) = _$ScoreImpl.fromJson;

  @override
  String get team;
  @override
  int get runs;
  @override
  int get wickets;
  @override
  int get overs;
  @override
  @JsonKey(ignore: true)
  _$$ScoreImplCopyWith<_$ScoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
