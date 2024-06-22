// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'term.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Term _$TermFromJson(Map<String, dynamic> json) {
  return _Term.fromJson(json);
}

/// @nodoc
mixin _$Term {
  int? get offset => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TermCopyWith<Term> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermCopyWith<$Res> {
  factory $TermCopyWith(Term value, $Res Function(Term) then) =
      _$TermCopyWithImpl<$Res, Term>;
  @useResult
  $Res call({int? offset, String? value});
}

/// @nodoc
class _$TermCopyWithImpl<$Res, $Val extends Term>
    implements $TermCopyWith<$Res> {
  _$TermCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TermImplCopyWith<$Res> implements $TermCopyWith<$Res> {
  factory _$$TermImplCopyWith(
          _$TermImpl value, $Res Function(_$TermImpl) then) =
      __$$TermImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? offset, String? value});
}

/// @nodoc
class __$$TermImplCopyWithImpl<$Res>
    extends _$TermCopyWithImpl<$Res, _$TermImpl>
    implements _$$TermImplCopyWith<$Res> {
  __$$TermImplCopyWithImpl(_$TermImpl _value, $Res Function(_$TermImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = freezed,
    Object? value = freezed,
  }) {
    return _then(_$TermImpl(
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TermImpl implements _Term {
  _$TermImpl({this.offset, this.value});

  factory _$TermImpl.fromJson(Map<String, dynamic> json) =>
      _$$TermImplFromJson(json);

  @override
  final int? offset;
  @override
  final String? value;

  @override
  String toString() {
    return 'Term(offset: $offset, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TermImpl &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, offset, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TermImplCopyWith<_$TermImpl> get copyWith =>
      __$$TermImplCopyWithImpl<_$TermImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TermImplToJson(
      this,
    );
  }
}

abstract class _Term implements Term {
  factory _Term({final int? offset, final String? value}) = _$TermImpl;

  factory _Term.fromJson(Map<String, dynamic> json) = _$TermImpl.fromJson;

  @override
  int? get offset;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$TermImplCopyWith<_$TermImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
