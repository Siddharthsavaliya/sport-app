part of 'booking_history_bloc.dart';

abstract class BookingHistoryEvent extends Equatable {
  const BookingHistoryEvent();

  @override
  List<Object> get props => [];
}

class GetBookingHistoryEvent extends BookingHistoryEvent {
  const GetBookingHistoryEvent();

  @override
  List<Object> get props => [];
}

class GetCoachBookingHistoryEvent extends BookingHistoryEvent {
  const GetCoachBookingHistoryEvent();

  @override
  List<Object> get props => [];
}

class SetBookingDataEvent extends BookingHistoryEvent {
  const SetBookingDataEvent({this.groundSlotData, this.users});
  final GroundSlotData? groundSlotData;
  final List<CoachListData>? users;
  @override
  List<Object> get props => [];
}

class CancelBookingEvent extends BookingHistoryEvent {
  const CancelBookingEvent(this.id);
  final String id;
  @override
  List<Object> get props => [];
}
