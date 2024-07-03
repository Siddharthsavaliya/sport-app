import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sport_app/model/booking/ground_booking_response.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/screens/app_bottom_bar.dart';
import 'package:sport_app/screens/booking/model/coach_list_model.dart';
import 'package:sport_app/screens/booking/model/ground_slot_model.dart';
import 'package:sport_app/utils/helper.dart';

class BookingSuccessScreen extends StatefulWidget {
  final DateTime? selectedHorizontalDate;
  final String? selectedSlot;
  final bool is24HourFormat;
  final GroundSlotData? groundSlotData;
  final GroundBookingResponce? groundBookingResponce;
  final List<CoachListData>? coaches;

  const BookingSuccessScreen(
      {super.key,
      this.selectedHorizontalDate,
      this.groundBookingResponce,
      this.groundSlotData,
      this.is24HourFormat = false,
      this.coaches,
      this.selectedSlot});

  @override
  State<BookingSuccessScreen> createState() => _BookingDetailScreenState();
}

class _BookingDetailScreenState extends State<BookingSuccessScreen>
    with TickerProviderStateMixin {
  late final AnimationController controller;

  Widget contentBox(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            "QR Code",
            style: AppStyle.mediumBold
                .copyWith(fontSize: 20.sp, color: AppColors.black),
          ),
          const SizedBox(height: 20.0),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: AppColors.lightBlueColor,
            ),
            padding: const EdgeInsets.all(10.0),
            child: Image.memory(
              base64Decode(widget.groundBookingResponce!.data!.qrCode!),
              width: 150.0,
              height: 150.0,
            ),
          ),
          addVerticalSpacing(0.02),
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "Close",
                style: AppStyle.normalText.copyWith(
                  fontSize: 18.sp,
                  color: AppColors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: AppColors.white,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context,
                CupertinoPageRoute(builder: (context) => const AppBottomBar()));
          },
          child: const Icon(
            Icons.arrow_back,
            color: AppColors.white,
          ),
        ),
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Slot Purchased",
          style: AppStyle.mediumText.copyWith(
              fontSize: 20.sp, color: AppColors.white, letterSpacing: 0.8),
        ),
        elevation: 0,
      ),
      body: Container(
        // decoration: const BoxDecoration(
        //   gradient: LinearGradient(
        //     colors: [AppColors.primaryColor, AppColors.primaryColor],
        //     begin: Alignment.topCenter,
        //     end: Alignment.bottomCenter,
        //   ),
        // ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              15.height,
              SizedBox(
                height: 0.25.sh,
                child: Image.asset(
                  'assets/images/calender.png',
                ),
              ),
              // Container(
              //   padding: const EdgeInsets.all(10.0),
              //   child: Image.memory(
              //     base64Decode(widget.groundBookingResponce!.data!.qrCode!),
              //     width: 150.0,
              //     height: 150.0,
              //   ),
              // ),
              25.height,
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    width: 1,
                    color: AppColors.lightBlueColor,
                  ),
                  // boxShadow: const [
                  //   BoxShadow(
                  //     color: Colors.black12,
                  //     blurRadius: 8.0,
                  //     offset: Offset(0, 2),
                  //   ),
                  // ],
                  // gradient: const LinearGradient(
                  //   colors: [Colors.white, AppColors.lightBlueColor],
                  //   begin: Alignment.topLeft,
                  //   end: Alignment.bottomRight,
                  // ),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 0.02.sw, vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "TXN ID",
                                style: AppStyle.mediumBold.copyWith(
                                  color: AppColors.black.withOpacity(0.7),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                ),
                              ),
                              addVerticalSpacing(0.02),
                              Text(
                                "Amount",
                                style: AppStyle.mediumBold.copyWith(
                                  color: AppColors.black.withOpacity(0.7),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                ),
                              ),
                              addVerticalSpacing(0.02),
                              Text(
                                "Date",
                                style: AppStyle.mediumBold.copyWith(
                                  color: AppColors.black.withOpacity(0.7),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                ),
                              ),
                              addVerticalSpacing(0.02),
                              Text(
                                "Slot Time",
                                style: AppStyle.mediumBold.copyWith(
                                  color: AppColors.black.withOpacity(0.7),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                ),
                              ),
                              addVerticalSpacing(0.02),
                              Text(
                                "Total Slots",
                                style: AppStyle.mediumBold.copyWith(
                                  color: AppColors.black.withOpacity(0.7),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ],
                          ),
                          addHorizontalSpacing(0.015),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.groundBookingResponce!.data!
                                        .transactionId ??
                                    "TN12345689",
                                style: AppStyle.mediumBold.copyWith(
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.sp,
                                ),
                              ),
                              addVerticalSpacing(0.02),
                              Text(
                                widget.groundBookingResponce!.data!.totalPrice
                                    .toString(),
                                style: AppStyle.mediumBold.copyWith(
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.sp,
                                ),
                              ),
                              addVerticalSpacing(0.02),
                              Text(
                                formatDateTime(DateTime.now()),
                                style: AppStyle.mediumBold.copyWith(
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.sp,
                                ),
                              ),
                              addVerticalSpacing(0.02),
                              Text(
                                "${widget.groundBookingResponce!.data!.date} ${widget.groundBookingResponce!.data!.startTime} to ${widget.groundBookingResponce!.data!.endTime}",
                                style: AppStyle.mediumBold.copyWith(
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.sp,
                                ),
                              ),
                              addVerticalSpacing(0.02),
                              Text(
                                "${widget.groundBookingResponce!.data!.users!.length}",
                                style: AppStyle.mediumBold.copyWith(
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              30.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppButton(
                    shapeBorder: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    text: "Download Invoice",
                    color: AppColors.primaryColor,
                    textColor: AppColors.white,
                    onTap: () async {
                      print(widget.groundBookingResponce!.data!.invoiceUrl);
                      await downloadInvoice(
                          context,
                          widget.groundBookingResponce!.data!.invoiceUrl!,
                          widget.groundBookingResponce!.data!.id!);
                    },
                  ),
                  addHorizontalSpacing(0.01),
                  AppButton(
                    shapeBorder: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    text: "QR Code",
                    color: AppColors.primaryColor,
                    textColor: AppColors.white,
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => Dialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 0.0,
                          backgroundColor: Colors.transparent,
                          child: contentBox(context),
                        ),
                      );
                    },
                  ),
                ],
              ),
              16.height,
            ],
          ).paddingAll(16),
        ),
      ),
    );
  }
}
