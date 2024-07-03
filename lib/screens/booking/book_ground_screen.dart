// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sport_app/data/api_client.dart';
import 'package:sport_app/model/booking/ground_booking_response.dart';
import 'package:sport_app/model/ground_model/ground_model.dart';
import 'package:sport_app/res/api_constants.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/screens/booking/booking_success_screen.dart';
import 'package:sport_app/screens/booking/model/coach_list_model.dart';
import 'package:sport_app/screens/booking/model/ground_slot_model.dart';
import 'package:sport_app/screens/grounds_screen/ground_list_component.dart';
import 'package:sport_app/utils/helper.dart';
import 'package:sport_app/utils/status_dialog.dart';

class BookGroundScreen extends StatefulWidget {
  final DateTime? selectedHorizontalDate;
  final String? selectedSlot;
  final bool is24HourFormat;
  final GroundSlotData? groundSlotData;
  final GroundBookingResponce groundBookingSummary;
  final GroundModel? groundData;
  final List<CoachListData>? coaches;

  const BookGroundScreen({
    super.key,
    this.selectedHorizontalDate,
    required this.groundBookingSummary,
    this.groundSlotData,
    this.groundData,
    this.is24HourFormat = false,
    this.coaches,
    this.selectedSlot,
  });

  @override
  State<BookGroundScreen> createState() => _BookingDetailScreenState();
}

class _BookingDetailScreenState extends State<BookGroundScreen> {
  bool c3 = true;
  Future<void> bookGroundSlot() async {
    showProgressDialogue(context);
    final token = await getKeyValue(key: "token");
    var headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };
    var data = {
      "groundId": "${widget.groundData?.id}",
      "slotId": "${widget.groundSlotData?.id}",
      "date": formatDate(widget.selectedHorizontalDate!),
      "totalCount": "${widget.coaches?.length}",
      "users": widget.coaches?.map((user) => user.toJson()).toList(),
    };
    print("Request : ${jsonEncode(data)}");
    var dio = Dio();
    try {
      var response = await dio.request(
        '${ApiConstants.baseUrl}${ApiConstants.checkOut}',
        options: Options(
          method: 'POST',
          headers: headers,
        ),
        data: jsonEncode(data),
      );

      if (response.statusCode == 200) {
        Navigator.pop(context);
        log(json.encode(response.data).toString());
        GroundBookingResponce groundBookingResponce =
            GroundBookingResponce.fromJson(response.data);
        Navigator.pushReplacement(
            context,
            CupertinoPageRoute(
                builder: (context) => BookingSuccessScreen(
                      groundBookingResponce: groundBookingResponce,
                    )));
      } else {
        Navigator.pop(context);
        showErrorDialogue(context, "Somthing went wrong");
      }
    } on DioException catch (e) {
      if (e.response != null) {
        log(e.response);
        Navigator.pop(context);
        showErrorDialogue(context, "Somthing went wrong");
      } else {
        Navigator.pop(context);
        showErrorDialogue(context, "Somthing went wrong");
      }
    } catch (e) {
      print(e);
      Navigator.pop(context);
      showErrorDialogue(context, "Somthing went wrong");
    }
  }

  Future<void> _showMyDialog() async {
    print("${widget.groundData?.id} : ${widget.groundSlotData?.id}");
    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
          title: const Offstage(),
          content: Container(
            child: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  20.height,
                  Image.asset(
                    AppAssets.qrCode,
                  ).paddingAll(4),
                  20.height,
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    num price = widget.coaches!.length * widget.groundData!.price!;
    num gst = price * 0.18;
    num total = price + gst;

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Booking Summary",
          style: AppStyle.mediumText.copyWith(
              fontSize: 20.sp, color: AppColors.white, letterSpacing: 0.8),
        ),
        elevation: 0,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 0.02.sw),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                addVerticalSpacing(0.01),
                Text(
                  "Slot summary",
                  style: AppStyle.mediumText.copyWith(
                      fontSize: 14.sp,
                      color: AppColors.black,
                      letterSpacing: 0.8),
                ),
                addVerticalSpacing(0.01),
                if (widget.groundData != null) ...{
                  GroundListComponent(
                      groundData: widget.groundData!,
                      isFromBookingSummery: true),
                  addVerticalSpacing(0.005),
                  Container(
                    width: double.infinity,
                    decoration: boxDecorationDefault(color: Colors.white),
                    padding: EdgeInsets.symmetric(
                        horizontal: 0.025.sw, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Address:",
                          style: AppStyle.mediumText.copyWith(
                              fontSize: 14.sp,
                              color: AppColors.black,
                              letterSpacing: 0.8),
                        ),
                        addVerticalSpacing(0.01),
                        Text(
                          "${widget.groundData?.institutionName}",
                          style: AppStyle.mediumText.copyWith(
                              fontSize: 15.sp,
                              color: AppColors.black,
                              letterSpacing: 0.8),
                        ),
                        addVerticalSpacing(0.006),
                        Text(
                          "${widget.groundData?.school!.address1!} ${widget.groundData?.school!.address2!}",
                          style: AppStyle.normalText.copyWith(
                            fontSize: 11.sp,
                            color: AppColors.black,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        addVerticalSpacing(0.002),
                        Text(
                          "Toll Free : 90873480384",
                          style: AppStyle.normalText.copyWith(
                            fontSize: 11.sp,
                            letterSpacing: 1,
                            color: AppColors.black,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                  addVerticalSpacing(0.015),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: boxDecorationDefault(color: Colors.white),
                    width: context.width(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildSummaryRow(
                            "Date:",
                            widget.selectedHorizontalDate != null
                                ? DateFormat('dd MMM, yyyy')
                                    .format(widget.selectedHorizontalDate!)
                                : ''),
                        8.height,
                        buildSummaryRow(
                            "Time:",
                            widget.is24HourFormat
                                ? widget.selectedSlot
                                    .validate()
                                    .splitBefore(':00')
                                : TimeOfDay(
                                        hour: widget.selectedSlot
                                            .validate()
                                            .split(':')
                                            .first
                                            .toInt(),
                                        minute: 00)
                                    .format(context)),
                        8.height,
                        buildSummaryRow(
                            "Quantity:", '${widget.coaches?.length}'),
                      ],
                    ),
                  ),
                },
                16.height,
                if (widget.coaches!.isNotEmpty)
                  Text(
                    "Players Information",
                    style: AppStyle.mediumText.copyWith(
                        fontSize: 14.sp,
                        color: AppColors.black,
                        letterSpacing: 0.8),
                  ),
                addVerticalSpacing(0.005),
                if (widget.groundBookingSummary.data!.users!.isNotEmpty)
                  widget.groundBookingSummary.data?.users != null
                      ? ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          padding: const EdgeInsets.all(0),
                          // scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount:
                              widget.groundBookingSummary.data!.users!.length,
                          itemBuilder: (BuildContext context, int index) {
                            final coach =
                                widget.groundBookingSummary.data!.users![index];
                            return Container(
                              decoration:
                                  boxDecorationDefault(color: Colors.white),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0.02.sw, vertical: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          child: ClipOval(
                                            child: Image.asset(AppAssets.dp),
                                          ),
                                        ),
                                        addHorizontalSpacing(0.015),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              coach.firstName ?? '',
                                              style: AppStyle.mediumText,
                                            ),
                                            addVerticalSpacing(0.001),
                                            Text(
                                              coach.phoneNumber ?? '',
                                              style:
                                                  AppStyle.normalText.copyWith(
                                                color: Colors
                                                    .grey, // Example to distinguish subtitle text
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    if (coach.subscriptionPlan != null) ...[
                                      Text(
                                        "FREE",
                                        style: AppStyle.mediumText
                                            .copyWith(color: AppColors.green),
                                      ),
                                    ]
                                  ],
                                ),
                              ),
                            );
                          },
                        )
                      : const SizedBox.shrink(),
                16.height,
                Text(
                  "Payment summary",
                  style: AppStyle.mediumText.copyWith(
                      fontSize: 14.sp,
                      color: AppColors.black,
                      letterSpacing: 0.8),
                ),
                5.height,
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: boxDecorationDefault(color: Colors.white),
                  width: context.width(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildSummaryRow("Subtotal:",
                          '${widget.groundBookingSummary.data!.subtotal}'),
                      8.height,
                      buildSummaryRow("GST (18%):",
                          '${widget.groundBookingSummary.data!.gst}'),
                      8.height,
                      buildSummaryRow("Total:",
                          '${widget.groundBookingSummary.data!.totalPrice}'),
                    ],
                  ),
                ),
                10.height,
                _checkBox(
                  "I agree with refund policy",
                  (v) {
                    setState(() {
                      c3 = v!;
                    });
                  },
                  c3,
                ),
                90.height,
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                        color: AppColors.white,
                        boxShadow: [BoxShadow(color: AppColors.gray)]),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: AppButton(
                        shapeBorder: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        text: "Check Out",
                        color: AppColors.primaryColor,
                        textColor: AppColors.white,
                        onTap: () {
                          bookGroundSlot();
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSummaryRow(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: AppStyle.mediumText
                .copyWith(fontSize: 14.sp, color: AppColors.black)),
        Text(value,
            style: AppStyle.normalBold
                .copyWith(fontSize: 14.sp, color: AppColors.black)),
      ],
    );
  }
}

Widget _checkBox(String title, void Function(bool?)? onChanged, bool value) {
  return Container(
    width: double.infinity,
    decoration: boxDecorationDefault(color: Colors.white),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.035.sw, vertical: 0.015.sh),
      child: Row(
        children: [
          SizedBox(
              height: 20,
              width: 20,
              child: Checkbox(
                checkColor: AppColors.white,
                activeColor: AppColors.primaryColor,
                value: value,
                onChanged: onChanged,
              )),
          addHorizontalSpacing(0.015),
          Flexible(
            child: Text(
              title,
              style: AppStyle.normalText.copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.darkTextColor,
              ),
            ),
          )
        ],
      ),
    ),
  );
}
