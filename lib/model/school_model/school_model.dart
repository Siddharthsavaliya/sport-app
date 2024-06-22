import 'package:freezed_annotation/freezed_annotation.dart';

part 'school_model.freezed.dart';
part 'school_model.g.dart';

@freezed
class School with _$School {
  const factory School({
    String? schoolId,
    String? schoolName,
    String? address1,
    String? address2,
    String? city,
    String? state,
    String? institutionemailId,
    String? contactpersonname,
    String? contactpersonemailId,
    String? contactpersonphoneNumber,
    String? googlemaplink,
    String? institutionId,
    List<String>? sportsgrounds,
    @JsonKey(name: "SchoolSchedule") SchoolSchedule? schoolSchedule,
  }) = _School;

  factory School.fromJson(Map<String, dynamic> json) => _$SchoolFromJson(json);
}

@freezed
class SchoolSchedule with _$SchoolSchedule {
  const factory SchoolSchedule({
    required String weekdayfromtime,
    required String weekdaytotime,
  }) = _SchoolSchedule;

  factory SchoolSchedule.fromJson(Map<String, dynamic> json) =>
      _$SchoolScheduleFromJson(json);
}
