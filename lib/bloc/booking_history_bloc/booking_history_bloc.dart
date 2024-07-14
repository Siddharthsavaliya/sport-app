import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sport_app/model/booking_history_model/booking_history_model.dart';
import 'package:sport_app/model/coach_booking_history/coach_booking_history.dart';
import 'package:sport_app/model/faq_model/faq_model.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/repository/ground_repository.dart';
import 'package:sport_app/screens/booking/model/coach_list_model.dart';
import 'package:sport_app/screens/booking/model/ground_slot_model.dart';

part 'booking_history_state.dart';
part 'booking_history_event.dart';

class BookingHistoryBloc
    extends Bloc<BookingHistoryEvent, BookingHistoryState> {
  BookingHistoryBloc() : super(const BookingHistoryState()) {
    on<GetBookingHistoryEvent>(_getFaqEvent);
    on<GetCoachBookingHistoryEvent>(_getCoachEvent);
    on<CancelBookingEvent>(_cancelBookingEvent);
    on<SetBookingDataEvent>(_setBookingDataEvent);
  }
  final GroundRepository groundRepository = GroundRepository();

  Future<void> _getFaqEvent(
      GetBookingHistoryEvent event, Emitter<BookingHistoryState> emit) async {
    emit(state.copyWith(status: Status.inProgress, isCancel: false));
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
    emit(state.copyWith(status: Status.inProgress, isCancel: false));
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

  Future<void> _cancelBookingEvent(
      CancelBookingEvent event, Emitter<BookingHistoryState> emit) async {
    emit(state.copyWith(status: Status.inProgress, isCancel: true));
    final result = await groundRepository.cancelBooking(event.id);

    result.when(
      success: (data) {
        emit(state.copyWith(status: Status.loaded, message: data));
      },
      failure: (error) {
        emit(state.copyWith(message: error, status: Status.failed));
      },
    );
  }

  Future<void> _setBookingDataEvent(
      SetBookingDataEvent event, Emitter<BookingHistoryState> emit) async {
    if (event.groundSlotData != null) {
      List<GroundSlotData> groundSlotData = List.from(state.groundSlotData);
      groundSlotData.add(event.groundSlotData!);
      emit(state.copyWith(groundSlotData: groundSlotData));
    }
    if (event.users != null) {
      emit(state.copyWith(users: event.users));
    }
  }
}
