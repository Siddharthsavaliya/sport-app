// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'membership.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Membership _$MembershipFromJson(Map<String, dynamic> json) {
  return _Membership.fromJson(json);
}

/// @nodoc
mixin _$Membership {
  String get planType => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get planName => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double? get time => throw _privateConstructorUsedError;
  double get actualPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MembershipCopyWith<Membership> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MembershipCopyWith<$Res> {
  factory $MembershipCopyWith(
          Membership value, $Res Function(Membership) then) =
      _$MembershipCopyWithImpl<$Res, Membership>;
  @useResult
  $Res call(
      {String planType,
      @JsonKey(name: '_id') String? id,
      String? planName,
      double price,
      double? time,
      double actualPrice});
}

/// @nodoc
class _$MembershipCopyWithImpl<$Res, $Val extends Membership>
    implements $MembershipCopyWith<$Res> {
  _$MembershipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planType = null,
    Object? id = freezed,
    Object? planName = freezed,
    Object? price = null,
    Object? time = freezed,
    Object? actualPrice = null,
  }) {
    return _then(_value.copyWith(
      planType: null == planType
          ? _value.planType
          : planType // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      planName: freezed == planName
          ? _value.planName
          : planName // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as double?,
      actualPrice: null == actualPrice
          ? _value.actualPrice
          : actualPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MembershipImplCopyWith<$Res>
    implements $MembershipCopyWith<$Res> {
  factory _$$MembershipImplCopyWith(
          _$MembershipImpl value, $Res Function(_$MembershipImpl) then) =
      __$$MembershipImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String planType,
      @JsonKey(name: '_id') String? id,
      String? planName,
      double price,
      double? time,
      double actualPrice});
}

/// @nodoc
class __$$MembershipImplCopyWithImpl<$Res>
    extends _$MembershipCopyWithImpl<$Res, _$MembershipImpl>
    implements _$$MembershipImplCopyWith<$Res> {
  __$$MembershipImplCopyWithImpl(
      _$MembershipImpl _value, $Res Function(_$MembershipImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planType = null,
    Object? id = freezed,
    Object? planName = freezed,
    Object? price = null,
    Object? time = freezed,
    Object? actualPrice = null,
  }) {
    return _then(_$MembershipImpl(
      planType: null == planType
          ? _value.planType
          : planType // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      planName: freezed == planName
          ? _value.planName
          : planName // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as double?,
      actualPrice: null == actualPrice
          ? _value.actualPrice
          : actualPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MembershipImpl implements _Membership {
  const _$MembershipImpl(
      {required this.planType,
      @JsonKey(name: '_id') this.id,
      this.planName,
      required this.price,
      this.time = 0,
      required this.actualPrice});

  factory _$MembershipImpl.fromJson(Map<String, dynamic> json) =>
      _$$MembershipImplFromJson(json);

  @override
  final String planType;
  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? planName;
  @override
  final double price;
  @override
  @JsonKey()
  final double? time;
  @override
  final double actualPrice;

  @override
  String toString() {
    return 'Membership(planType: $planType, id: $id, planName: $planName, price: $price, time: $time, actualPrice: $actualPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MembershipImpl &&
            (identical(other.planType, planType) ||
                other.planType == planType) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.planName, planName) ||
                other.planName == planName) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.actualPrice, actualPrice) ||
                other.actualPrice == actualPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, planType, id, planName, price, time, actualPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MembershipImplCopyWith<_$MembershipImpl> get copyWith =>
      __$$MembershipImplCopyWithImpl<_$MembershipImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MembershipImplToJson(
      this,
    );
  }
}

abstract class _Membership implements Membership {
  const factory _Membership(
      {required final String planType,
      @JsonKey(name: '_id') final String? id,
      final String? planName,
      required final double price,
      final double? time,
      required final double actualPrice}) = _$MembershipImpl;

  factory _Membership.fromJson(Map<String, dynamic> json) =
      _$MembershipImpl.fromJson;

  @override
  String get planType;
  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get planName;
  @override
  double get price;
  @override
  double? get time;
  @override
  double get actualPrice;
  @override
  @JsonKey(ignore: true)
  _$$MembershipImplCopyWith<_$MembershipImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
