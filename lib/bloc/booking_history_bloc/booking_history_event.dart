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
