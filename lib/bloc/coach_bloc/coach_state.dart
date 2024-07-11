import 'package:equatable/equatable.dart';
import 'package:sport_app/model/coach_booking_model/coach_booking_model.dart';
import 'package:sport_app/model/coach_model/coach_model.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/model/coach_history_model/coach_history_model.dart'
    as coach_history_model;

class CoachState extends Equatable {
  const CoachState({
    this.message = " ",
    this.redirectUrl = "",
    this.id = "",
    this.isBooking = false,
    this.isBookingSuccess = false,
    this.coachBookingModel,
    this.status = Status.initial,
    this.coachsData = const [],
    this.coachHistoryList = const [],
  });
  final List<Coach>? coachsData;
  final String message;
  final String redirectUrl;
  final String id;
  final bool isBooking;
  final bool isBookingSuccess;
  final CoachBookingModel? coachBookingModel;
  final List<coach_history_model.CoachHistoryModel> coachHistoryList;
  final Status status;

  @override
  List<Object?> get props {
    return [
      status,
      id,
      isBooking,
      coachHistoryList,
      redirectUrl,
      isBookingSuccess,
      coachBookingModel,
      message,
      coachsData,
    ];
  }

  CoachState copyWith({
    String? message,
    List<coach_history_model.CoachHistoryModel>? coachHistoryList,
    String? id,
    String? redirectUrl,
    bool? isBooking,
    bool? isBookingSuccess,
    Status? status,
    CoachBookingModel? coachBookingModel,
    List<Coach>? coachsData,
  }) {
    return CoachState(
      message: message ?? this.message,
      coachHistoryList: coachHistoryList ?? this.coachHistoryList,
      redirectUrl: redirectUrl ?? this.redirectUrl,
      isBookingSuccess: isBookingSuccess ?? this.isBookingSuccess,
      id: id ?? this.id,
      coachBookingModel: coachBookingModel ?? this.coachBookingModel,
      isBooking: isBooking ?? this.isBooking,
      status: status ?? this.status,
      coachsData: coachsData ?? this.coachsData,
    );
  }
}
