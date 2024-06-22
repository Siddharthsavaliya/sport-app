// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coach_booking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CoachBookingModel _$CoachBookingModelFromJson(Map<String, dynamic> json) {
  return _CoachBookingModel.fromJson(json);
}

/// @nodoc
mixin _$CoachBookingModel {
  CoachBooking get coachBooking => throw _privateConstructorUsedError;
  String get starttime => throw _privateConstructorUsedError;
  String get endtime => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoachBookingModelCopyWith<CoachBookingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachBookingModelCopyWith<$Res> {
  factory $CoachBookingModelCopyWith(
          CoachBookingModel value, $Res Function(CoachBookingModel) then) =
      _$CoachBookingModelCopyWithImpl<$Res, CoachBookingModel>;
  @useResult
  $Res call(
      {CoachBooking coachBooking,
      String starttime,
      String endtime,
      String userName,
      String phoneNumber});

  $CoachBookingCopyWith<$Res> get coachBooking;
}

/// @nodoc
class _$CoachBookingModelCopyWithImpl<$Res, $Val extends CoachBookingModel>
    implements $CoachBookingModelCopyWith<$Res> {
  _$CoachBookingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coachBooking = null,
    Object? starttime = null,
    Object? endtime = null,
    Object? userName = null,
    Object? phoneNumber = null,
  }) {
    return _then(_value.copyWith(
      coachBooking: null == coachBooking
          ? _value.coachBooking
          : coachBooking // ignore: cast_nullable_to_non_nullable
              as CoachBooking,
      starttime: null == starttime
          ? _value.starttime
          : starttime // ignore: cast_nullable_to_non_nullable
              as String,
      endtime: null == endtime
          ? _value.endtime
          : endtime // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoachBookingCopyWith<$Res> get coachBooking {
    return $CoachBookingCopyWith<$Res>(_value.coachBooking, (value) {
      return _then(_value.copyWith(coachBooking: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoachBookingModelImplCopyWith<$Res>
    implements $CoachBookingModelCopyWith<$Res> {
  factory _$$CoachBookingModelImplCopyWith(_$CoachBookingModelImpl value,
          $Res Function(_$CoachBookingModelImpl) then) =
      __$$CoachBookingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CoachBooking coachBooking,
      String starttime,
      String endtime,
      String userName,
      String phoneNumber});

  @override
  $CoachBookingCopyWith<$Res> get coachBooking;
}

/// @nodoc
class __$$CoachBookingModelImplCopyWithImpl<$Res>
    extends _$CoachBookingModelCopyWithImpl<$Res, _$CoachBookingModelImpl>
    implements _$$CoachBookingModelImplCopyWith<$Res> {
  __$$CoachBookingModelImplCopyWithImpl(_$CoachBookingModelImpl _value,
      $Res Function(_$CoachBookingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coachBooking = null,
    Object? starttime = null,
    Object? endtime = null,
    Object? userName = null,
    Object? phoneNumber = null,
  }) {
    return _then(_$CoachBookingModelImpl(
      coachBooking: null == coachBooking
          ? _value.coachBooking
          : coachBooking // ignore: cast_nullable_to_non_nullable
              as CoachBooking,
      starttime: null == starttime
          ? _value.starttime
          : starttime // ignore: cast_nullable_to_non_nullable
              as String,
      endtime: null == endtime
          ? _value.endtime
          : endtime // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
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
class _$CoachBookingModelImpl implements _CoachBookingModel {
  const _$CoachBookingModelImpl(
      {required this.coachBooking,
      required this.starttime,
      required this.endtime,
      required this.userName,
      required this.phoneNumber});

  factory _$CoachBookingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoachBookingModelImplFromJson(json);

  @override
  final CoachBooking coachBooking;
  @override
  final String starttime;
  @override
  final String endtime;
  @override
  final String userName;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'CoachBookingModel(coachBooking: $coachBooking, starttime: $starttime, endtime: $endtime, userName: $userName, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachBookingModelImpl &&
            (identical(other.coachBooking, coachBooking) ||
                other.coachBooking == coachBooking) &&
            (identical(other.starttime, starttime) ||
                other.starttime == starttime) &&
            (identical(other.endtime, endtime) || other.endtime == endtime) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, coachBooking, starttime, endtime, userName, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachBookingModelImplCopyWith<_$CoachBookingModelImpl> get copyWith =>
      __$$CoachBookingModelImplCopyWithImpl<_$CoachBookingModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoachBookingModelImplToJson(
      this,
    );
  }
}

abstract class _CoachBookingModel implements CoachBookingModel {
  const factory _CoachBookingModel(
      {required final CoachBooking coachBooking,
      required final String starttime,
      required final String endtime,
      required final String userName,
      required final String phoneNumber}) = _$CoachBookingModelImpl;

  factory _CoachBookingModel.fromJson(Map<String, dynamic> json) =
      _$CoachBookingModelImpl.fromJson;

  @override
  CoachBooking get coachBooking;
  @override
  String get starttime;
  @override
  String get endtime;
  @override
  String get userName;
  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$CoachBookingModelImplCopyWith<_$CoachBookingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CoachBooking _$CoachBookingFromJson(Map<String, dynamic> json) {
  return _CoachBooking.fromJson(json);
}

/// @nodoc
mixin _$CoachBooking {
  String get userId => throw _privateConstructorUsedError;
  String get coachId => throw _privateConstructorUsedError;
  String get qrCode => throw _privateConstructorUsedError;
  int get totalPrice => throw _privateConstructorUsedError;
  DateTime get expirationDate => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: '__v')
  int get v => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoachBookingCopyWith<CoachBooking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachBookingCopyWith<$Res> {
  factory $CoachBookingCopyWith(
          CoachBooking value, $Res Function(CoachBooking) then) =
      _$CoachBookingCopyWithImpl<$Res, CoachBooking>;
  @useResult
  $Res call(
      {String userId,
      String coachId,
      String qrCode,
      int totalPrice,
      DateTime expirationDate,
      @JsonKey(name: '_id') String id,
      @JsonKey(name: '__v') int v});
}

/// @nodoc
class _$CoachBookingCopyWithImpl<$Res, $Val extends CoachBooking>
    implements $CoachBookingCopyWith<$Res> {
  _$CoachBookingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? coachId = null,
    Object? qrCode = null,
    Object? totalPrice = null,
    Object? expirationDate = null,
    Object? id = null,
    Object? v = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      coachId: null == coachId
          ? _value.coachId
          : coachId // ignore: cast_nullable_to_non_nullable
              as String,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      expirationDate: null == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      v: null == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoachBookingImplCopyWith<$Res>
    implements $CoachBookingCopyWith<$Res> {
  factory _$$CoachBookingImplCopyWith(
          _$CoachBookingImpl value, $Res Function(_$CoachBookingImpl) then) =
      __$$CoachBookingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String coachId,
      String qrCode,
      int totalPrice,
      DateTime expirationDate,
      @JsonKey(name: '_id') String id,
      @JsonKey(name: '__v') int v});
}

/// @nodoc
class __$$CoachBookingImplCopyWithImpl<$Res>
    extends _$CoachBookingCopyWithImpl<$Res, _$CoachBookingImpl>
    implements _$$CoachBookingImplCopyWith<$Res> {
  __$$CoachBookingImplCopyWithImpl(
      _$CoachBookingImpl _value, $Res Function(_$CoachBookingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? coachId = null,
    Object? qrCode = null,
    Object? totalPrice = null,
    Object? expirationDate = null,
    Object? id = null,
    Object? v = null,
  }) {
    return _then(_$CoachBookingImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      coachId: null == coachId
          ? _value.coachId
          : coachId // ignore: cast_nullable_to_non_nullable
              as String,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      expirationDate: null == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      v: null == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoachBookingImpl implements _CoachBooking {
  const _$CoachBookingImpl(
      {required this.userId,
      required this.coachId,
      required this.qrCode,
      required this.totalPrice,
      required this.expirationDate,
      @JsonKey(name: '_id') required this.id,
      @JsonKey(name: '__v') required this.v});

  factory _$CoachBookingImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoachBookingImplFromJson(json);

  @override
  final String userId;
  @override
  final String coachId;
  @override
  final String qrCode;
  @override
  final int totalPrice;
  @override
  final DateTime expirationDate;
  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: '__v')
  final int v;

  @override
  String toString() {
    return 'CoachBooking(userId: $userId, coachId: $coachId, qrCode: $qrCode, totalPrice: $totalPrice, expirationDate: $expirationDate, id: $id, v: $v)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachBookingImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.coachId, coachId) || other.coachId == coachId) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.expirationDate, expirationDate) ||
                other.expirationDate == expirationDate) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.v, v) || other.v == v));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, userId, coachId, qrCode, totalPrice, expirationDate, id, v);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachBookingImplCopyWith<_$CoachBookingImpl> get copyWith =>
      __$$CoachBookingImplCopyWithImpl<_$CoachBookingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoachBookingImplToJson(
      this,
    );
  }
}

abstract class _CoachBooking implements CoachBooking {
  const factory _CoachBooking(
      {required final String userId,
      required final String coachId,
      required final String qrCode,
      required final int totalPrice,
      required final DateTime expirationDate,
      @JsonKey(name: '_id') required final String id,
      @JsonKey(name: '__v') required final int v}) = _$CoachBookingImpl;

  factory _CoachBooking.fromJson(Map<String, dynamic> json) =
      _$CoachBookingImpl.fromJson;

  @override
  String get userId;
  @override
  String get coachId;
  @override
  String get qrCode;
  @override
  int get totalPrice;
  @override
  DateTime get expirationDate;
  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(name: '__v')
  int get v;
  @override
  @JsonKey(ignore: true)
  _$$CoachBookingImplCopyWith<_$CoachBookingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
