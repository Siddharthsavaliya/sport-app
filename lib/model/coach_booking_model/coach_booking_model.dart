import 'package:freezed_annotation/freezed_annotation.dart';

part 'coach_booking_model.freezed.dart';
part 'coach_booking_model.g.dart';

@freezed
class CoachBookingModel with _$CoachBookingModel {
  const factory CoachBookingModel({
    required CoachBooking coachBooking,
    required String starttime,
    required String endtime,
    required String userName,
    required String phoneNumber,
  }) = _CoachBookingModel;

  factory CoachBookingModel.fromJson(Map<String, dynamic> json) =>
      _$CoachBookingModelFromJson(json);
}

@freezed
class CoachBooking with _$CoachBooking {
  const factory CoachBooking({
    required String userId,
    required String coachId,
    required String qrCode,
    required int totalPrice,
    required DateTime expirationDate,
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: '__v') required int v,
  }) = _CoachBooking;

  factory CoachBooking.fromJson(Map<String, dynamic> json) =>
      _$CoachBookingFromJson(json);
}


