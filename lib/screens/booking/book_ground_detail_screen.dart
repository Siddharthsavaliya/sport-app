import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/utils/helper.dart';

class BookingGroundDetailScreen extends StatefulWidget {
  final DateTime? selectedHorizontalDate;
  final String? selectedSlot;
  final bool is24HourFormat;

  const BookingGroundDetailScreen(
      {super.key,
      this.selectedHorizontalDate,
      this.is24HourFormat = false,
      this.selectedSlot});

  @override
  State<BookingGroundDetailScreen> createState() =>
      _BookingGroundDetailScreenState();
}

class _BookingGroundDetailScreenState extends State<BookingGroundDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: AppColors.black,
        backgroundColor: Colors.grey.shade300,
        title: Text(
          "Bookings",
          style: AppStyle.mediumText.copyWith(
              fontSize: 20.sp, color: AppColors.black, letterSpacing: 0.8),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            decoration: boxDecorationDefault(
                border: Border.all(), color: Colors.grey.withOpacity(0.01)),
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
                        if (widget.selectedHorizontalDate != null)
                          Text(
                              DateFormat('dd MMM, yyyy')
                                  .format(widget.selectedHorizontalDate!),
                              style: boldTextStyle(size: 12)),
                      ],
                    ),
                    8.height,
                    Row(
                      children: [
                        Text("Time: ", style: secondaryTextStyle()),
                        Text(
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
                                    .format(context),
                            style: boldTextStyle(size: 12)),
                      ],
                    ),
                  ],
                ),
                // IconButton(
                //   icon: ic_edit_square.iconImage(size: 18),
                //   visualDensity: VisualDensity.compact,
                //   onPressed: () async {
                //     handleDateTimePick();
                //   },
                // ),
              ],
            ),
          ),
          20.height,
          Image.asset(
            AppAssets.qrCode,
          ).paddingAll(16),
          30.height,
          AppButton(
            shapeBorder:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            text: "Pay Now",
            color: Color.fromARGB(255, 97, 206, 106),
            textColor: AppColors.black,
            onTap: () {
              // Navigator.push(
              //     context,
              //     CupertinoPageRoute(
              //         builder: (context) => const BookingGroundDetailScreen()));
            },
          ),
        ],
      ).paddingAll(16),
    );
  }
}
