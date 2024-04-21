// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Slot _$SlotFromJson(Map<String, dynamic> json) {
  return _Slot.fromJson(json);
}

/// @nodoc
mixin _$Slot {
  int? get dayofweek => throw _privateConstructorUsedError;
  String? get starttime => throw _privateConstructorUsedError;
  String? get endtime => throw _privateConstructorUsedError;
  bool? get booked => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get bookedBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SlotCopyWith<Slot> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotCopyWith<$Res> {
  factory $SlotCopyWith(Slot value, $Res Function(Slot) then) =
      _$SlotCopyWithImpl<$Res, Slot>;
  @useResult
  $Res call(
      {int? dayofweek,
      String? starttime,
      String? endtime,
      bool? booked,
      @JsonKey(name: '_id') String? id,
      String? bookedBy});
}

/// @nodoc
class _$SlotCopyWithImpl<$Res, $Val extends Slot>
    implements $SlotCopyWith<$Res> {
  _$SlotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayofweek = freezed,
    Object? starttime = freezed,
    Object? endtime = freezed,
    Object? booked = freezed,
    Object? id = freezed,
    Object? bookedBy = freezed,
  }) {
    return _then(_value.copyWith(
      dayofweek: freezed == dayofweek
          ? _value.dayofweek
          : dayofweek // ignore: cast_nullable_to_non_nullable
              as int?,
      starttime: freezed == starttime
          ? _value.starttime
          : starttime // ignore: cast_nullable_to_non_nullable
              as String?,
      endtime: freezed == endtime
          ? _value.endtime
          : endtime // ignore: cast_nullable_to_non_nullable
              as String?,
      booked: freezed == booked
          ? _value.booked
          : booked // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      bookedBy: freezed == bookedBy
          ? _value.bookedBy
          : bookedBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SlotImplCopyWith<$Res> implements $SlotCopyWith<$Res> {
  factory _$$SlotImplCopyWith(
          _$SlotImpl value, $Res Function(_$SlotImpl) then) =
      __$$SlotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? dayofweek,
      String? starttime,
      String? endtime,
      bool? booked,
      @JsonKey(name: '_id') String? id,
      String? bookedBy});
}

/// @nodoc
class __$$SlotImplCopyWithImpl<$Res>
    extends _$SlotCopyWithImpl<$Res, _$SlotImpl>
    implements _$$SlotImplCopyWith<$Res> {
  __$$SlotImplCopyWithImpl(_$SlotImpl _value, $Res Function(_$SlotImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayofweek = freezed,
    Object? starttime = freezed,
    Object? endtime = freezed,
    Object? booked = freezed,
    Object? id = freezed,
    Object? bookedBy = freezed,
  }) {
    return _then(_$SlotImpl(
      dayofweek: freezed == dayofweek
          ? _value.dayofweek
          : dayofweek // ignore: cast_nullable_to_non_nullable
              as int?,
      starttime: freezed == starttime
          ? _value.starttime
          : starttime // ignore: cast_nullable_to_non_nullable
              as String?,
      endtime: freezed == endtime
          ? _value.endtime
          : endtime // ignore: cast_nullable_to_non_nullable
              as String?,
      booked: freezed == booked
          ? _value.booked
          : booked // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      bookedBy: freezed == bookedBy
          ? _value.bookedBy
          : bookedBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SlotImpl implements _Slot {
  _$SlotImpl(
      {this.dayofweek,
      this.starttime,
      this.endtime,
      this.booked,
      @JsonKey(name: '_id') this.id,
      this.bookedBy});

  factory _$SlotImpl.fromJson(Map<String, dynamic> json) =>
      _$$SlotImplFromJson(json);

  @override
  final int? dayofweek;
  @override
  final String? starttime;
  @override
  final String? endtime;
  @override
  final bool? booked;
  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? bookedBy;

  @override
  String toString() {
    return 'Slot(dayofweek: $dayofweek, starttime: $starttime, endtime: $endtime, booked: $booked, id: $id, bookedBy: $bookedBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SlotImpl &&
            (identical(other.dayofweek, dayofweek) ||
                other.dayofweek == dayofweek) &&
            (identical(other.starttime, starttime) ||
                other.starttime == starttime) &&
            (identical(other.endtime, endtime) || other.endtime == endtime) &&
            (identical(other.booked, booked) || other.booked == booked) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bookedBy, bookedBy) ||
                other.bookedBy == bookedBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, dayofweek, starttime, endtime, booked, id, bookedBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SlotImplCopyWith<_$SlotImpl> get copyWith =>
      __$$SlotImplCopyWithImpl<_$SlotImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SlotImplToJson(
      this,
    );
  }
}

abstract class _Slot implements Slot {
  factory _Slot(
      {final int? dayofweek,
      final String? starttime,
      final String? endtime,
      final bool? booked,
      @JsonKey(name: '_id') final String? id,
      final String? bookedBy}) = _$SlotImpl;

  factory _Slot.fromJson(Map<String, dynamic> json) = _$SlotImpl.fromJson;

  @override
  int? get dayofweek;
  @override
  String? get starttime;
  @override
  String? get endtime;
  @override
  bool? get booked;
  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get bookedBy;
  @override
  @JsonKey(ignore: true)
  _$$SlotImplCopyWith<_$SlotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
