// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coach_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CoachHistoryModel _$CoachHistoryModelFromJson(Map<String, dynamic> json) {
  return _CoachHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$CoachHistoryModel {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  User get userId => throw _privateConstructorUsedError;
  Coach get coachId => throw _privateConstructorUsedError;
  School get schoolId => throw _privateConstructorUsedError;
  String? get startTime => throw _privateConstructorUsedError;
  String? get endTime => throw _privateConstructorUsedError;
  String get qrCode => throw _privateConstructorUsedError;
  List<String> get days => throw _privateConstructorUsedError;
  String get transactionId => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;
  double get subtotal => throw _privateConstructorUsedError;
  double get gstAmount => throw _privateConstructorUsedError;
  DateTime get expirationDate => throw _privateConstructorUsedError;
  String get payment => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get bookingDateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoachHistoryModelCopyWith<CoachHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachHistoryModelCopyWith<$Res> {
  factory $CoachHistoryModelCopyWith(
          CoachHistoryModel value, $Res Function(CoachHistoryModel) then) =
      _$CoachHistoryModelCopyWithImpl<$Res, CoachHistoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      User userId,
      Coach coachId,
      School schoolId,
      String? startTime,
      String? endTime,
      String qrCode,
      List<String> days,
      String transactionId,
      double totalPrice,
      double subtotal,
      double gstAmount,
      DateTime expirationDate,
      String payment,
      DateTime createdAt,
      DateTime updatedAt,
      String url,
      String bookingDateTime});

  $UserCopyWith<$Res> get userId;
  $CoachCopyWith<$Res> get coachId;
  $SchoolCopyWith<$Res> get schoolId;
}

/// @nodoc
class _$CoachHistoryModelCopyWithImpl<$Res, $Val extends CoachHistoryModel>
    implements $CoachHistoryModelCopyWith<$Res> {
  _$CoachHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? coachId = null,
    Object? schoolId = null,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? qrCode = null,
    Object? days = null,
    Object? transactionId = null,
    Object? totalPrice = null,
    Object? subtotal = null,
    Object? gstAmount = null,
    Object? expirationDate = null,
    Object? payment = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? url = null,
    Object? bookingDateTime = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as User,
      coachId: null == coachId
          ? _value.coachId
          : coachId // ignore: cast_nullable_to_non_nullable
              as Coach,
      schoolId: null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as School,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<String>,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double,
      gstAmount: null == gstAmount
          ? _value.gstAmount
          : gstAmount // ignore: cast_nullable_to_non_nullable
              as double,
      expirationDate: null == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      bookingDateTime: null == bookingDateTime
          ? _value.bookingDateTime
          : bookingDateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get userId {
    return $UserCopyWith<$Res>(_value.userId, (value) {
      return _then(_value.copyWith(userId: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CoachCopyWith<$Res> get coachId {
    return $CoachCopyWith<$Res>(_value.coachId, (value) {
      return _then(_value.copyWith(coachId: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SchoolCopyWith<$Res> get schoolId {
    return $SchoolCopyWith<$Res>(_value.schoolId, (value) {
      return _then(_value.copyWith(schoolId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoachHistoryModelImplCopyWith<$Res>
    implements $CoachHistoryModelCopyWith<$Res> {
  factory _$$CoachHistoryModelImplCopyWith(_$CoachHistoryModelImpl value,
          $Res Function(_$CoachHistoryModelImpl) then) =
      __$$CoachHistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      User userId,
      Coach coachId,
      School schoolId,
      String? startTime,
      String? endTime,
      String qrCode,
      List<String> days,
      String transactionId,
      double totalPrice,
      double subtotal,
      double gstAmount,
      DateTime expirationDate,
      String payment,
      DateTime createdAt,
      DateTime updatedAt,
      String url,
      String bookingDateTime});

  @override
  $UserCopyWith<$Res> get userId;
  @override
  $CoachCopyWith<$Res> get coachId;
  @override
  $SchoolCopyWith<$Res> get schoolId;
}

/// @nodoc
class __$$CoachHistoryModelImplCopyWithImpl<$Res>
    extends _$CoachHistoryModelCopyWithImpl<$Res, _$CoachHistoryModelImpl>
    implements _$$CoachHistoryModelImplCopyWith<$Res> {
  __$$CoachHistoryModelImplCopyWithImpl(_$CoachHistoryModelImpl _value,
      $Res Function(_$CoachHistoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? coachId = null,
    Object? schoolId = null,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? qrCode = null,
    Object? days = null,
    Object? transactionId = null,
    Object? totalPrice = null,
    Object? subtotal = null,
    Object? gstAmount = null,
    Object? expirationDate = null,
    Object? payment = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? url = null,
    Object? bookingDateTime = null,
  }) {
    return _then(_$CoachHistoryModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as User,
      coachId: null == coachId
          ? _value.coachId
          : coachId // ignore: cast_nullable_to_non_nullable
              as Coach,
      schoolId: null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as School,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      days: null == days
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as List<String>,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double,
      gstAmount: null == gstAmount
          ? _value.gstAmount
          : gstAmount // ignore: cast_nullable_to_non_nullable
              as double,
      expirationDate: null == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      bookingDateTime: null == bookingDateTime
          ? _value.bookingDateTime
          : bookingDateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoachHistoryModelImpl implements _CoachHistoryModel {
  const _$CoachHistoryModelImpl(
      {@JsonKey(name: "_id") required this.id,
      required this.userId,
      required this.coachId,
      required this.schoolId,
      this.startTime,
      this.endTime,
      required this.qrCode,
      required final List<String> days,
      required this.transactionId,
      required this.totalPrice,
      required this.subtotal,
      required this.gstAmount,
      required this.expirationDate,
      required this.payment,
      required this.createdAt,
      required this.updatedAt,
      required this.url,
      required this.bookingDateTime})
      : _days = days;

  factory _$CoachHistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoachHistoryModelImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  final User userId;
  @override
  final Coach coachId;
  @override
  final School schoolId;
  @override
  final String? startTime;
  @override
  final String? endTime;
  @override
  final String qrCode;
  final List<String> _days;
  @override
  List<String> get days {
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_days);
  }

  @override
  final String transactionId;
  @override
  final double totalPrice;
  @override
  final double subtotal;
  @override
  final double gstAmount;
  @override
  final DateTime expirationDate;
  @override
  final String payment;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String url;
  @override
  final String bookingDateTime;

  @override
  String toString() {
    return 'CoachHistoryModel(id: $id, userId: $userId, coachId: $coachId, schoolId: $schoolId, startTime: $startTime, endTime: $endTime, qrCode: $qrCode, days: $days, transactionId: $transactionId, totalPrice: $totalPrice, subtotal: $subtotal, gstAmount: $gstAmount, expirationDate: $expirationDate, payment: $payment, createdAt: $createdAt, updatedAt: $updatedAt, url: $url, bookingDateTime: $bookingDateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachHistoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.coachId, coachId) || other.coachId == coachId) &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode) &&
            const DeepCollectionEquality().equals(other._days, _days) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.gstAmount, gstAmount) ||
                other.gstAmount == gstAmount) &&
            (identical(other.expirationDate, expirationDate) ||
                other.expirationDate == expirationDate) &&
            (identical(other.payment, payment) || other.payment == payment) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.bookingDateTime, bookingDateTime) ||
                other.bookingDateTime == bookingDateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      coachId,
      schoolId,
      startTime,
      endTime,
      qrCode,
      const DeepCollectionEquality().hash(_days),
      transactionId,
      totalPrice,
      subtotal,
      gstAmount,
      expirationDate,
      payment,
      createdAt,
      updatedAt,
      url,
      bookingDateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachHistoryModelImplCopyWith<_$CoachHistoryModelImpl> get copyWith =>
      __$$CoachHistoryModelImplCopyWithImpl<_$CoachHistoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoachHistoryModelImplToJson(
      this,
    );
  }
}

abstract class _CoachHistoryModel implements CoachHistoryModel {
  const factory _CoachHistoryModel(
      {@JsonKey(name: "_id") required final String id,
      required final User userId,
      required final Coach coachId,
      required final School schoolId,
      final String? startTime,
      final String? endTime,
      required final String qrCode,
      required final List<String> days,
      required final String transactionId,
      required final double totalPrice,
      required final double subtotal,
      required final double gstAmount,
      required final DateTime expirationDate,
      required final String payment,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final String url,
      required final String bookingDateTime}) = _$CoachHistoryModelImpl;

  factory _CoachHistoryModel.fromJson(Map<String, dynamic> json) =
      _$CoachHistoryModelImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  User get userId;
  @override
  Coach get coachId;
  @override
  School get schoolId;
  @override
  String? get startTime;
  @override
  String? get endTime;
  @override
  String get qrCode;
  @override
  List<String> get days;
  @override
  String get transactionId;
  @override
  double get totalPrice;
  @override
  double get subtotal;
  @override
  double get gstAmount;
  @override
  DateTime get expirationDate;
  @override
  String get payment;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String get url;
  @override
  String get bookingDateTime;
  @override
  @JsonKey(ignore: true)
  _$$CoachHistoryModelImplCopyWith<_$CoachHistoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get userName => throw _privateConstructorUsedError;
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
  $Res call({String userName, String phoneNumber});
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
    Object? userName = null,
    Object? phoneNumber = null,
  }) {
    return _then(_value.copyWith(
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
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userName, String phoneNumber});
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
    Object? userName = null,
    Object? phoneNumber = null,
  }) {
    return _then(_$UserImpl(
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
class _$UserImpl implements _User {
  const _$UserImpl({required this.userName, required this.phoneNumber});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String userName;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'User(userName: $userName, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userName, phoneNumber);

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
      {required final String userName,
      required final String phoneNumber}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String get userName;
  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Coach _$CoachFromJson(Map<String, dynamic> json) {
  return _Coach.fromJson(json);
}

/// @nodoc
mixin _$Coach {
  List<String> get sportsgrounds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoachCopyWith<Coach> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachCopyWith<$Res> {
  factory $CoachCopyWith(Coach value, $Res Function(Coach) then) =
      _$CoachCopyWithImpl<$Res, Coach>;
  @useResult
  $Res call({List<String> sportsgrounds});
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
    Object? sportsgrounds = null,
  }) {
    return _then(_value.copyWith(
      sportsgrounds: null == sportsgrounds
          ? _value.sportsgrounds
          : sportsgrounds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoachImplCopyWith<$Res> implements $CoachCopyWith<$Res> {
  factory _$$CoachImplCopyWith(
          _$CoachImpl value, $Res Function(_$CoachImpl) then) =
      __$$CoachImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> sportsgrounds});
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
    Object? sportsgrounds = null,
  }) {
    return _then(_$CoachImpl(
      sportsgrounds: null == sportsgrounds
          ? _value._sportsgrounds
          : sportsgrounds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoachImpl implements _Coach {
  const _$CoachImpl({required final List<String> sportsgrounds})
      : _sportsgrounds = sportsgrounds;

  factory _$CoachImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoachImplFromJson(json);

  final List<String> _sportsgrounds;
  @override
  List<String> get sportsgrounds {
    if (_sportsgrounds is EqualUnmodifiableListView) return _sportsgrounds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sportsgrounds);
  }

  @override
  String toString() {
    return 'Coach(sportsgrounds: $sportsgrounds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachImpl &&
            const DeepCollectionEquality()
                .equals(other._sportsgrounds, _sportsgrounds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_sportsgrounds));

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
  const factory _Coach({required final List<String> sportsgrounds}) =
      _$CoachImpl;

  factory _Coach.fromJson(Map<String, dynamic> json) = _$CoachImpl.fromJson;

  @override
  List<String> get sportsgrounds;
  @override
  @JsonKey(ignore: true)
  _$$CoachImplCopyWith<_$CoachImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

School _$SchoolFromJson(Map<String, dynamic> json) {
  return _School.fromJson(json);
}

/// @nodoc
mixin _$School {
  String get institutionName => throw _privateConstructorUsedError;
  String get institutionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SchoolCopyWith<School> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchoolCopyWith<$Res> {
  factory $SchoolCopyWith(School value, $Res Function(School) then) =
      _$SchoolCopyWithImpl<$Res, School>;
  @useResult
  $Res call({String institutionName, String institutionId});
}

/// @nodoc
class _$SchoolCopyWithImpl<$Res, $Val extends School>
    implements $SchoolCopyWith<$Res> {
  _$SchoolCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? institutionName = null,
    Object? institutionId = null,
  }) {
    return _then(_value.copyWith(
      institutionName: null == institutionName
          ? _value.institutionName
          : institutionName // ignore: cast_nullable_to_non_nullable
              as String,
      institutionId: null == institutionId
          ? _value.institutionId
          : institutionId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SchoolImplCopyWith<$Res> implements $SchoolCopyWith<$Res> {
  factory _$$SchoolImplCopyWith(
          _$SchoolImpl value, $Res Function(_$SchoolImpl) then) =
      __$$SchoolImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String institutionName, String institutionId});
}

/// @nodoc
class __$$SchoolImplCopyWithImpl<$Res>
    extends _$SchoolCopyWithImpl<$Res, _$SchoolImpl>
    implements _$$SchoolImplCopyWith<$Res> {
  __$$SchoolImplCopyWithImpl(
      _$SchoolImpl _value, $Res Function(_$SchoolImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? institutionName = null,
    Object? institutionId = null,
  }) {
    return _then(_$SchoolImpl(
      institutionName: null == institutionName
          ? _value.institutionName
          : institutionName // ignore: cast_nullable_to_non_nullable
              as String,
      institutionId: null == institutionId
          ? _value.institutionId
          : institutionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SchoolImpl implements _School {
  const _$SchoolImpl(
      {required this.institutionName, required this.institutionId});

  factory _$SchoolImpl.fromJson(Map<String, dynamic> json) =>
      _$$SchoolImplFromJson(json);

  @override
  final String institutionName;
  @override
  final String institutionId;

  @override
  String toString() {
    return 'School(institutionName: $institutionName, institutionId: $institutionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchoolImpl &&
            (identical(other.institutionName, institutionName) ||
                other.institutionName == institutionName) &&
            (identical(other.institutionId, institutionId) ||
                other.institutionId == institutionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, institutionName, institutionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SchoolImplCopyWith<_$SchoolImpl> get copyWith =>
      __$$SchoolImplCopyWithImpl<_$SchoolImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SchoolImplToJson(
      this,
    );
  }
}

abstract class _School implements School {
  const factory _School(
      {required final String institutionName,
      required final String institutionId}) = _$SchoolImpl;

  factory _School.fromJson(Map<String, dynamic> json) = _$SchoolImpl.fromJson;

  @override
  String get institutionName;
  @override
  String get institutionId;
  @override
  @JsonKey(ignore: true)
  _$$SchoolImplCopyWith<_$SchoolImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
