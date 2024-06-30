import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sport_app/model/booking_history_model/booking_history_model.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/screens/booking/my_bookings_screen.dart';
import 'package:sport_app/screens/grounds_screen/ground_list_component.dart';
import 'package:sport_app/utils/helper.dart';

class BookingHistoryDetailScreen extends StatefulWidget {
  const BookingHistoryDetailScreen({super.key, required this.bookingHistory});
  final BookingHistory bookingHistory;

  @override
  State<BookingHistoryDetailScreen> createState() =>
      _BookingHistoryDetailScreenState();
}

class _BookingHistoryDetailScreenState
    extends State<BookingHistoryDetailScreen> {
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
              GroundListComponent(
                groundData: widget.bookingHistory.ground,
                isFromBookingSummery: true,
              ),
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
                      "${widget.bookingHistory.ground.institutionName}",
                      style: AppStyle.mediumText.copyWith(
                          fontSize: 15.sp,
                          color: AppColors.black,
                          letterSpacing: 0.8),
                    ),
                    addVerticalSpacing(0.006),
                    Text(
                      "${widget.bookingHistory.ground.school!.address1!} ${widget.bookingHistory.ground.school!.address2!}",
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
                            Text("${widget.bookingHistory.date}",
                                style: boldTextStyle(size: 14)),
                          ],
                        ),
                        8.height,
                        Row(
                          children: [
                            Text("Time: ", style: secondaryTextStyle()),
                            Text(
                                "${widget.bookingHistory.startTime} to ${widget.bookingHistory.endTime}",
                                style: boldTextStyle(size: 14)),
                          ],
                        ),
                        8.height,
                        Row(
                          children: [
                            Text("Quantity: ", style: secondaryTextStyle()),
                            Text('${widget.bookingHistory.users.length}',
                                style: boldTextStyle(size: 14)),
                          ],
                        ),
                        8.height,
                        Row(
                          children: [
                            Text("Total Price: ", style: secondaryTextStyle()),
                            Text('${widget.bookingHistory.totalPrice}',
                                style: boldTextStyle(size: 14)),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.memory(
                        base64Decode(widget.bookingHistory.qrCode),
                      ),
                    ),
                  ],
                ),
              ),
              16.height,
              Text(
                "Players Information",
                style: AppStyle.mediumText.copyWith(
                    fontSize: 14.sp,
                    color: AppColors.black,
                    letterSpacing: 0.8),
              ),
              addVerticalSpacing(0.01),
              if (widget.bookingHistory.users.isNotEmpty)
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(0),
                  // scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: widget.bookingHistory.users.length,
                  itemBuilder: (BuildContext context, int index) {
                    final coach = widget.bookingHistory.users[index];
                    return Container(
                      margin: const EdgeInsets.only(bottom: 8),
                      decoration: boxDecorationDefault(color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 0.02.sw, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      coach.firstName ?? '',
                                      style: AppStyle.mediumText,
                                    ),
                                    addVerticalSpacing(0.001),
                                    Text(
                                      coach.phoneNumber ?? '',
                                      style: AppStyle.normalText.copyWith(
                                        color: Colors
                                            .grey, // Example to distinguish subtitle text
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            if (coach.isFree) ...[
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
                ),
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
                    buildSummaryRow("Subtotal:",
                        widget.bookingHistory.subtotal!.toStringAsFixed(2)),
                    8.height,
                    buildSummaryRow("GST (18%):",
                        widget.bookingHistory.gstAmount!.toStringAsFixed(2)),
                    8.height,
                    buildSummaryRow("Total:",
                        widget.bookingHistory.totalPrice!.toStringAsFixed(2)),
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
                  onTap: () {},
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
