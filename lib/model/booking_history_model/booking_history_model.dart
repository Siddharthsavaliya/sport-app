import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sport_app/model/ground_model/ground_model.dart';

part 'booking_history_model.freezed.dart';
part 'booking_history_model.g.dart';

@freezed
class BookingHistory with _$BookingHistory {
  const factory BookingHistory({
    required String? id,
    required String? userId,
    required String? slotId,
    @JsonKey(name: "groundId") required GroundModel ground,
    required String? date,
    required String? dayOfWeek,
    required String? startTime,
    required String? endTime,
    required int? totalCount,
    required String qrCode,
    required List<User> users,
    required int? totalPrice,
    required String? status,
    required int? v,
  }) = _Booking;

  factory BookingHistory.fromJson(Map<String, dynamic> json) =>
      _$BookingHistoryFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    required String firstName,
    required String phoneNumber,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
