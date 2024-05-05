import 'package:flutter/material.dart';
import 'package:booking_calendar/booking_calendar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';

class SlotSelectionScreen extends StatefulWidget {
  const SlotSelectionScreen({super.key});

  @override
  State<SlotSelectionScreen> createState() => _SlotSelectionScreenState();
}

class _SlotSelectionScreenState extends State<SlotSelectionScreen> {
  final now = DateTime.now();
  late BookingService mockBookingService;

  @override
  void initState() {
    super.initState();
    // DateTime.now().startOfDay
    // DateTime.now().endOfDay
    initializeDateFormatting('IN').then((_) {
      DateTime now = DateTime.now();
      DateTime maxBookingDate = now
          .add(const Duration(days: 2)); // Calculate the maximum booking date

      // Ensure the booking end is within the allowed range
      DateTime bookingEnd = maxBookingDate;

      // Ensure the booking start is within the allowed range
      DateTime bookingStart = now;

      mockBookingService = BookingService(
        serviceName: 'Mock Service',
        serviceDuration: 2,
        bookingEnd: bookingEnd,
        bookingStart: bookingStart,
      );
      setState(() {}); // Trigger a rebuild
    });
  }

  Stream<dynamic>? getBookingStreamMock(
      {required DateTime end, required DateTime start}) {
    return Stream.value([]);
  }

  Future<dynamic> uploadBookingMock(
      {required BookingService newBooking}) async {
    await Future.delayed(const Duration(seconds: 1));
    converted.add(DateTimeRange(
        start: newBooking.bookingStart, end: newBooking.bookingEnd));
    print('${newBooking.toJson()} has been uploaded');
  }

  List<DateTimeRange> converted = [];

  List<DateTimeRange> convertStreamResultMock({required dynamic streamResult}) {
    ///here you can parse the streamresult and convert to [List<DateTimeRange>]
    ///take care this is only mock, so if you add today as disabledDays it will still be visible on the first load
    ///disabledDays will properly work with real data
    DateTime first = now;
    DateTime tomorrow = now.add(const Duration(days: 1));

    converted.add(
        DateTimeRange(start: first, end: now.add(const Duration(minutes: 30))));

    //book whole day example
    converted.add(DateTimeRange(
        start: DateTime(tomorrow.year, tomorrow.month, tomorrow.day, 5, 0),
        end: DateTime(tomorrow.year, tomorrow.month, tomorrow.day, 23, 0)));
    return converted;
  }

  List<DateTimeRange> generatePauseSlots() {
    return [
      DateTimeRange(
          start: DateTime(now.year, now.month, now.day, 12, 0),
          end: DateTime(now.year, now.month, now.day, 13, 0))
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: AppColors.black,
        backgroundColor: Colors.grey.shade300,
        title: Text(
          "Select your slot",
          style: AppStyle.mediumText.copyWith(
              fontSize: 20.sp, color: AppColors.black, letterSpacing: 0.8),
        ),
        elevation: 0,
      ),
      body: Center(
        child: BookingCalendar(
          bookingService: mockBookingService,
          convertStreamResultToDateTimeRanges: convertStreamResultMock,
          getBookingStream: getBookingStreamMock,
          uploadBooking: uploadBookingMock,
          pauseSlots: generatePauseSlots(),
          pauseSlotText: 'LUNCH',
          hideBreakTime: true,
          loadingWidget: const Text('Fetching data...'),
          uploadingWidget: const CircularProgressIndicator(),
          locale: 'IN',
          startingDayOfWeek: StartingDayOfWeek.monday,
          wholeDayIsBookedWidget:
              const Text('Sorry, for this day everything is booked'),
        ),
      ),
    );
  }
}
