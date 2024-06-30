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

CoachBookingHistoryModel _$CoachBookingHistoryModelFromJson(
    Map<String, dynamic> json) {
  return _CoachBookingHistory.fromJson(json);
}

/// @nodoc
mixin _$CoachBookingHistoryModel {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  Coach get coachId => throw _privateConstructorUsedError;
  School get schoolId => throw _privateConstructorUsedError;
  String get qrCode => throw _privateConstructorUsedError;
  int get totalPrice => throw _privateConstructorUsedError;
  num? get gstAmount => throw _privateConstructorUsedError;
  String? get startTime => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get endTime => throw _privateConstructorUsedError;
  num? get subtotal => throw _privateConstructorUsedError;
  DateTime get expirationDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoachBookingHistoryModelCopyWith<CoachBookingHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachBookingHistoryModelCopyWith<$Res> {
  factory $CoachBookingHistoryModelCopyWith(CoachBookingHistoryModel value,
          $Res Function(CoachBookingHistoryModel) then) =
      _$CoachBookingHistoryModelCopyWithImpl<$Res, CoachBookingHistoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      String userId,
      Coach coachId,
      School schoolId,
      String qrCode,
      int totalPrice,
      num? gstAmount,
      String? startTime,
      String? createdAt,
      String? endTime,
      num? subtotal,
      DateTime expirationDate});

  $CoachCopyWith<$Res> get coachId;
  $SchoolCopyWith<$Res> get schoolId;
}

/// @nodoc
class _$CoachBookingHistoryModelCopyWithImpl<$Res,
        $Val extends CoachBookingHistoryModel>
    implements $CoachBookingHistoryModelCopyWith<$Res> {
  _$CoachBookingHistoryModelCopyWithImpl(this._value, this._then);

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
    Object? gstAmount = freezed,
    Object? startTime = freezed,
    Object? createdAt = freezed,
    Object? endTime = freezed,
    Object? subtotal = freezed,
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
      gstAmount: freezed == gstAmount
          ? _value.gstAmount
          : gstAmount // ignore: cast_nullable_to_non_nullable
              as num?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      subtotal: freezed == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as num?,
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
    implements $CoachBookingHistoryModelCopyWith<$Res> {
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
      num? gstAmount,
      String? startTime,
      String? createdAt,
      String? endTime,
      num? subtotal,
      DateTime expirationDate});

  @override
  $CoachCopyWith<$Res> get coachId;
  @override
  $SchoolCopyWith<$Res> get schoolId;
}

/// @nodoc
class __$$CoachBookingHistoryImplCopyWithImpl<$Res>
    extends _$CoachBookingHistoryModelCopyWithImpl<$Res,
        _$CoachBookingHistoryImpl>
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
    Object? gstAmount = freezed,
    Object? startTime = freezed,
    Object? createdAt = freezed,
    Object? endTime = freezed,
    Object? subtotal = freezed,
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
      gstAmount: freezed == gstAmount
          ? _value.gstAmount
          : gstAmount // ignore: cast_nullable_to_non_nullable
              as num?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      subtotal: freezed == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as num?,
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
      required this.gstAmount,
      required this.startTime,
      required this.createdAt,
      required this.endTime,
      required this.subtotal,
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
  final num? gstAmount;
  @override
  final String? startTime;
  @override
  final String? createdAt;
  @override
  final String? endTime;
  @override
  final num? subtotal;
  @override
  final DateTime expirationDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CoachBookingHistoryModel(id: $id, userId: $userId, coachId: $coachId, schoolId: $schoolId, qrCode: $qrCode, totalPrice: $totalPrice, gstAmount: $gstAmount, startTime: $startTime, createdAt: $createdAt, endTime: $endTime, subtotal: $subtotal, expirationDate: $expirationDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CoachBookingHistoryModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('coachId', coachId))
      ..add(DiagnosticsProperty('schoolId', schoolId))
      ..add(DiagnosticsProperty('qrCode', qrCode))
      ..add(DiagnosticsProperty('totalPrice', totalPrice))
      ..add(DiagnosticsProperty('gstAmount', gstAmount))
      ..add(DiagnosticsProperty('startTime', startTime))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('endTime', endTime))
      ..add(DiagnosticsProperty('subtotal', subtotal))
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
            (identical(other.gstAmount, gstAmount) ||
                other.gstAmount == gstAmount) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.expirationDate, expirationDate) ||
                other.expirationDate == expirationDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      coachId,
      schoolId,
      qrCode,
      totalPrice,
      gstAmount,
      startTime,
      createdAt,
      endTime,
      subtotal,
      expirationDate);

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

abstract class _CoachBookingHistory implements CoachBookingHistoryModel {
  const factory _CoachBookingHistory(
      {@JsonKey(name: "_id") required final String id,
      required final String userId,
      required final Coach coachId,
      required final School schoolId,
      required final String qrCode,
      required final int totalPrice,
      required final num? gstAmount,
      required final String? startTime,
      required final String? createdAt,
      required final String? endTime,
      required final num? subtotal,
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
  num? get gstAmount;
  @override
  String? get startTime;
  @override
  String? get createdAt;
  @override
  String? get endTime;
  @override
  num? get subtotal;
  @override
  DateTime get expirationDate;
  @override
  @JsonKey(ignore: true)
  _$$CoachBookingHistoryImplCopyWith<_$CoachBookingHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
