// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookingHistory _$BookingHistoryFromJson(Map<String, dynamic> json) {
  return _Booking.fromJson(json);
}

/// @nodoc
mixin _$BookingHistory {
  String? get id => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get slotId => throw _privateConstructorUsedError;
  @JsonKey(name: "groundId")
  GroundModel get ground => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get dayOfWeek => throw _privateConstructorUsedError;
  String? get startTime => throw _privateConstructorUsedError;
  String? get endTime => throw _privateConstructorUsedError;
  int? get totalCount => throw _privateConstructorUsedError;
  String get qrCode => throw _privateConstructorUsedError;
  List<User> get users => throw _privateConstructorUsedError;
  int? get totalPrice => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get v => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingHistoryCopyWith<BookingHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingHistoryCopyWith<$Res> {
  factory $BookingHistoryCopyWith(
          BookingHistory value, $Res Function(BookingHistory) then) =
      _$BookingHistoryCopyWithImpl<$Res, BookingHistory>;
  @useResult
  $Res call(
      {String? id,
      String? userId,
      String? slotId,
      @JsonKey(name: "groundId") GroundModel ground,
      String? date,
      String? dayOfWeek,
      String? startTime,
      String? endTime,
      int? totalCount,
      String qrCode,
      List<User> users,
      int? totalPrice,
      String? status,
      int? v});

  $GroundModelCopyWith<$Res> get ground;
}

/// @nodoc
class _$BookingHistoryCopyWithImpl<$Res, $Val extends BookingHistory>
    implements $BookingHistoryCopyWith<$Res> {
  _$BookingHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? slotId = freezed,
    Object? ground = null,
    Object? date = freezed,
    Object? dayOfWeek = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? totalCount = freezed,
    Object? qrCode = null,
    Object? users = null,
    Object? totalPrice = freezed,
    Object? status = freezed,
    Object? v = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      slotId: freezed == slotId
          ? _value.slotId
          : slotId // ignore: cast_nullable_to_non_nullable
              as String?,
      ground: null == ground
          ? _value.ground
          : ground // ignore: cast_nullable_to_non_nullable
              as GroundModel,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      dayOfWeek: freezed == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GroundModelCopyWith<$Res> get ground {
    return $GroundModelCopyWith<$Res>(_value.ground, (value) {
      return _then(_value.copyWith(ground: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookingImplCopyWith<$Res>
    implements $BookingHistoryCopyWith<$Res> {
  factory _$$BookingImplCopyWith(
          _$BookingImpl value, $Res Function(_$BookingImpl) then) =
      __$$BookingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? userId,
      String? slotId,
      @JsonKey(name: "groundId") GroundModel ground,
      String? date,
      String? dayOfWeek,
      String? startTime,
      String? endTime,
      int? totalCount,
      String qrCode,
      List<User> users,
      int? totalPrice,
      String? status,
      int? v});

  @override
  $GroundModelCopyWith<$Res> get ground;
}

/// @nodoc
class __$$BookingImplCopyWithImpl<$Res>
    extends _$BookingHistoryCopyWithImpl<$Res, _$BookingImpl>
    implements _$$BookingImplCopyWith<$Res> {
  __$$BookingImplCopyWithImpl(
      _$BookingImpl _value, $Res Function(_$BookingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? slotId = freezed,
    Object? ground = null,
    Object? date = freezed,
    Object? dayOfWeek = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? totalCount = freezed,
    Object? qrCode = null,
    Object? users = null,
    Object? totalPrice = freezed,
    Object? status = freezed,
    Object? v = freezed,
  }) {
    return _then(_$BookingImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      slotId: freezed == slotId
          ? _value.slotId
          : slotId // ignore: cast_nullable_to_non_nullable
              as String?,
      ground: null == ground
          ? _value.ground
          : ground // ignore: cast_nullable_to_non_nullable
              as GroundModel,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      dayOfWeek: freezed == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingImpl implements _Booking {
  const _$BookingImpl(
      {required this.id,
      required this.userId,
      required this.slotId,
      @JsonKey(name: "groundId") required this.ground,
      required this.date,
      required this.dayOfWeek,
      required this.startTime,
      required this.endTime,
      required this.totalCount,
      required this.qrCode,
      required final List<User> users,
      required this.totalPrice,
      required this.status,
      required this.v})
      : _users = users;

  factory _$BookingImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingImplFromJson(json);

  @override
  final String? id;
  @override
  final String? userId;
  @override
  final String? slotId;
  @override
  @JsonKey(name: "groundId")
  final GroundModel ground;
  @override
  final String? date;
  @override
  final String? dayOfWeek;
  @override
  final String? startTime;
  @override
  final String? endTime;
  @override
  final int? totalCount;
  @override
  final String qrCode;
  final List<User> _users;
  @override
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  final int? totalPrice;
  @override
  final String? status;
  @override
  final int? v;

  @override
  String toString() {
    return 'BookingHistory(id: $id, userId: $userId, slotId: $slotId, ground: $ground, date: $date, dayOfWeek: $dayOfWeek, startTime: $startTime, endTime: $endTime, totalCount: $totalCount, qrCode: $qrCode, users: $users, totalPrice: $totalPrice, status: $status, v: $v)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.slotId, slotId) || other.slotId == slotId) &&
            (identical(other.ground, ground) || other.ground == ground) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                other.dayOfWeek == dayOfWeek) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.v, v) || other.v == v));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      slotId,
      ground,
      date,
      dayOfWeek,
      startTime,
      endTime,
      totalCount,
      qrCode,
      const DeepCollectionEquality().hash(_users),
      totalPrice,
      status,
      v);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingImplCopyWith<_$BookingImpl> get copyWith =>
      __$$BookingImplCopyWithImpl<_$BookingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingImplToJson(
      this,
    );
  }
}

abstract class _Booking implements BookingHistory {
  const factory _Booking(
      {required final String? id,
      required final String? userId,
      required final String? slotId,
      @JsonKey(name: "groundId") required final GroundModel ground,
      required final String? date,
      required final String? dayOfWeek,
      required final String? startTime,
      required final String? endTime,
      required final int? totalCount,
      required final String qrCode,
      required final List<User> users,
      required final int? totalPrice,
      required final String? status,
      required final int? v}) = _$BookingImpl;

  factory _Booking.fromJson(Map<String, dynamic> json) = _$BookingImpl.fromJson;

  @override
  String? get id;
  @override
  String? get userId;
  @override
  String? get slotId;
  @override
  @JsonKey(name: "groundId")
  GroundModel get ground;
  @override
  String? get date;
  @override
  String? get dayOfWeek;
  @override
  String? get startTime;
  @override
  String? get endTime;
  @override
  int? get totalCount;
  @override
  String get qrCode;
  @override
  List<User> get users;
  @override
  int? get totalPrice;
  @override
  String? get status;
  @override
  int? get v;
  @override
  @JsonKey(ignore: true)
  _$$BookingImplCopyWith<_$BookingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({String firstName, String lastName, String phoneNumber});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? phoneNumber = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String firstName, String lastName, String phoneNumber});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? phoneNumber = null,
  }) {
    return _then(_$UserImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {required this.firstName,
      required this.lastName,
      required this.phoneNumber});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'User(firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, firstName, lastName, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {required final String firstName,
      required final String lastName,
      required final String phoneNumber}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
