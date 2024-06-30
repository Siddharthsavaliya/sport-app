// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coach_booking_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CoachBookingHistory _$CoachBookingHistoryFromJson(Map<String, dynamic> json) {
  return _CoachBookingHistory.fromJson(json);
}

/// @nodoc
mixin _$CoachBookingHistory {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  Coach get coachId => throw _privateConstructorUsedError;
  School get schoolId => throw _privateConstructorUsedError;
  String get qrCode => throw _privateConstructorUsedError;
  int get totalPrice => throw _privateConstructorUsedError;
  DateTime get expirationDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoachBookingHistoryCopyWith<CoachBookingHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachBookingHistoryCopyWith<$Res> {
  factory $CoachBookingHistoryCopyWith(
          CoachBookingHistory value, $Res Function(CoachBookingHistory) then) =
      _$CoachBookingHistoryCopyWithImpl<$Res, CoachBookingHistory>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      String userId,
      Coach coachId,
      School schoolId,
      String qrCode,
      int totalPrice,
      DateTime expirationDate});

  $CoachCopyWith<$Res> get coachId;
  $SchoolCopyWith<$Res> get schoolId;
}

/// @nodoc
class _$CoachBookingHistoryCopyWithImpl<$Res, $Val extends CoachBookingHistory>
    implements $CoachBookingHistoryCopyWith<$Res> {
  _$CoachBookingHistoryCopyWithImpl(this._value, this._then);

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
    Object? qrCode = null,
    Object? totalPrice = null,
    Object? expirationDate = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      coachId: null == coachId
          ? _value.coachId
          : coachId // ignore: cast_nullable_to_non_nullable
              as Coach,
      schoolId: null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as School,
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
    ) as $Val);
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
abstract class _$$CoachBookingHistoryImplCopyWith<$Res>
    implements $CoachBookingHistoryCopyWith<$Res> {
  factory _$$CoachBookingHistoryImplCopyWith(_$CoachBookingHistoryImpl value,
          $Res Function(_$CoachBookingHistoryImpl) then) =
      __$$CoachBookingHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      String userId,
      Coach coachId,
      School schoolId,
      String qrCode,
      int totalPrice,
      DateTime expirationDate});

  @override
  $CoachCopyWith<$Res> get coachId;
  @override
  $SchoolCopyWith<$Res> get schoolId;
}

/// @nodoc
class __$$CoachBookingHistoryImplCopyWithImpl<$Res>
    extends _$CoachBookingHistoryCopyWithImpl<$Res, _$CoachBookingHistoryImpl>
    implements _$$CoachBookingHistoryImplCopyWith<$Res> {
  __$$CoachBookingHistoryImplCopyWithImpl(_$CoachBookingHistoryImpl _value,
      $Res Function(_$CoachBookingHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? coachId = null,
    Object? schoolId = null,
    Object? qrCode = null,
    Object? totalPrice = null,
    Object? expirationDate = null,
  }) {
    return _then(_$CoachBookingHistoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      coachId: null == coachId
          ? _value.coachId
          : coachId // ignore: cast_nullable_to_non_nullable
              as Coach,
      schoolId: null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as School,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoachBookingHistoryImpl
    with DiagnosticableTreeMixin
    implements _CoachBookingHistory {
  const _$CoachBookingHistoryImpl(
      {@JsonKey(name: "_id") required this.id,
      required this.userId,
      required this.coachId,
      required this.schoolId,
      required this.qrCode,
      required this.totalPrice,
      required this.expirationDate});

  factory _$CoachBookingHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoachBookingHistoryImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  final String userId;
  @override
  final Coach coachId;
  @override
  final School schoolId;
  @override
  final String qrCode;
  @override
  final int totalPrice;
  @override
  final DateTime expirationDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CoachBookingHistory(id: $id, userId: $userId, coachId: $coachId, schoolId: $schoolId, qrCode: $qrCode, totalPrice: $totalPrice, expirationDate: $expirationDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CoachBookingHistory'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('coachId', coachId))
      ..add(DiagnosticsProperty('schoolId', schoolId))
      ..add(DiagnosticsProperty('qrCode', qrCode))
      ..add(DiagnosticsProperty('totalPrice', totalPrice))
      ..add(DiagnosticsProperty('expirationDate', expirationDate));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachBookingHistoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.coachId, coachId) || other.coachId == coachId) &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.expirationDate, expirationDate) ||
                other.expirationDate == expirationDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, coachId, schoolId,
      qrCode, totalPrice, expirationDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachBookingHistoryImplCopyWith<_$CoachBookingHistoryImpl> get copyWith =>
      __$$CoachBookingHistoryImplCopyWithImpl<_$CoachBookingHistoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoachBookingHistoryImplToJson(
      this,
    );
  }
}

abstract class _CoachBookingHistory implements CoachBookingHistory {
  const factory _CoachBookingHistory(
      {@JsonKey(name: "_id") required final String id,
      required final String userId,
      required final Coach coachId,
      required final School schoolId,
      required final String qrCode,
      required final int totalPrice,
      required final DateTime expirationDate}) = _$CoachBookingHistoryImpl;

  factory _CoachBookingHistory.fromJson(Map<String, dynamic> json) =
      _$CoachBookingHistoryImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  String get userId;
  @override
  Coach get coachId;
  @override
  School get schoolId;
  @override
  String get qrCode;
  @override
  int get totalPrice;
  @override
  DateTime get expirationDate;
  @override
  @JsonKey(ignore: true)
  _$$CoachBookingHistoryImplCopyWith<_$CoachBookingHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
