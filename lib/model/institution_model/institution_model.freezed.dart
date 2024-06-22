// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'institution_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InstitutionResponse _$InstitutionResponseFromJson(Map<String, dynamic> json) {
  return _InstitutionResponse.fromJson(json);
}

/// @nodoc
mixin _$InstitutionResponse {
  bool get success => throw _privateConstructorUsedError;
  List<Institution> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstitutionResponseCopyWith<InstitutionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstitutionResponseCopyWith<$Res> {
  factory $InstitutionResponseCopyWith(
          InstitutionResponse value, $Res Function(InstitutionResponse) then) =
      _$InstitutionResponseCopyWithImpl<$Res, InstitutionResponse>;
  @useResult
  $Res call({bool success, List<Institution> data});
}

/// @nodoc
class _$InstitutionResponseCopyWithImpl<$Res, $Val extends InstitutionResponse>
    implements $InstitutionResponseCopyWith<$Res> {
  _$InstitutionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Institution>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InstitutionResponseImplCopyWith<$Res>
    implements $InstitutionResponseCopyWith<$Res> {
  factory _$$InstitutionResponseImplCopyWith(_$InstitutionResponseImpl value,
          $Res Function(_$InstitutionResponseImpl) then) =
      __$$InstitutionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, List<Institution> data});
}

/// @nodoc
class __$$InstitutionResponseImplCopyWithImpl<$Res>
    extends _$InstitutionResponseCopyWithImpl<$Res, _$InstitutionResponseImpl>
    implements _$$InstitutionResponseImplCopyWith<$Res> {
  __$$InstitutionResponseImplCopyWithImpl(_$InstitutionResponseImpl _value,
      $Res Function(_$InstitutionResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$InstitutionResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Institution>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InstitutionResponseImpl implements _InstitutionResponse {
  const _$InstitutionResponseImpl(
      {required this.success, required final List<Institution> data})
      : _data = data;

  factory _$InstitutionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$InstitutionResponseImplFromJson(json);

  @override
  final bool success;
  final List<Institution> _data;
  @override
  List<Institution> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'InstitutionResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InstitutionResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, success, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InstitutionResponseImplCopyWith<_$InstitutionResponseImpl> get copyWith =>
      __$$InstitutionResponseImplCopyWithImpl<_$InstitutionResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InstitutionResponseImplToJson(
      this,
    );
  }
}

abstract class _InstitutionResponse implements InstitutionResponse {
  const factory _InstitutionResponse(
      {required final bool success,
      required final List<Institution> data}) = _$InstitutionResponseImpl;

  factory _InstitutionResponse.fromJson(Map<String, dynamic> json) =
      _$InstitutionResponseImpl.fromJson;

  @override
  bool get success;
  @override
  List<Institution> get data;
  @override
  @JsonKey(ignore: true)
  _$$InstitutionResponseImplCopyWith<_$InstitutionResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Institution _$InstitutionFromJson(Map<String, dynamic> json) {
  return _Institution.fromJson(json);
}

/// @nodoc
mixin _$Institution {
  String get institutionName => throw _privateConstructorUsedError;
  String get institutionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstitutionCopyWith<Institution> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstitutionCopyWith<$Res> {
  factory $InstitutionCopyWith(
          Institution value, $Res Function(Institution) then) =
      _$InstitutionCopyWithImpl<$Res, Institution>;
  @useResult
  $Res call({String institutionName, String institutionId});
}

/// @nodoc
class _$InstitutionCopyWithImpl<$Res, $Val extends Institution>
    implements $InstitutionCopyWith<$Res> {
  _$InstitutionCopyWithImpl(this._value, this._then);

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
abstract class _$$InstitutionImplCopyWith<$Res>
    implements $InstitutionCopyWith<$Res> {
  factory _$$InstitutionImplCopyWith(
          _$InstitutionImpl value, $Res Function(_$InstitutionImpl) then) =
      __$$InstitutionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String institutionName, String institutionId});
}

/// @nodoc
class __$$InstitutionImplCopyWithImpl<$Res>
    extends _$InstitutionCopyWithImpl<$Res, _$InstitutionImpl>
    implements _$$InstitutionImplCopyWith<$Res> {
  __$$InstitutionImplCopyWithImpl(
      _$InstitutionImpl _value, $Res Function(_$InstitutionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? institutionName = null,
    Object? institutionId = null,
  }) {
    return _then(_$InstitutionImpl(
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
class _$InstitutionImpl implements _Institution {
  const _$InstitutionImpl(
      {required this.institutionName, required this.institutionId});

  factory _$InstitutionImpl.fromJson(Map<String, dynamic> json) =>
      _$$InstitutionImplFromJson(json);

  @override
  final String institutionName;
  @override
  final String institutionId;

  @override
  String toString() {
    return 'Institution(institutionName: $institutionName, institutionId: $institutionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InstitutionImpl &&
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
  _$$InstitutionImplCopyWith<_$InstitutionImpl> get copyWith =>
      __$$InstitutionImplCopyWithImpl<_$InstitutionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InstitutionImplToJson(
      this,
    );
  }
}

abstract class _Institution implements Institution {
  const factory _Institution(
      {required final String institutionName,
      required final String institutionId}) = _$InstitutionImpl;

  factory _Institution.fromJson(Map<String, dynamic> json) =
      _$InstitutionImpl.fromJson;

  @override
  String get institutionName;
  @override
  String get institutionId;
  @override
  @JsonKey(ignore: true)
  _$$InstitutionImplCopyWith<_$InstitutionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
