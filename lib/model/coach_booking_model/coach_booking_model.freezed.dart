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
  String get startTime => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;
  String get transactionId => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get qrCode => throw _privateConstructorUsedError;
  num get totalPrice => throw _privateConstructorUsedError;
  DateTime get expirationDate => throw _privateConstructorUsedError;

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
      {String startTime,
      String endTime,
      String transactionId,
      String url,
      String qrCode,
      num totalPrice,
      DateTime expirationDate});
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
    Object? startTime = null,
    Object? endTime = null,
    Object? transactionId = null,
    Object? url = null,
    Object? qrCode = null,
    Object? totalPrice = null,
    Object? expirationDate = null,
  }) {
    return _then(_value.copyWith(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as num,
      expirationDate: null == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
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
      {String startTime,
      String endTime,
      String transactionId,
      String url,
      String qrCode,
      num totalPrice,
      DateTime expirationDate});
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
    Object? startTime = null,
    Object? endTime = null,
    Object? transactionId = null,
    Object? url = null,
    Object? qrCode = null,
    Object? totalPrice = null,
    Object? expirationDate = null,
  }) {
    return _then(_$CoachBookingModelImpl(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as num,
      expirationDate: null == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoachBookingModelImpl implements _CoachBookingModel {
  const _$CoachBookingModelImpl(
      {required this.startTime,
      required this.endTime,
      required this.transactionId,
      required this.url,
      required this.qrCode,
      required this.totalPrice,
      required this.expirationDate});

  factory _$CoachBookingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoachBookingModelImplFromJson(json);

  @override
  final String startTime;
  @override
  final String endTime;
  @override
  final String transactionId;
  @override
  final String url;
  @override
  final String qrCode;
  @override
  final num totalPrice;
  @override
  final DateTime expirationDate;

  @override
  String toString() {
    return 'CoachBookingModel(startTime: $startTime, endTime: $endTime, transactionId: $transactionId, url: $url, qrCode: $qrCode, totalPrice: $totalPrice, expirationDate: $expirationDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachBookingModelImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.expirationDate, expirationDate) ||
                other.expirationDate == expirationDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startTime, endTime,
      transactionId, url, qrCode, totalPrice, expirationDate);

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
      {required final String startTime,
      required final String endTime,
      required final String transactionId,
      required final String url,
      required final String qrCode,
      required final num totalPrice,
      required final DateTime expirationDate}) = _$CoachBookingModelImpl;

  factory _CoachBookingModel.fromJson(Map<String, dynamic> json) =
      _$CoachBookingModelImpl.fromJson;

  @override
  String get startTime;
  @override
  String get endTime;
  @override
  String get transactionId;
  @override
  String get url;
  @override
  String get qrCode;
  @override
  num get totalPrice;
  @override
  DateTime get expirationDate;
  @override
  @JsonKey(ignore: true)
  _$$CoachBookingModelImplCopyWith<_$CoachBookingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
