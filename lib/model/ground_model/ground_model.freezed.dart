// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ground_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GroundModel _$GroundModelFromJson(Map<String, dynamic> json) {
  return _GroundModel.fromJson(json);
}

/// @nodoc
mixin _$GroundModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'sport_name')
  List<String>? get sportName => throw _privateConstructorUsedError;
  List<Map<String, dynamic>>? get images => throw _privateConstructorUsedError;
  String? get amenities => throw _privateConstructorUsedError;
  String? get address1 => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get address2 => throw _privateConstructorUsedError;
  School? get school => throw _privateConstructorUsedError;
  String? get institutionName => throw _privateConstructorUsedError;
  num? get price => throw _privateConstructorUsedError;
  num? get rating => throw _privateConstructorUsedError;
  bool? get recommended => throw _privateConstructorUsedError;
  List<String>? get slots => throw _privateConstructorUsedError;
  @JsonKey(name: '__v')
  int? get v => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroundModelCopyWith<GroundModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroundModelCopyWith<$Res> {
  factory $GroundModelCopyWith(
          GroundModel value, $Res Function(GroundModel) then) =
      _$GroundModelCopyWithImpl<$Res, GroundModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'sport_name') List<String>? sportName,
      List<Map<String, dynamic>>? images,
      String? amenities,
      String? address1,
      String? location,
      String? address2,
      School? school,
      String? institutionName,
      num? price,
      num? rating,
      bool? recommended,
      List<String>? slots,
      @JsonKey(name: '__v') int? v});

  $SchoolCopyWith<$Res>? get school;
}

/// @nodoc
class _$GroundModelCopyWithImpl<$Res, $Val extends GroundModel>
    implements $GroundModelCopyWith<$Res> {
  _$GroundModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sportName = freezed,
    Object? images = freezed,
    Object? amenities = freezed,
    Object? address1 = freezed,
    Object? location = freezed,
    Object? address2 = freezed,
    Object? school = freezed,
    Object? institutionName = freezed,
    Object? price = freezed,
    Object? rating = freezed,
    Object? recommended = freezed,
    Object? slots = freezed,
    Object? v = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      sportName: freezed == sportName
          ? _value.sportName
          : sportName // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      amenities: freezed == amenities
          ? _value.amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as String?,
      address1: freezed == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      school: freezed == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as School?,
      institutionName: freezed == institutionName
          ? _value.institutionName
          : institutionName // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num?,
      recommended: freezed == recommended
          ? _value.recommended
          : recommended // ignore: cast_nullable_to_non_nullable
              as bool?,
      slots: freezed == slots
          ? _value.slots
          : slots // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SchoolCopyWith<$Res>? get school {
    if (_value.school == null) {
      return null;
    }

    return $SchoolCopyWith<$Res>(_value.school!, (value) {
      return _then(_value.copyWith(school: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GroundModelImplCopyWith<$Res>
    implements $GroundModelCopyWith<$Res> {
  factory _$$GroundModelImplCopyWith(
          _$GroundModelImpl value, $Res Function(_$GroundModelImpl) then) =
      __$$GroundModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'sport_name') List<String>? sportName,
      List<Map<String, dynamic>>? images,
      String? amenities,
      String? address1,
      String? location,
      String? address2,
      School? school,
      String? institutionName,
      num? price,
      num? rating,
      bool? recommended,
      List<String>? slots,
      @JsonKey(name: '__v') int? v});

  @override
  $SchoolCopyWith<$Res>? get school;
}

/// @nodoc
class __$$GroundModelImplCopyWithImpl<$Res>
    extends _$GroundModelCopyWithImpl<$Res, _$GroundModelImpl>
    implements _$$GroundModelImplCopyWith<$Res> {
  __$$GroundModelImplCopyWithImpl(
      _$GroundModelImpl _value, $Res Function(_$GroundModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sportName = freezed,
    Object? images = freezed,
    Object? amenities = freezed,
    Object? address1 = freezed,
    Object? location = freezed,
    Object? address2 = freezed,
    Object? school = freezed,
    Object? institutionName = freezed,
    Object? price = freezed,
    Object? rating = freezed,
    Object? recommended = freezed,
    Object? slots = freezed,
    Object? v = freezed,
  }) {
    return _then(_$GroundModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      sportName: freezed == sportName
          ? _value._sportName
          : sportName // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      amenities: freezed == amenities
          ? _value.amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as String?,
      address1: freezed == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      school: freezed == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as School?,
      institutionName: freezed == institutionName
          ? _value.institutionName
          : institutionName // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num?,
      recommended: freezed == recommended
          ? _value.recommended
          : recommended // ignore: cast_nullable_to_non_nullable
              as bool?,
      slots: freezed == slots
          ? _value._slots
          : slots // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroundModelImpl implements _GroundModel {
  _$GroundModelImpl(
      {@JsonKey(name: '_id') this.id,
      @JsonKey(name: 'sport_name') final List<String>? sportName,
      final List<Map<String, dynamic>>? images,
      this.amenities,
      this.address1,
      this.location,
      this.address2,
      this.school,
      this.institutionName,
      this.price,
      this.rating,
      this.recommended,
      final List<String>? slots,
      @JsonKey(name: '__v') this.v})
      : _sportName = sportName,
        _images = images,
        _slots = slots;

  factory _$GroundModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroundModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  final List<String>? _sportName;
  @override
  @JsonKey(name: 'sport_name')
  List<String>? get sportName {
    final value = _sportName;
    if (value == null) return null;
    if (_sportName is EqualUnmodifiableListView) return _sportName;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Map<String, dynamic>>? _images;
  @override
  List<Map<String, dynamic>>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? amenities;
  @override
  final String? address1;
  @override
  final String? location;
  @override
  final String? address2;
  @override
  final School? school;
  @override
  final String? institutionName;
  @override
  final num? price;
  @override
  final num? rating;
  @override
  final bool? recommended;
  final List<String>? _slots;
  @override
  List<String>? get slots {
    final value = _slots;
    if (value == null) return null;
    if (_slots is EqualUnmodifiableListView) return _slots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: '__v')
  final int? v;

  @override
  String toString() {
    return 'GroundModel(id: $id, sportName: $sportName, images: $images, amenities: $amenities, address1: $address1, location: $location, address2: $address2, school: $school, institutionName: $institutionName, price: $price, rating: $rating, recommended: $recommended, slots: $slots, v: $v)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroundModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._sportName, _sportName) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.amenities, amenities) ||
                other.amenities == amenities) &&
            (identical(other.address1, address1) ||
                other.address1 == address1) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.address2, address2) ||
                other.address2 == address2) &&
            (identical(other.school, school) || other.school == school) &&
            (identical(other.institutionName, institutionName) ||
                other.institutionName == institutionName) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.recommended, recommended) ||
                other.recommended == recommended) &&
            const DeepCollectionEquality().equals(other._slots, _slots) &&
            (identical(other.v, v) || other.v == v));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_sportName),
      const DeepCollectionEquality().hash(_images),
      amenities,
      address1,
      location,
      address2,
      school,
      institutionName,
      price,
      rating,
      recommended,
      const DeepCollectionEquality().hash(_slots),
      v);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroundModelImplCopyWith<_$GroundModelImpl> get copyWith =>
      __$$GroundModelImplCopyWithImpl<_$GroundModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroundModelImplToJson(
      this,
    );
  }
}

abstract class _GroundModel implements GroundModel {
  factory _GroundModel(
      {@JsonKey(name: '_id') final String? id,
      @JsonKey(name: 'sport_name') final List<String>? sportName,
      final List<Map<String, dynamic>>? images,
      final String? amenities,
      final String? address1,
      final String? location,
      final String? address2,
      final School? school,
      final String? institutionName,
      final num? price,
      final num? rating,
      final bool? recommended,
      final List<String>? slots,
      @JsonKey(name: '__v') final int? v}) = _$GroundModelImpl;

  factory _GroundModel.fromJson(Map<String, dynamic> json) =
      _$GroundModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: 'sport_name')
  List<String>? get sportName;
  @override
  List<Map<String, dynamic>>? get images;
  @override
  String? get amenities;
  @override
  String? get address1;
  @override
  String? get location;
  @override
  String? get address2;
  @override
  School? get school;
  @override
  String? get institutionName;
  @override
  num? get price;
  @override
  num? get rating;
  @override
  bool? get recommended;
  @override
  List<String>? get slots;
  @override
  @JsonKey(name: '__v')
  int? get v;
  @override
  @JsonKey(ignore: true)
  _$$GroundModelImplCopyWith<_$GroundModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
