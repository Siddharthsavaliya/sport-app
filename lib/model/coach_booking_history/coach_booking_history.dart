import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sport_app/model/coach_model/coach_model.dart';
import 'package:sport_app/model/school_model/school_model.dart';

part 'coach_booking_history.freezed.dart';
part 'coach_booking_history.g.dart';

@freezed
abstract class CoachBookingHistory with _$CoachBookingHistory {
  const factory CoachBookingHistory({
    @JsonKey(name: "_id") required String id,
    required String userId,
    required Coach coachId,
    required School schoolId,
    required String qrCode,
    required int totalPrice,
    required DateTime expirationDate,
  }) = _CoachBookingHistory;

  factory CoachBookingHistory.fromJson(Map<String, dynamic> json) =>
      _$CoachBookingHistoryFromJson(json);
}

List<CoachBookingHistory> buildCoachHistoryListFromResponse(
  List<dynamic> response,
) {
  return (response)
      .map(
        (json) => CoachBookingHistory.fromJson(json as Map<String, dynamic>),
      )
      .toList();
}
