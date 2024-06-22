// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'structured_formatting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StructuredFormatting _$StructuredFormattingFromJson(Map<String, dynamic> json) {
  return _StructuredFormatting.fromJson(json);
}

/// @nodoc
mixin _$StructuredFormatting {
  @JsonKey(name: 'main_text')
  String? get mainText => throw _privateConstructorUsedError;
  @JsonKey(name: 'main_text_matched_substrings')
  List<MainTextMatchedSubstring>? get mainTextMatchedSubstrings =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StructuredFormattingCopyWith<StructuredFormatting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StructuredFormattingCopyWith<$Res> {
  factory $StructuredFormattingCopyWith(StructuredFormatting value,
          $Res Function(StructuredFormatting) then) =
      _$StructuredFormattingCopyWithImpl<$Res, StructuredFormatting>;
  @useResult
  $Res call(
      {@JsonKey(name: 'main_text') String? mainText,
      @JsonKey(name: 'main_text_matched_substrings')
      List<MainTextMatchedSubstring>? mainTextMatchedSubstrings});
}

/// @nodoc
class _$StructuredFormattingCopyWithImpl<$Res,
        $Val extends StructuredFormatting>
    implements $StructuredFormattingCopyWith<$Res> {
  _$StructuredFormattingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainText = freezed,
    Object? mainTextMatchedSubstrings = freezed,
  }) {
    return _then(_value.copyWith(
      mainText: freezed == mainText
          ? _value.mainText
          : mainText // ignore: cast_nullable_to_non_nullable
              as String?,
      mainTextMatchedSubstrings: freezed == mainTextMatchedSubstrings
          ? _value.mainTextMatchedSubstrings
          : mainTextMatchedSubstrings // ignore: cast_nullable_to_non_nullable
              as List<MainTextMatchedSubstring>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StructuredFormattingImplCopyWith<$Res>
    implements $StructuredFormattingCopyWith<$Res> {
  factory _$$StructuredFormattingImplCopyWith(_$StructuredFormattingImpl value,
          $Res Function(_$StructuredFormattingImpl) then) =
      __$$StructuredFormattingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'main_text') String? mainText,
      @JsonKey(name: 'main_text_matched_substrings')
      List<MainTextMatchedSubstring>? mainTextMatchedSubstrings});
}

/// @nodoc
class __$$StructuredFormattingImplCopyWithImpl<$Res>
    extends _$StructuredFormattingCopyWithImpl<$Res, _$StructuredFormattingImpl>
    implements _$$StructuredFormattingImplCopyWith<$Res> {
  __$$StructuredFormattingImplCopyWithImpl(_$StructuredFormattingImpl _value,
      $Res Function(_$StructuredFormattingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainText = freezed,
    Object? mainTextMatchedSubstrings = freezed,
  }) {
    return _then(_$StructuredFormattingImpl(
      mainText: freezed == mainText
          ? _value.mainText
          : mainText // ignore: cast_nullable_to_non_nullable
              as String?,
      mainTextMatchedSubstrings: freezed == mainTextMatchedSubstrings
          ? _value._mainTextMatchedSubstrings
          : mainTextMatchedSubstrings // ignore: cast_nullable_to_non_nullable
              as List<MainTextMatchedSubstring>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StructuredFormattingImpl implements _StructuredFormatting {
  _$StructuredFormattingImpl(
      {@JsonKey(name: 'main_text') this.mainText,
      @JsonKey(name: 'main_text_matched_substrings')
      final List<MainTextMatchedSubstring>? mainTextMatchedSubstrings})
      : _mainTextMatchedSubstrings = mainTextMatchedSubstrings;

  factory _$StructuredFormattingImpl.fromJson(Map<String, dynamic> json) =>
      _$$StructuredFormattingImplFromJson(json);

  @override
  @JsonKey(name: 'main_text')
  final String? mainText;
  final List<MainTextMatchedSubstring>? _mainTextMatchedSubstrings;
  @override
  @JsonKey(name: 'main_text_matched_substrings')
  List<MainTextMatchedSubstring>? get mainTextMatchedSubstrings {
    final value = _mainTextMatchedSubstrings;
    if (value == null) return null;
    if (_mainTextMatchedSubstrings is EqualUnmodifiableListView)
      return _mainTextMatchedSubstrings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'StructuredFormatting(mainText: $mainText, mainTextMatchedSubstrings: $mainTextMatchedSubstrings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StructuredFormattingImpl &&
            (identical(other.mainText, mainText) ||
                other.mainText == mainText) &&
            const DeepCollectionEquality().equals(
                other._mainTextMatchedSubstrings, _mainTextMatchedSubstrings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mainText,
      const DeepCollectionEquality().hash(_mainTextMatchedSubstrings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StructuredFormattingImplCopyWith<_$StructuredFormattingImpl>
      get copyWith =>
          __$$StructuredFormattingImplCopyWithImpl<_$StructuredFormattingImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StructuredFormattingImplToJson(
      this,
    );
  }
}

abstract class _StructuredFormatting implements StructuredFormatting {
  factory _StructuredFormatting(
          {@JsonKey(name: 'main_text') final String? mainText,
          @JsonKey(name: 'main_text_matched_substrings')
          final List<MainTextMatchedSubstring>? mainTextMatchedSubstrings}) =
      _$StructuredFormattingImpl;

  factory _StructuredFormatting.fromJson(Map<String, dynamic> json) =
      _$StructuredFormattingImpl.fromJson;

  @override
  @JsonKey(name: 'main_text')
  String? get mainText;
  @override
  @JsonKey(name: 'main_text_matched_substrings')
  List<MainTextMatchedSubstring>? get mainTextMatchedSubstrings;
  @override
  @JsonKey(ignore: true)
  _$$StructuredFormattingImplCopyWith<_$StructuredFormattingImpl>
      get copyWith => throw _privateConstructorUsedError;
}
