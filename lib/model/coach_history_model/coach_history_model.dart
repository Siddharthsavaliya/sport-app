import 'package:freezed_annotation/freezed_annotation.dart';

part 'coach_history_model.freezed.dart';
part 'coach_history_model.g.dart';

@freezed
class CoachHistoryModel with _$CoachHistoryModel {
  const factory CoachHistoryModel({
    @JsonKey(name: "_id") required String id,
    required User userId,
    required Coach coachId,
    required School schoolId,
    required String startTime,
    required String endTime,
    required String qrCode,
    required String transactionId,
    required double totalPrice,
    required double subtotal,
    required double gstAmount,
    required DateTime expirationDate,
    required String payment,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String url,
    required String bookingDateTime,
  }) = _CoachHistoryModel;

  factory CoachHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$CoachHistoryModelFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    required String userName,
    required String phoneNumber,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Coach with _$Coach {
  const factory Coach({
    required List<String> sportsgrounds,
  }) = _Coach;

  factory Coach.fromJson(Map<String, dynamic> json) => _$CoachFromJson(json);
}

@freezed
class School with _$School {
  const factory School({
    required String institutionName,
    required String institutionId,
  }) = _School;

  factory School.fromJson(Map<String, dynamic> json) => _$SchoolFromJson(json);
}
