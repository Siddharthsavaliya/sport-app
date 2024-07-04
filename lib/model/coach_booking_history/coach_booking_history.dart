import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sport_app/model/coach_model/coach_model.dart';
import 'package:sport_app/model/school_model/school_model.dart';

part 'coach_booking_history.freezed.dart';
part 'coach_booking_history.g.dart';

@freezed
abstract class CoachBookingHistoryModel with _$CoachBookingHistoryModel {
  const factory CoachBookingHistoryModel({
    @JsonKey(name: "_id") required String id,
    required String userId,
    required Coach coachId,
    required School schoolId,
    required String qrCode,
    required String url,
    required int totalPrice,
    required num? gstAmount,
    required String? startTime,
    required String? createdAt,
    required String? endTime,
    required num? subtotal,
    required DateTime expirationDate,
  }) = _CoachBookingHistory;

  factory CoachBookingHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$CoachBookingHistoryModelFromJson(json);
}

List<CoachBookingHistoryModel> buildCoachHistoryListFromResponse(
  List<dynamic> response,
) {
  return (response)
      .map(
        (json) =>
            CoachBookingHistoryModel.fromJson(json as Map<String, dynamic>),
      )
      .toList();
}
