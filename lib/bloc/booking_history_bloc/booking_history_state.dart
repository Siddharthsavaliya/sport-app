// ignore_for_file: must_be_immutable
part of 'booking_history_bloc.dart';

class BookingHistoryState extends Equatable {
  const BookingHistoryState({
    this.message = " ",
    this.url = "",
    this.isCancel = false,
    this.status = Status.initial,
    this.faqList = const [],
    this.coachBookingHistory = const [],
    this.bookingHistory = const [],
  });
  final String message;
  final String url;
  final bool isCancel;
  final Status status;
  final List<FaqModel> faqList;
  final List<BookingHistory> bookingHistory;
  final List<CoachBookingHistoryModel> coachBookingHistory;

  @override
  List<Object?> get props {
    return [
      status,
      message,
      url,
      faqList,
      bookingHistory,
      coachBookingHistory,
      isCancel
    ];
  }

  BookingHistoryState copyWith({
    String? message,
    Status? status,
    bool? isCancel,
    List<BookingHistory>? bookingHistory,
    List<CoachBookingHistoryModel>? coachBookingHistory,
    String? url,
    List<FaqModel>? faqList,
  }) {
    return BookingHistoryState(
      message: message ?? this.message,
      isCancel: isCancel ?? this.isCancel,
      status: status ?? this.status,
      url: url ?? this.url,
      bookingHistory: bookingHistory ?? this.bookingHistory,
      coachBookingHistory: coachBookingHistory ?? this.coachBookingHistory,
      faqList: faqList ?? this.faqList,
    );
  }
}
