// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_purchase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyPurchase _$MyPurchaseFromJson(Map<String, dynamic> json) {
  return _MyPurchase.fromJson(json);
}

/// @nodoc
mixin _$MyPurchase {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  Membership? get subscriptionPlan => throw _privateConstructorUsedError;
  DateTime? get purchaseDate => throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;
  String? get invoiceUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyPurchaseCopyWith<MyPurchase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyPurchaseCopyWith<$Res> {
  factory $MyPurchaseCopyWith(
          MyPurchase value, $Res Function(MyPurchase) then) =
      _$MyPurchaseCopyWithImpl<$Res, MyPurchase>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      Membership? subscriptionPlan,
      DateTime? purchaseDate,
      String? user,
      String? invoiceUrl});

  $MembershipCopyWith<$Res>? get subscriptionPlan;
}

/// @nodoc
class _$MyPurchaseCopyWithImpl<$Res, $Val extends MyPurchase>
    implements $MyPurchaseCopyWith<$Res> {
  _$MyPurchaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? subscriptionPlan = freezed,
    Object? purchaseDate = freezed,
    Object? user = freezed,
    Object? invoiceUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriptionPlan: freezed == subscriptionPlan
          ? _value.subscriptionPlan
          : subscriptionPlan // ignore: cast_nullable_to_non_nullable
              as Membership?,
      purchaseDate: freezed == purchaseDate
          ? _value.purchaseDate
          : purchaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceUrl: freezed == invoiceUrl
          ? _value.invoiceUrl
          : invoiceUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MembershipCopyWith<$Res>? get subscriptionPlan {
    if (_value.subscriptionPlan == null) {
      return null;
    }

    return $MembershipCopyWith<$Res>(_value.subscriptionPlan!, (value) {
      return _then(_value.copyWith(subscriptionPlan: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MyPurchaseImplCopyWith<$Res>
    implements $MyPurchaseCopyWith<$Res> {
  factory _$$MyPurchaseImplCopyWith(
          _$MyPurchaseImpl value, $Res Function(_$MyPurchaseImpl) then) =
      __$$MyPurchaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      Membership? subscriptionPlan,
      DateTime? purchaseDate,
      String? user,
      String? invoiceUrl});

  @override
  $MembershipCopyWith<$Res>? get subscriptionPlan;
}

/// @nodoc
class __$$MyPurchaseImplCopyWithImpl<$Res>
    extends _$MyPurchaseCopyWithImpl<$Res, _$MyPurchaseImpl>
    implements _$$MyPurchaseImplCopyWith<$Res> {
  __$$MyPurchaseImplCopyWithImpl(
      _$MyPurchaseImpl _value, $Res Function(_$MyPurchaseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? subscriptionPlan = freezed,
    Object? purchaseDate = freezed,
    Object? user = freezed,
    Object? invoiceUrl = freezed,
  }) {
    return _then(_$MyPurchaseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriptionPlan: freezed == subscriptionPlan
          ? _value.subscriptionPlan
          : subscriptionPlan // ignore: cast_nullable_to_non_nullable
              as Membership?,
      purchaseDate: freezed == purchaseDate
          ? _value.purchaseDate
          : purchaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceUrl: freezed == invoiceUrl
          ? _value.invoiceUrl
          : invoiceUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyPurchaseImpl implements _MyPurchase {
  _$MyPurchaseImpl(
      {@JsonKey(name: "_id") this.id,
      this.subscriptionPlan,
      this.purchaseDate,
      this.user,
      this.invoiceUrl});

  factory _$MyPurchaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyPurchaseImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final Membership? subscriptionPlan;
  @override
  final DateTime? purchaseDate;
  @override
  final String? user;
  @override
  final String? invoiceUrl;

  @override
  String toString() {
    return 'MyPurchase(id: $id, subscriptionPlan: $subscriptionPlan, purchaseDate: $purchaseDate, user: $user, invoiceUrl: $invoiceUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyPurchaseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.subscriptionPlan, subscriptionPlan) ||
                other.subscriptionPlan == subscriptionPlan) &&
            (identical(other.purchaseDate, purchaseDate) ||
                other.purchaseDate == purchaseDate) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.invoiceUrl, invoiceUrl) ||
                other.invoiceUrl == invoiceUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, subscriptionPlan, purchaseDate, user, invoiceUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyPurchaseImplCopyWith<_$MyPurchaseImpl> get copyWith =>
      __$$MyPurchaseImplCopyWithImpl<_$MyPurchaseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyPurchaseImplToJson(
      this,
    );
  }
}

abstract class _MyPurchase implements MyPurchase {
  factory _MyPurchase(
      {@JsonKey(name: "_id") final String? id,
      final Membership? subscriptionPlan,
      final DateTime? purchaseDate,
      final String? user,
      final String? invoiceUrl}) = _$MyPurchaseImpl;

  factory _MyPurchase.fromJson(Map<String, dynamic> json) =
      _$MyPurchaseImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  Membership? get subscriptionPlan;
  @override
  DateTime? get purchaseDate;
  @override
  String? get user;
  @override
  String? get invoiceUrl;
  @override
  @JsonKey(ignore: true)
  _$$MyPurchaseImplCopyWith<_$MyPurchaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
