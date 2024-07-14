// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sport_app/model/ground_model/ground_model.dart';
import 'package:sport_app/res/api_constants.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/screens/booking/available_slots_component.dart';
import 'package:sport_app/screens/booking/date_item.dart';
import 'package:sport_app/screens/booking/date_picker_controller.dart';
import 'package:sport_app/screens/booking/horizontal_date_picker.dart';
import 'package:sport_app/screens/booking/model/ground_slot_model.dart';
import 'package:sport_app/screens/booking/quantity_builder.dart';
import 'package:sport_app/screens/booking/slot_data.dart';
import 'package:sport_app/utils/helper.dart';
import 'package:sport_app/widget/qty_sheet.dart';

class BookingSlotsComponent extends StatefulWidget {
  final GroundModel? groundData;

  final bool showAppbar;
  final VoidCallback? onApplyClick;
  final bool? isSecond;
  final DateTime? selectedHorizontalDate;
  final GroundSlotData? groundSlotData;
  final String? selectedSlot;
  const BookingSlotsComponent(
      {super.key,
      this.groundData,
      this.showAppbar = false,
      this.onApplyClick,
      this.isSecond,
      this.selectedHorizontalDate,
      this.selectedSlot,
      this.groundSlotData});

  @override
  _BookingSlotsComponentState createState() => _BookingSlotsComponentState();
}

class _BookingSlotsComponentState extends State<BookingSlotsComponent> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  List<SlotData> slotsList = [];
  List<GroundSlotData> groundSlotsList = [];
  GroundSlotResponse? groundSlotResponse;

  final DatePickerController _datePickerController = DatePickerController();

  DateTime selectedHorizontalDate = DateTime.now();

  bool isSlotSelected = false;
  bool isTodaySlotSelected = false;
  bool isUpdate = false;
  bool is24HourFormat = false;

  UniqueKey keyForTimeSlotWidget = UniqueKey();

  String? selectedDate;
  num finalQuantity = 1;

  List<GroundSlotData> selectedSlot = [];

  @override
  void initState() {
    super.initState();
    getGroundSlot();
  }

  Future<void> getGroundSlot() async {
    final token = await getKeyValue(key: "token");
    var headers = {'Authorization': 'Bearer $token'};
    var dio = Dio();
    print(
        "${ApiConstants.baseUrl}${ApiConstants.getSlot}${widget.groundData?.id}");
    var response = await dio.request(
      '${ApiConstants.baseUrl}${ApiConstants.getSlot}${widget.groundData?.id}',
      options: Options(
        method: 'GET',
        headers: headers,
      ),
    );
    log(response.data);
    if (response.statusCode == 200) {
      groundSlotResponse = GroundSlotResponse.fromJson(response.data);

      setState(() {});
      print(json.encode(response.data));
    } else {
      print(response.statusMessage);
    }
  }

  String formatBookingDate(String? dateTime,
      {String format = 'dd-MMM-yyyy hh:mm a',
      bool isFromMicrosecondsSinceEpoch = false,
      bool isLanguageNeeded = true,
      bool isTime = false,
      bool showDateWithTime = false}) {
    final languageCode = isLanguageNeeded ? 'en' : null;
    final parsedDateTime = isFromMicrosecondsSinceEpoch
        ? DateTime.fromMicrosecondsSinceEpoch(
            dateTime.validate().toInt() * 1000)
        : DateTime.parse(dateTime.validate());

    return DateFormat(format, languageCode).format(parsedDateTime);
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  Future<int?> showQuantityGetterDialog(
      BuildContext context, int totalQuantity) {
    return showDialog<int>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          titlePadding: EdgeInsets.zero,
          title: Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Text(
              "How many players?",
              style: AppStyle.mediumText.copyWith(
                  fontSize: 20.sp, color: AppColors.white, letterSpacing: 0.8),
            ),
          ),
          content: QuantityGetter(
            totalQuantity: totalQuantity,
            onSubmit: (int quantity) {
              finalQuantity = quantity;
            },
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context, finalQuantity);
              },
              child: const Text(
                'Submit',
                style: TextStyle(fontSize: 18),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'Cancel',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    List<String> temp = [];
    List<GroundSlotData> tempGround = [];
    print(groundSlotResponse?.data!.length);

    groundSlotResponse?.data?.forEach((element) {
      if (element.dayOfWeek?.toLowerCase() ==
          selectedHorizontalDate.weekday.toWeekDay().toLowerCase()) {
        try {
          DateFormat inputFormat = DateFormat("hh:mm a");

          DateTime dateTime = inputFormat
              .parse(element.startTime.toString().trim().toUpperCase());

          DateFormat outputFormat = DateFormat("HH:mm:ss");

          String formattedTime = outputFormat.format(dateTime);

          temp.add(formattedTime);

          tempGround.add(GroundSlotData(
              startTime: formattedTime,
              availableSlots: element.availableSlots,
              booked: element.booked,
              dayOfWeek: element.dayOfWeek,
              endTime: element.endTime,
              id: element.id,
              totalSlots: element.totalSlots,
              v: element.v));
        } catch (e) {
          print("Error parsing time: $e");
        }
      }
    });

    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: context.height() * 0.01),
            decoration: boxDecorationWithRoundedCorners(
                borderRadius:
                    radiusOnly(topLeft: defaultRadius, topRight: defaultRadius),
                backgroundColor: context.cardColor),
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                SingleChildScrollView(
                  // controller: widget.scrollController,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Please Select Date Time",
                          style: boldTextStyle(size: 14)),
                      16.height,
                      HorizontalDatePickerWidget(
                        height: 90,
                        startDate:
                            widget.selectedHorizontalDate ?? DateTime.now(),
                        endDate: widget.selectedHorizontalDate ??
                            DateTime.now().add(const Duration(days: 6)),
                        selectedDate: widget.selectedHorizontalDate ??
                            selectedHorizontalDate,
                        widgetWidth: context.width(),
                        selectedColor: AppColors.primaryColor,
                        dateItemComponentList: const [
                          DateItem.Month,
                          DateItem.Day,
                          DateItem.WeekDay
                        ],
                        dayFontSize: 20,
                        weekDayFontSize: 16,
                        datePickerController: _datePickerController,
                        onValueSelected: (date) {
                          selectedHorizontalDate = date;
                          isSlotSelected = false;
                          keyForTimeSlotWidget = UniqueKey();
                          setState(() {});
                        },
                      ),
                      16.height,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Use 24-hour formate",
                              style: secondaryTextStyle(size: 14)),
                          16.width,
                          Builder(builder: (context) {
                            return Transform.scale(
                              scale: 0.8,
                              child: Switch.adaptive(
                                value: is24HourFormat,
                                onChanged: (value) {
                                  is24HourFormat = !is24HourFormat;
                                  setState(() {});
                                },
                              ),
                            );
                          })
                        ],
                      ),
                      16.height,
                      Text("Available Slots", style: boldTextStyle(size: 14)),
                      16.height,
                      tempGround.isNotEmpty
                          ? AvailableSlotsComponent(
                              is24HourFormat: is24HourFormat,
                              key: keyForTimeSlotWidget,
                              selectedSlots: selectedSlot,
                              isProvider: false,
                              disableGroundSlotData: widget.isSecond!
                                  ? [widget.groundSlotData!]
                                  : [],
                              isSecond: widget.isSecond ?? false,
                              availableSlots: tempGround,
                              groundSlotData: tempGround,
                              selectedDate: widget.selectedHorizontalDate ??
                                  selectedHorizontalDate,
                              onChanged: (List<GroundSlotData> selectedSlots) {
                                isSlotSelected = selectedSlots.isNotEmpty;
                                if (isSlotSelected && selectedSlot.isEmpty) {
                                  selectedSlot.add(selectedSlots.first);
                                } else {
                                  selectedSlot = [];
                                }
                                setState(() {});
                              },
                            )
                          : Center(
                              child: NoDataWidget(title: "No slot available")),
                    ],
                  ),
                ).expand(),
                16.height,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppButton(
                      shapeBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      text: "Book Ground",
                      color: AppColors.primaryColor,
                      textColor: AppColors.white,
                      onTap: () async {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) => CountSelectionBottomSheet(
                            maxQty: selectedSlot[0].availableSlots!,
                            groundData: widget.groundData,
                            selectedSlot: selectedSlot[0],
                            selectedHorizontalDate: selectedHorizontalDate,
                            is24HourFormat: is24HourFormat,
                          ),
                        );
                      },
                    ).expand(),
                  ],
                ).paddingOnly(bottom: 8),
              ],
            ),
          ).expand(),
        ],
      ),
    );
  }
}
