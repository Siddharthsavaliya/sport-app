// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'school_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

School _$SchoolFromJson(Map<String, dynamic> json) {
  return _School.fromJson(json);
}

/// @nodoc
mixin _$School {
  String? get schoolId => throw _privateConstructorUsedError;
  String? get schoolName => throw _privateConstructorUsedError;
  String? get address1 => throw _privateConstructorUsedError;
  String? get address2 => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get institutionemailId => throw _privateConstructorUsedError;
  String? get institutionName => throw _privateConstructorUsedError;
  String? get contactpersonname => throw _privateConstructorUsedError;
  String? get contactpersonemailId => throw _privateConstructorUsedError;
  String? get contactpersonphoneNumber => throw _privateConstructorUsedError;
  String? get googlemaplink => throw _privateConstructorUsedError;
  String? get institutionId => throw _privateConstructorUsedError;
  List<String>? get sportsgrounds => throw _privateConstructorUsedError;
  @JsonKey(name: "SchoolSchedule")
  SchoolSchedule? get schoolSchedule => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SchoolCopyWith<School> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchoolCopyWith<$Res> {
  factory $SchoolCopyWith(School value, $Res Function(School) then) =
      _$SchoolCopyWithImpl<$Res, School>;
  @useResult
  $Res call(
      {String? schoolId,
      String? schoolName,
      String? address1,
      String? address2,
      String? city,
      String? state,
      String? institutionemailId,
      String? institutionName,
      String? contactpersonname,
      String? contactpersonemailId,
      String? contactpersonphoneNumber,
      String? googlemaplink,
      String? institutionId,
      List<String>? sportsgrounds,
      @JsonKey(name: "SchoolSchedule") SchoolSchedule? schoolSchedule});

  $SchoolScheduleCopyWith<$Res>? get schoolSchedule;
}

/// @nodoc
class _$SchoolCopyWithImpl<$Res, $Val extends School>
    implements $SchoolCopyWith<$Res> {
  _$SchoolCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolId = freezed,
    Object? schoolName = freezed,
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? institutionemailId = freezed,
    Object? institutionName = freezed,
    Object? contactpersonname = freezed,
    Object? contactpersonemailId = freezed,
    Object? contactpersonphoneNumber = freezed,
    Object? googlemaplink = freezed,
    Object? institutionId = freezed,
    Object? sportsgrounds = freezed,
    Object? schoolSchedule = freezed,
  }) {
    return _then(_value.copyWith(
      schoolId: freezed == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolName: freezed == schoolName
          ? _value.schoolName
          : schoolName // ignore: cast_nullable_to_non_nullable
              as String?,
      address1: freezed == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      institutionemailId: freezed == institutionemailId
          ? _value.institutionemailId
          : institutionemailId // ignore: cast_nullable_to_non_nullable
              as String?,
      institutionName: freezed == institutionName
          ? _value.institutionName
          : institutionName // ignore: cast_nullable_to_non_nullable
              as String?,
      contactpersonname: freezed == contactpersonname
          ? _value.contactpersonname
          : contactpersonname // ignore: cast_nullable_to_non_nullable
              as String?,
      contactpersonemailId: freezed == contactpersonemailId
          ? _value.contactpersonemailId
          : contactpersonemailId // ignore: cast_nullable_to_non_nullable
              as String?,
      contactpersonphoneNumber: freezed == contactpersonphoneNumber
          ? _value.contactpersonphoneNumber
          : contactpersonphoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      googlemaplink: freezed == googlemaplink
          ? _value.googlemaplink
          : googlemaplink // ignore: cast_nullable_to_non_nullable
              as String?,
      institutionId: freezed == institutionId
          ? _value.institutionId
          : institutionId // ignore: cast_nullable_to_non_nullable
              as String?,
      sportsgrounds: freezed == sportsgrounds
          ? _value.sportsgrounds
          : sportsgrounds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      schoolSchedule: freezed == schoolSchedule
          ? _value.schoolSchedule
          : schoolSchedule // ignore: cast_nullable_to_non_nullable
              as SchoolSchedule?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SchoolScheduleCopyWith<$Res>? get schoolSchedule {
    if (_value.schoolSchedule == null) {
      return null;
    }

    return $SchoolScheduleCopyWith<$Res>(_value.schoolSchedule!, (value) {
      return _then(_value.copyWith(schoolSchedule: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SchoolImplCopyWith<$Res> implements $SchoolCopyWith<$Res> {
  factory _$$SchoolImplCopyWith(
          _$SchoolImpl value, $Res Function(_$SchoolImpl) then) =
      __$$SchoolImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? schoolId,
      String? schoolName,
      String? address1,
      String? address2,
      String? city,
      String? state,
      String? institutionemailId,
      String? institutionName,
      String? contactpersonname,
      String? contactpersonemailId,
      String? contactpersonphoneNumber,
      String? googlemaplink,
      String? institutionId,
      List<String>? sportsgrounds,
      @JsonKey(name: "SchoolSchedule") SchoolSchedule? schoolSchedule});

  @override
  $SchoolScheduleCopyWith<$Res>? get schoolSchedule;
}

/// @nodoc
class __$$SchoolImplCopyWithImpl<$Res>
    extends _$SchoolCopyWithImpl<$Res, _$SchoolImpl>
    implements _$$SchoolImplCopyWith<$Res> {
  __$$SchoolImplCopyWithImpl(
      _$SchoolImpl _value, $Res Function(_$SchoolImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolId = freezed,
    Object? schoolName = freezed,
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? institutionemailId = freezed,
    Object? institutionName = freezed,
    Object? contactpersonname = freezed,
    Object? contactpersonemailId = freezed,
    Object? contactpersonphoneNumber = freezed,
    Object? googlemaplink = freezed,
    Object? institutionId = freezed,
    Object? sportsgrounds = freezed,
    Object? schoolSchedule = freezed,
  }) {
    return _then(_$SchoolImpl(
      schoolId: freezed == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolName: freezed == schoolName
          ? _value.schoolName
          : schoolName // ignore: cast_nullable_to_non_nullable
              as String?,
      address1: freezed == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      institutionemailId: freezed == institutionemailId
          ? _value.institutionemailId
          : institutionemailId // ignore: cast_nullable_to_non_nullable
              as String?,
      institutionName: freezed == institutionName
          ? _value.institutionName
          : institutionName // ignore: cast_nullable_to_non_nullable
              as String?,
      contactpersonname: freezed == contactpersonname
          ? _value.contactpersonname
          : contactpersonname // ignore: cast_nullable_to_non_nullable
              as String?,
      contactpersonemailId: freezed == contactpersonemailId
          ? _value.contactpersonemailId
          : contactpersonemailId // ignore: cast_nullable_to_non_nullable
              as String?,
      contactpersonphoneNumber: freezed == contactpersonphoneNumber
          ? _value.contactpersonphoneNumber
          : contactpersonphoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      googlemaplink: freezed == googlemaplink
          ? _value.googlemaplink
          : googlemaplink // ignore: cast_nullable_to_non_nullable
              as String?,
      institutionId: freezed == institutionId
          ? _value.institutionId
          : institutionId // ignore: cast_nullable_to_non_nullable
              as String?,
      sportsgrounds: freezed == sportsgrounds
          ? _value._sportsgrounds
          : sportsgrounds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      schoolSchedule: freezed == schoolSchedule
          ? _value.schoolSchedule
          : schoolSchedule // ignore: cast_nullable_to_non_nullable
              as SchoolSchedule?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SchoolImpl implements _School {
  const _$SchoolImpl(
      {this.schoolId,
      this.schoolName,
      this.address1,
      this.address2,
      this.city,
      this.state,
      this.institutionemailId,
      this.institutionName,
      this.contactpersonname,
      this.contactpersonemailId,
      this.contactpersonphoneNumber,
      this.googlemaplink,
      this.institutionId,
      final List<String>? sportsgrounds,
      @JsonKey(name: "SchoolSchedule") this.schoolSchedule})
      : _sportsgrounds = sportsgrounds;

  factory _$SchoolImpl.fromJson(Map<String, dynamic> json) =>
      _$$SchoolImplFromJson(json);

  @override
  final String? schoolId;
  @override
  final String? schoolName;
  @override
  final String? address1;
  @override
  final String? address2;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? institutionemailId;
  @override
  final String? institutionName;
  @override
  final String? contactpersonname;
  @override
  final String? contactpersonemailId;
  @override
  final String? contactpersonphoneNumber;
  @override
  final String? googlemaplink;
  @override
  final String? institutionId;
  final List<String>? _sportsgrounds;
  @override
  List<String>? get sportsgrounds {
    final value = _sportsgrounds;
    if (value == null) return null;
    if (_sportsgrounds is EqualUnmodifiableListView) return _sportsgrounds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "SchoolSchedule")
  final SchoolSchedule? schoolSchedule;

  @override
  String toString() {
    return 'School(schoolId: $schoolId, schoolName: $schoolName, address1: $address1, address2: $address2, city: $city, state: $state, institutionemailId: $institutionemailId, institutionName: $institutionName, contactpersonname: $contactpersonname, contactpersonemailId: $contactpersonemailId, contactpersonphoneNumber: $contactpersonphoneNumber, googlemaplink: $googlemaplink, institutionId: $institutionId, sportsgrounds: $sportsgrounds, schoolSchedule: $schoolSchedule)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchoolImpl &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.schoolName, schoolName) ||
                other.schoolName == schoolName) &&
            (identical(other.address1, address1) ||
                other.address1 == address1) &&
            (identical(other.address2, address2) ||
                other.address2 == address2) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.institutionemailId, institutionemailId) ||
                other.institutionemailId == institutionemailId) &&
            (identical(other.institutionName, institutionName) ||
                other.institutionName == institutionName) &&
            (identical(other.contactpersonname, contactpersonname) ||
                other.contactpersonname == contactpersonname) &&
            (identical(other.contactpersonemailId, contactpersonemailId) ||
                other.contactpersonemailId == contactpersonemailId) &&
            (identical(
                    other.contactpersonphoneNumber, contactpersonphoneNumber) ||
                other.contactpersonphoneNumber == contactpersonphoneNumber) &&
            (identical(other.googlemaplink, googlemaplink) ||
                other.googlemaplink == googlemaplink) &&
            (identical(other.institutionId, institutionId) ||
                other.institutionId == institutionId) &&
            const DeepCollectionEquality()
                .equals(other._sportsgrounds, _sportsgrounds) &&
            (identical(other.schoolSchedule, schoolSchedule) ||
                other.schoolSchedule == schoolSchedule));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      schoolId,
      schoolName,
      address1,
      address2,
      city,
      state,
      institutionemailId,
      institutionName,
      contactpersonname,
      contactpersonemailId,
      contactpersonphoneNumber,
      googlemaplink,
      institutionId,
      const DeepCollectionEquality().hash(_sportsgrounds),
      schoolSchedule);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SchoolImplCopyWith<_$SchoolImpl> get copyWith =>
      __$$SchoolImplCopyWithImpl<_$SchoolImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SchoolImplToJson(
      this,
    );
  }
}

abstract class _School implements School {
  const factory _School(
      {final String? schoolId,
      final String? schoolName,
      final String? address1,
      final String? address2,
      final String? city,
      final String? state,
      final String? institutionemailId,
      final String? institutionName,
      final String? contactpersonname,
      final String? contactpersonemailId,
      final String? contactpersonphoneNumber,
      final String? googlemaplink,
      final String? institutionId,
      final List<String>? sportsgrounds,
      @JsonKey(name: "SchoolSchedule")
      final SchoolSchedule? schoolSchedule}) = _$SchoolImpl;

  factory _School.fromJson(Map<String, dynamic> json) = _$SchoolImpl.fromJson;

  @override
  String? get schoolId;
  @override
  String? get schoolName;
  @override
  String? get address1;
  @override
  String? get address2;
  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get institutionemailId;
  @override
  String? get institutionName;
  @override
  String? get contactpersonname;
  @override
  String? get contactpersonemailId;
  @override
  String? get contactpersonphoneNumber;
  @override
  String? get googlemaplink;
  @override
  String? get institutionId;
  @override
  List<String>? get sportsgrounds;
  @override
  @JsonKey(name: "SchoolSchedule")
  SchoolSchedule? get schoolSchedule;
  @override
  @JsonKey(ignore: true)
  _$$SchoolImplCopyWith<_$SchoolImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SchoolSchedule _$SchoolScheduleFromJson(Map<String, dynamic> json) {
  return _SchoolSchedule.fromJson(json);
}

/// @nodoc
mixin _$SchoolSchedule {
  String get weekdayfromtime => throw _privateConstructorUsedError;
  String get weekdaytotime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SchoolScheduleCopyWith<SchoolSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchoolScheduleCopyWith<$Res> {
  factory $SchoolScheduleCopyWith(
          SchoolSchedule value, $Res Function(SchoolSchedule) then) =
      _$SchoolScheduleCopyWithImpl<$Res, SchoolSchedule>;
  @useResult
  $Res call({String weekdayfromtime, String weekdaytotime});
}

/// @nodoc
class _$SchoolScheduleCopyWithImpl<$Res, $Val extends SchoolSchedule>
    implements $SchoolScheduleCopyWith<$Res> {
  _$SchoolScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekdayfromtime = null,
    Object? weekdaytotime = null,
  }) {
    return _then(_value.copyWith(
      weekdayfromtime: null == weekdayfromtime
          ? _value.weekdayfromtime
          : weekdayfromtime // ignore: cast_nullable_to_non_nullable
              as String,
      weekdaytotime: null == weekdaytotime
          ? _value.weekdaytotime
          : weekdaytotime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SchoolScheduleImplCopyWith<$Res>
    implements $SchoolScheduleCopyWith<$Res> {
  factory _$$SchoolScheduleImplCopyWith(_$SchoolScheduleImpl value,
          $Res Function(_$SchoolScheduleImpl) then) =
      __$$SchoolScheduleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String weekdayfromtime, String weekdaytotime});
}

/// @nodoc
class __$$SchoolScheduleImplCopyWithImpl<$Res>
    extends _$SchoolScheduleCopyWithImpl<$Res, _$SchoolScheduleImpl>
    implements _$$SchoolScheduleImplCopyWith<$Res> {
  __$$SchoolScheduleImplCopyWithImpl(
      _$SchoolScheduleImpl _value, $Res Function(_$SchoolScheduleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekdayfromtime = null,
    Object? weekdaytotime = null,
  }) {
    return _then(_$SchoolScheduleImpl(
      weekdayfromtime: null == weekdayfromtime
          ? _value.weekdayfromtime
          : weekdayfromtime // ignore: cast_nullable_to_non_nullable
              as String,
      weekdaytotime: null == weekdaytotime
          ? _value.weekdaytotime
          : weekdaytotime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SchoolScheduleImpl implements _SchoolSchedule {
  const _$SchoolScheduleImpl(
      {required this.weekdayfromtime, required this.weekdaytotime});

  factory _$SchoolScheduleImpl.fromJson(Map<String, dynamic> json) =>
      _$$SchoolScheduleImplFromJson(json);

  @override
  final String weekdayfromtime;
  @override
  final String weekdaytotime;

  @override
  String toString() {
    return 'SchoolSchedule(weekdayfromtime: $weekdayfromtime, weekdaytotime: $weekdaytotime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchoolScheduleImpl &&
            (identical(other.weekdayfromtime, weekdayfromtime) ||
                other.weekdayfromtime == weekdayfromtime) &&
            (identical(other.weekdaytotime, weekdaytotime) ||
                other.weekdaytotime == weekdaytotime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, weekdayfromtime, weekdaytotime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SchoolScheduleImplCopyWith<_$SchoolScheduleImpl> get copyWith =>
      __$$SchoolScheduleImplCopyWithImpl<_$SchoolScheduleImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SchoolScheduleImplToJson(
      this,
    );
  }
}

abstract class _SchoolSchedule implements SchoolSchedule {
  const factory _SchoolSchedule(
      {required final String weekdayfromtime,
      required final String weekdaytotime}) = _$SchoolScheduleImpl;

  factory _SchoolSchedule.fromJson(Map<String, dynamic> json) =
      _$SchoolScheduleImpl.fromJson;

  @override
  String get weekdayfromtime;
  @override
  String get weekdaytotime;
  @override
  @JsonKey(ignore: true)
  _$$SchoolScheduleImplCopyWith<_$SchoolScheduleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
