import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sport_app/model/coach_booking_history/coach_booking_history.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/utils/helper.dart';

class CoachHistoryDetailScreen extends StatefulWidget {
  const CoachHistoryDetailScreen(
      {super.key, required this.coachBookingHistory});
  final CoachBookingHistoryModel coachBookingHistory;

  @override
  State<CoachHistoryDetailScreen> createState() =>
      _CoachHistoryDetailScreenState();
}

class _CoachHistoryDetailScreenState extends State<CoachHistoryDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Slot Information",
                style: AppStyle.mediumText.copyWith(
                    fontSize: 14.sp,
                    color: AppColors.black,
                    letterSpacing: 0.8),
              ),
              addVerticalSpacing(0.005),
              // GroundListComponent(
              //   groundData: widget.bookingHistory.ground,
              //   isFromBookingSummery: true,
              // ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.only(top: 5),
                decoration: boxDecorationDefault(),
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
                      "${widget.coachBookingHistory.schoolId.institutionName}",
                      style: AppStyle.mediumText.copyWith(
                          fontSize: 15.sp,
                          color: AppColors.black,
                          letterSpacing: 0.8),
                    ),
                    addVerticalSpacing(0.006),
                    Text(
                      "${widget.coachBookingHistory.schoolId.address1!} ${widget.coachBookingHistory.schoolId.address2!}",
                      style: AppStyle.normalText.copyWith(
                        fontSize: 11.sp,
                        color: AppColors.black,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    addVerticalSpacing(0.002),
                    Text(
                      "Help Desk : 90873480384",
                      style: AppStyle.normalText.copyWith(
                        fontSize: 11.sp,
                        letterSpacing: 1,
                        color: AppColors.black,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    addVerticalSpacing(0.015),
                  ],
                ),
              ),
              10.height,
              Container(
                padding: const EdgeInsets.all(8),
                decoration: boxDecorationDefault(),
                width: context.width(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Date: ", style: secondaryTextStyle()),
                            Text(
                                formatDateTime(DateTime.parse(
                                    widget.coachBookingHistory.createdAt!)),
                                style: boldTextStyle(size: 14)),
                          ],
                        ),
                        8.height,
                        Row(
                          children: [
                            Text("Time: ", style: secondaryTextStyle()),
                            Text(
                                "${widget.coachBookingHistory.startTime} to ${widget.coachBookingHistory.endTime}",
                                style: boldTextStyle(size: 14)),
                          ],
                        ),
                        8.height,
                        Row(
                          children: [
                            Text("Total Price: ", style: secondaryTextStyle()),
                            Text('${widget.coachBookingHistory.totalPrice}',
                                style: boldTextStyle(size: 14)),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.memory(
                        base64Decode(widget.coachBookingHistory.qrCode),
                      ),
                    ),
                  ],
                ),
              ),
              16.height,
              addVerticalSpacing(0.01),
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
                    buildSummaryRow(
                        "Subtotal:",
                        widget.coachBookingHistory.subtotal!
                            .toStringAsFixed(2)),
                    8.height,
                    buildSummaryRow(
                        "GST (18%):",
                        widget.coachBookingHistory.gstAmount!
                            .toStringAsFixed(2)),
                    8.height,
                    buildSummaryRow(
                        "Total:",
                        widget.coachBookingHistory.totalPrice
                            .toStringAsFixed(2)),
                  ],
                ),
              ),
              addVerticalSpacing(0.02),
              SizedBox(
                width: double.infinity,
                child: AppButton(
                  shapeBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  text: "Download Invoice",
                  color: AppColors.primaryColor,
                  textColor: AppColors.white,
                  onTap: () async {
                    await downloadInvoice(
                        context,
                        widget.coachBookingHistory.url,
                        widget.coachBookingHistory.id);
                  },
                ),
              ),
              50.height,
            ],
          ),
        ),
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
