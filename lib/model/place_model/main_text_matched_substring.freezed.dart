// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_text_matched_substring.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MainTextMatchedSubstring _$MainTextMatchedSubstringFromJson(
    Map<String, dynamic> json) {
  return _MainTextMatchedSubstring.fromJson(json);
}

/// @nodoc
mixin _$MainTextMatchedSubstring {
  int? get length => throw _privateConstructorUsedError;
  int? get offset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainTextMatchedSubstringCopyWith<MainTextMatchedSubstring> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainTextMatchedSubstringCopyWith<$Res> {
  factory $MainTextMatchedSubstringCopyWith(MainTextMatchedSubstring value,
          $Res Function(MainTextMatchedSubstring) then) =
      _$MainTextMatchedSubstringCopyWithImpl<$Res, MainTextMatchedSubstring>;
  @useResult
  $Res call({int? length, int? offset});
}

/// @nodoc
class _$MainTextMatchedSubstringCopyWithImpl<$Res,
        $Val extends MainTextMatchedSubstring>
    implements $MainTextMatchedSubstringCopyWith<$Res> {
  _$MainTextMatchedSubstringCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = freezed,
    Object? offset = freezed,
  }) {
    return _then(_value.copyWith(
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainTextMatchedSubstringImplCopyWith<$Res>
    implements $MainTextMatchedSubstringCopyWith<$Res> {
  factory _$$MainTextMatchedSubstringImplCopyWith(
          _$MainTextMatchedSubstringImpl value,
          $Res Function(_$MainTextMatchedSubstringImpl) then) =
      __$$MainTextMatchedSubstringImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? length, int? offset});
}

/// @nodoc
class __$$MainTextMatchedSubstringImplCopyWithImpl<$Res>
    extends _$MainTextMatchedSubstringCopyWithImpl<$Res,
        _$MainTextMatchedSubstringImpl>
    implements _$$MainTextMatchedSubstringImplCopyWith<$Res> {
  __$$MainTextMatchedSubstringImplCopyWithImpl(
      _$MainTextMatchedSubstringImpl _value,
      $Res Function(_$MainTextMatchedSubstringImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = freezed,
    Object? offset = freezed,
  }) {
    return _then(_$MainTextMatchedSubstringImpl(
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MainTextMatchedSubstringImpl implements _MainTextMatchedSubstring {
  _$MainTextMatchedSubstringImpl({this.length, this.offset});

  factory _$MainTextMatchedSubstringImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainTextMatchedSubstringImplFromJson(json);

  @override
  final int? length;
  @override
  final int? offset;

  @override
  String toString() {
    return 'MainTextMatchedSubstring(length: $length, offset: $offset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainTextMatchedSubstringImpl &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, length, offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainTextMatchedSubstringImplCopyWith<_$MainTextMatchedSubstringImpl>
      get copyWith => __$$MainTextMatchedSubstringImplCopyWithImpl<
          _$MainTextMatchedSubstringImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainTextMatchedSubstringImplToJson(
      this,
    );
  }
}

abstract class _MainTextMatchedSubstring implements MainTextMatchedSubstring {
  factory _MainTextMatchedSubstring({final int? length, final int? offset}) =
      _$MainTextMatchedSubstringImpl;

  factory _MainTextMatchedSubstring.fromJson(Map<String, dynamic> json) =
      _$MainTextMatchedSubstringImpl.fromJson;

  @override
  int? get length;
  @override
  int? get offset;
  @override
  @JsonKey(ignore: true)
  _$$MainTextMatchedSubstringImplCopyWith<_$MainTextMatchedSubstringImpl>
      get copyWith => throw _privateConstructorUsedError;
}
