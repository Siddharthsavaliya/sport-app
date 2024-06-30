import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sport_app/model/booking_history_model/booking_history_model.dart';
import 'package:sport_app/model/coach_booking_history/coach_booking_history.dart';
import 'package:sport_app/model/faq_model/faq_model.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/repository/ground_repository.dart';

part 'booking_history_state.dart';
part 'booking_history_event.dart';

class BookingHistoryBloc
    extends Bloc<BookingHistoryEvent, BookingHistoryState> {
  BookingHistoryBloc() : super(const BookingHistoryState()) {
    on<GetBookingHistoryEvent>(_getFaqEvent);
    on<GetCoachBookingHistoryEvent>(_getCoachEvent);
  }
  final GroundRepository groundRepository = GroundRepository();

  Future<void> _getFaqEvent(
      GetBookingHistoryEvent event, Emitter<BookingHistoryState> emit) async {
    emit(state.copyWith(
      status: Status.inProgress,
    ));
    final result = await groundRepository.getBookingHistory();

    result.when(
      success: (data) {
        emit(state.copyWith(status: Status.loaded, bookingHistory: data));
      },
      failure: (error) {
        emit(state.copyWith(message: error, status: Status.failed));
      },
    );
  }

  Future<void> _getCoachEvent(GetCoachBookingHistoryEvent event,
      Emitter<BookingHistoryState> emit) async {
    emit(state.copyWith(
      status: Status.inProgress,
    ));
    final result = await groundRepository.getCoachBookingHistory();

    result.when(
      success: (data) {
        emit(state.copyWith(status: Status.loaded, coachBookingHistory: data));
      },
      failure: (error) {
        emit(state.copyWith(message: error, status: Status.failed));
      },
    );
  }
}
