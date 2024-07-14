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
    this.users = const [],
    this.groundSlotData = const [],
  });
  final String message;
  final String url;
  final bool isCancel;
  final Status status;
  final List<GroundSlotData> groundSlotData;
  final List<CoachListData> users;
  final List<FaqModel> faqList;
  final List<BookingHistory> bookingHistory;
  final List<CoachBookingHistoryModel> coachBookingHistory;

  @override
  List<Object?> get props {
    return [
      status,
      message,
      groundSlotData,
      users,
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
    List<CoachListData>? users,
    List<GroundSlotData>? groundSlotData,
  }) {
    return BookingHistoryState(
      message: message ?? this.message,
      users: users ?? this.users,
      groundSlotData: groundSlotData ?? this.groundSlotData,
      isCancel: isCancel ?? this.isCancel,
      status: status ?? this.status,
      url: url ?? this.url,
      bookingHistory: bookingHistory ?? this.bookingHistory,
      coachBookingHistory: coachBookingHistory ?? this.coachBookingHistory,
      faqList: faqList ?? this.faqList,
    );
  }
}
