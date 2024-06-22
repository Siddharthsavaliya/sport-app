// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlaceModel _$PlaceModelFromJson(Map<String, dynamic> json) {
  return _PlaceModel.fromJson(json);
}

/// @nodoc
mixin _$PlaceModel {
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'matched_substrings')
  List<MatchedSubstring>? get matchedSubstrings =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'place_id')
  String? get placeId => throw _privateConstructorUsedError;
  String? get reference => throw _privateConstructorUsedError;
  @JsonKey(name: 'structured_formatting')
  StructuredFormatting? get structuredFormatting =>
      throw _privateConstructorUsedError;
  List<Term>? get terms => throw _privateConstructorUsedError;
  List<String>? get types => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceModelCopyWith<PlaceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceModelCopyWith<$Res> {
  factory $PlaceModelCopyWith(
          PlaceModel value, $Res Function(PlaceModel) then) =
      _$PlaceModelCopyWithImpl<$Res, PlaceModel>;
  @useResult
  $Res call(
      {String? description,
      @JsonKey(name: 'matched_substrings')
      List<MatchedSubstring>? matchedSubstrings,
      @JsonKey(name: 'place_id') String? placeId,
      String? reference,
      @JsonKey(name: 'structured_formatting')
      StructuredFormatting? structuredFormatting,
      List<Term>? terms,
      List<String>? types});

  $StructuredFormattingCopyWith<$Res>? get structuredFormatting;
}

/// @nodoc
class _$PlaceModelCopyWithImpl<$Res, $Val extends PlaceModel>
    implements $PlaceModelCopyWith<$Res> {
  _$PlaceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? matchedSubstrings = freezed,
    Object? placeId = freezed,
    Object? reference = freezed,
    Object? structuredFormatting = freezed,
    Object? terms = freezed,
    Object? types = freezed,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      matchedSubstrings: freezed == matchedSubstrings
          ? _value.matchedSubstrings
          : matchedSubstrings // ignore: cast_nullable_to_non_nullable
              as List<MatchedSubstring>?,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      structuredFormatting: freezed == structuredFormatting
          ? _value.structuredFormatting
          : structuredFormatting // ignore: cast_nullable_to_non_nullable
              as StructuredFormatting?,
      terms: freezed == terms
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as List<Term>?,
      types: freezed == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StructuredFormattingCopyWith<$Res>? get structuredFormatting {
    if (_value.structuredFormatting == null) {
      return null;
    }

    return $StructuredFormattingCopyWith<$Res>(_value.structuredFormatting!,
        (value) {
      return _then(_value.copyWith(structuredFormatting: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlaceModelImplCopyWith<$Res>
    implements $PlaceModelCopyWith<$Res> {
  factory _$$PlaceModelImplCopyWith(
          _$PlaceModelImpl value, $Res Function(_$PlaceModelImpl) then) =
      __$$PlaceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? description,
      @JsonKey(name: 'matched_substrings')
      List<MatchedSubstring>? matchedSubstrings,
      @JsonKey(name: 'place_id') String? placeId,
      String? reference,
      @JsonKey(name: 'structured_formatting')
      StructuredFormatting? structuredFormatting,
      List<Term>? terms,
      List<String>? types});

  @override
  $StructuredFormattingCopyWith<$Res>? get structuredFormatting;
}

/// @nodoc
class __$$PlaceModelImplCopyWithImpl<$Res>
    extends _$PlaceModelCopyWithImpl<$Res, _$PlaceModelImpl>
    implements _$$PlaceModelImplCopyWith<$Res> {
  __$$PlaceModelImplCopyWithImpl(
      _$PlaceModelImpl _value, $Res Function(_$PlaceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? matchedSubstrings = freezed,
    Object? placeId = freezed,
    Object? reference = freezed,
    Object? structuredFormatting = freezed,
    Object? terms = freezed,
    Object? types = freezed,
  }) {
    return _then(_$PlaceModelImpl(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      matchedSubstrings: freezed == matchedSubstrings
          ? _value._matchedSubstrings
          : matchedSubstrings // ignore: cast_nullable_to_non_nullable
              as List<MatchedSubstring>?,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      structuredFormatting: freezed == structuredFormatting
          ? _value.structuredFormatting
          : structuredFormatting // ignore: cast_nullable_to_non_nullable
              as StructuredFormatting?,
      terms: freezed == terms
          ? _value._terms
          : terms // ignore: cast_nullable_to_non_nullable
              as List<Term>?,
      types: freezed == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceModelImpl implements _PlaceModel {
  _$PlaceModelImpl(
      {this.description,
      @JsonKey(name: 'matched_substrings')
      final List<MatchedSubstring>? matchedSubstrings,
      @JsonKey(name: 'place_id') this.placeId,
      this.reference,
      @JsonKey(name: 'structured_formatting') this.structuredFormatting,
      final List<Term>? terms,
      final List<String>? types})
      : _matchedSubstrings = matchedSubstrings,
        _terms = terms,
        _types = types;

  factory _$PlaceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceModelImplFromJson(json);

  @override
  final String? description;
  final List<MatchedSubstring>? _matchedSubstrings;
  @override
  @JsonKey(name: 'matched_substrings')
  List<MatchedSubstring>? get matchedSubstrings {
    final value = _matchedSubstrings;
    if (value == null) return null;
    if (_matchedSubstrings is EqualUnmodifiableListView)
      return _matchedSubstrings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'place_id')
  final String? placeId;
  @override
  final String? reference;
  @override
  @JsonKey(name: 'structured_formatting')
  final StructuredFormatting? structuredFormatting;
  final List<Term>? _terms;
  @override
  List<Term>? get terms {
    final value = _terms;
    if (value == null) return null;
    if (_terms is EqualUnmodifiableListView) return _terms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _types;
  @override
  List<String>? get types {
    final value = _types;
    if (value == null) return null;
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PlaceModel(description: $description, matchedSubstrings: $matchedSubstrings, placeId: $placeId, reference: $reference, structuredFormatting: $structuredFormatting, terms: $terms, types: $types)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceModelImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._matchedSubstrings, _matchedSubstrings) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.structuredFormatting, structuredFormatting) ||
                other.structuredFormatting == structuredFormatting) &&
            const DeepCollectionEquality().equals(other._terms, _terms) &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      description,
      const DeepCollectionEquality().hash(_matchedSubstrings),
      placeId,
      reference,
      structuredFormatting,
      const DeepCollectionEquality().hash(_terms),
      const DeepCollectionEquality().hash(_types));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceModelImplCopyWith<_$PlaceModelImpl> get copyWith =>
      __$$PlaceModelImplCopyWithImpl<_$PlaceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceModelImplToJson(
      this,
    );
  }
}

abstract class _PlaceModel implements PlaceModel {
  factory _PlaceModel(
      {final String? description,
      @JsonKey(name: 'matched_substrings')
      final List<MatchedSubstring>? matchedSubstrings,
      @JsonKey(name: 'place_id') final String? placeId,
      final String? reference,
      @JsonKey(name: 'structured_formatting')
      final StructuredFormatting? structuredFormatting,
      final List<Term>? terms,
      final List<String>? types}) = _$PlaceModelImpl;

  factory _PlaceModel.fromJson(Map<String, dynamic> json) =
      _$PlaceModelImpl.fromJson;

  @override
  String? get description;
  @override
  @JsonKey(name: 'matched_substrings')
  List<MatchedSubstring>? get matchedSubstrings;
  @override
  @JsonKey(name: 'place_id')
  String? get placeId;
  @override
  String? get reference;
  @override
  @JsonKey(name: 'structured_formatting')
  StructuredFormatting? get structuredFormatting;
  @override
  List<Term>? get terms;
  @override
  List<String>? get types;
  @override
  @JsonKey(ignore: true)
  _$$PlaceModelImplCopyWith<_$PlaceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
