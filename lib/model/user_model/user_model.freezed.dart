// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String? get role => throw _privateConstructorUsedError;
  String? get institutionName => throw _privateConstructorUsedError;
  String? get institutionId => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  Membership? get subscription => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get dpUrl => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'DOB')
  String? get dob => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String? role,
      String? institutionName,
      String? institutionId,
      String? userName,
      String? email,
      Membership? subscription,
      String? phoneNumber,
      String? dpUrl,
      String? path,
      @JsonKey(name: 'DOB') String? dob});

  $MembershipCopyWith<$Res>? get subscription;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? institutionName = freezed,
    Object? institutionId = freezed,
    Object? userName = freezed,
    Object? email = freezed,
    Object? subscription = freezed,
    Object? phoneNumber = freezed,
    Object? dpUrl = freezed,
    Object? path = freezed,
    Object? dob = freezed,
  }) {
    return _then(_value.copyWith(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      institutionName: freezed == institutionName
          ? _value.institutionName
          : institutionName // ignore: cast_nullable_to_non_nullable
              as String?,
      institutionId: freezed == institutionId
          ? _value.institutionId
          : institutionId // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      subscription: freezed == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as Membership?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      dpUrl: freezed == dpUrl
          ? _value.dpUrl
          : dpUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MembershipCopyWith<$Res>? get subscription {
    if (_value.subscription == null) {
      return null;
    }

    return $MembershipCopyWith<$Res>(_value.subscription!, (value) {
      return _then(_value.copyWith(subscription: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? role,
      String? institutionName,
      String? institutionId,
      String? userName,
      String? email,
      Membership? subscription,
      String? phoneNumber,
      String? dpUrl,
      String? path,
      @JsonKey(name: 'DOB') String? dob});

  @override
  $MembershipCopyWith<$Res>? get subscription;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? institutionName = freezed,
    Object? institutionId = freezed,
    Object? userName = freezed,
    Object? email = freezed,
    Object? subscription = freezed,
    Object? phoneNumber = freezed,
    Object? dpUrl = freezed,
    Object? path = freezed,
    Object? dob = freezed,
  }) {
    return _then(_$UserModelImpl(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      institutionName: freezed == institutionName
          ? _value.institutionName
          : institutionName // ignore: cast_nullable_to_non_nullable
              as String?,
      institutionId: freezed == institutionId
          ? _value.institutionId
          : institutionId // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      subscription: freezed == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as Membership?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      dpUrl: freezed == dpUrl
          ? _value.dpUrl
          : dpUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  _$UserModelImpl(
      {this.role,
      this.institutionName,
      this.institutionId,
      this.userName,
      this.email,
      this.subscription,
      this.phoneNumber,
      this.dpUrl,
      this.path,
      @JsonKey(name: 'DOB') this.dob});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String? role;
  @override
  final String? institutionName;
  @override
  final String? institutionId;
  @override
  final String? userName;
  @override
  final String? email;
  @override
  final Membership? subscription;
  @override
  final String? phoneNumber;
  @override
  final String? dpUrl;
  @override
  final String? path;
  @override
  @JsonKey(name: 'DOB')
  final String? dob;

  @override
  String toString() {
    return 'UserModel(role: $role, institutionName: $institutionName, institutionId: $institutionId, userName: $userName, email: $email, subscription: $subscription, phoneNumber: $phoneNumber, dpUrl: $dpUrl, path: $path, dob: $dob)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.institutionName, institutionName) ||
                other.institutionName == institutionName) &&
            (identical(other.institutionId, institutionId) ||
                other.institutionId == institutionId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.subscription, subscription) ||
                other.subscription == subscription) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.dpUrl, dpUrl) || other.dpUrl == dpUrl) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.dob, dob) || other.dob == dob));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      role,
      institutionName,
      institutionId,
      userName,
      email,
      subscription,
      phoneNumber,
      dpUrl,
      path,
      dob);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  factory _UserModel(
      {final String? role,
      final String? institutionName,
      final String? institutionId,
      final String? userName,
      final String? email,
      final Membership? subscription,
      final String? phoneNumber,
      final String? dpUrl,
      final String? path,
      @JsonKey(name: 'DOB') final String? dob}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String? get role;
  @override
  String? get institutionName;
  @override
  String? get institutionId;
  @override
  String? get userName;
  @override
  String? get email;
  @override
  Membership? get subscription;
  @override
  String? get phoneNumber;
  @override
  String? get dpUrl;
  @override
  String? get path;
  @override
  @JsonKey(name: 'DOB')
  String? get dob;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
