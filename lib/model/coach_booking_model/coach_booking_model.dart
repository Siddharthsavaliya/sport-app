import 'package:freezed_annotation/freezed_annotation.dart';

part 'coach_booking_model.freezed.dart';
part 'coach_booking_model.g.dart';

@freezed
class CoachBookingModel with _$CoachBookingModel {
  const factory CoachBookingModel({
    required String starttime,
    required String endtime,
    required String transactionId,
    required String url,
    required String qrCode,
    required int totalPrice,
    required String userName,
    required DateTime expirationDate,
    required String phoneNumber,
  }) = _CoachBookingModel;

  factory CoachBookingModel.fromJson(Map<String, dynamic> json) =>
      _$CoachBookingModelFromJson(json);
}
