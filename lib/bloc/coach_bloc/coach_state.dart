import 'package:equatable/equatable.dart';
import 'package:sport_app/model/coach_booking_model/coach_booking_model.dart';
import 'package:sport_app/model/coach_model/coach_model.dart';
import 'package:sport_app/model/status.dart';

class CoachState extends Equatable {
  const CoachState({
    this.message = " ",
    this.isBooking = false,
    this.coachBookingModel,
    this.status = Status.initial,
    this.coachsData = const [],
  });
  final List<Coach>? coachsData;
  final String message;
  final bool isBooking;
  final CoachBookingModel? coachBookingModel;
  final Status status;

  @override
  List<Object?> get props {
    return [
      status,
      isBooking,
      coachBookingModel,
      message,
      coachsData,
    ];
  }

  CoachState copyWith({
    String? message,
    bool? isBooking,
    Status? status,
    CoachBookingModel? coachBookingModel,
    List<Coach>? coachsData,
  }) {
    return CoachState(
      message: message ?? this.message,
      coachBookingModel: coachBookingModel ?? this.coachBookingModel,
      isBooking: isBooking ?? this.isBooking,
      status: status ?? this.status,
      coachsData: coachsData ?? this.coachsData,
    );
  }
}
