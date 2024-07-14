import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:booking_calendar/booking_calendar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:sport_app/model/ground_model/ground_model.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/screens/booking/booking_slot.dart';
import 'package:sport_app/screens/booking/model/ground_slot_model.dart';
import 'package:sport_app/screens/booking/service_detail_responce_model.dart';

class SlotSelectionScreen extends StatefulWidget {
  final GroundModel? groundData;
  final bool? isSecond;
  final int? count;
  final DateTime? selectedHorizontalDate;
  final String? selectedSlot;
  final GroundSlotData? groundSlotData;
  const SlotSelectionScreen({
    super.key,
    this.groundData,
    this.count,
    this.isSecond = false,
    this.selectedHorizontalDate,
    this.selectedSlot,
    this.groundSlotData,
  });

  @override
  State<SlotSelectionScreen> createState() => _SlotSelectionScreenState();
}

class _SlotSelectionScreenState extends State<SlotSelectionScreen> {
  final now = DateTime.now();
  BookingService? mockBookingService;
  ServiceDetailResponse? serviceDetailResponse;

  @override
  void initState() {
    super.initState();
    // getServiceDetail();
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

  Future<void> getServiceDetail() async {
    var headers = {
      'Authorization': 'Bearer 107|JFBeBsYekda4oVvAO8cvP4DQTcPOKJPRyxB3YztV',
      // 'Authorization': 'Bearer 44|QAon0Xtq0t4vKhiqIV4jjgxY9B9dEPpN1ltQy8qu',
      'Content-Type': 'application/json'
    };
    var data = json.encode({"service_id": "146"});
    var dio = Dio();
    Response response = await dio.request(
      'https://client2.iqonic.design/service/handyman-ramya/api/service-detail',
      options: Options(
        method: 'POST',
        headers: headers,
      ),
      data: data,
    );
    if (response.statusCode == 200) {
      serviceDetailResponse = ServiceDetailResponse.fromJson(response.data);
      setState(() {});
      print(json.encode(response.data));
    } else {
      print(response.statusMessage);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Select your slot",
          style: AppStyle.mediumText.copyWith(
              fontSize: 20.sp, color: AppColors.white, letterSpacing: 0.8),
        ),
        elevation: 0,
      ),
      body: Center(
          child: BookingSlotsComponent(
        groundData: widget.groundData,
        groundSlotData: widget.groundSlotData,
        showAppbar: true,
        selectedHorizontalDate: widget.selectedHorizontalDate,
        selectedSlot: widget.selectedSlot,
        isSecond: widget.isSecond,
        onApplyClick: () {
          setState(() {});
        },
      )),
    );
  }
}
