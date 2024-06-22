// ignore_for_file: must_be_immutable
part of 'booking_history_bloc.dart';

class BookingHistoryState extends Equatable {
  const BookingHistoryState({
    this.message = " ",
    this.url = "",
    this.status = Status.initial,
    this.faqList = const [],
    this.bookingHistory = const [],
  });
  final String message;
  final String url;
  final Status status;
  final List<FaqModel> faqList;
  final List<BookingHistory> bookingHistory;

  @override
  List<Object?> get props {
    return [status, message, url, faqList, bookingHistory];
  }

  BookingHistoryState copyWith({
    String? message,
    Status? status,
    List<BookingHistory>? bookingHistory,
    String? url,
    List<FaqModel>? faqList,
  }) {
    return BookingHistoryState(
      message: message ?? this.message,
      status: status ?? this.status,
      url: url ?? this.url,
      bookingHistory: bookingHistory ?? this.bookingHistory,
      faqList: faqList ?? this.faqList,
    );
  }
}
