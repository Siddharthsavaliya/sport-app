import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sport_app/model/booking_history_model/booking_history_model.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
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
      appBar: AppBar(
        foregroundColor: AppColors.black,
        backgroundColor: Colors.grey.shade300,
        title: Text(
          "Booking summery",
          style: AppStyle.mediumText.copyWith(
              fontSize: 20.sp, color: AppColors.black, letterSpacing: 0.8),
        ),
        elevation: 0,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GroundListComponent(
                    groundData: widget.bookingHistory.ground,
                    isFromBookingSummery: true),
                Container(
                  width: double.infinity,
                  color: AppColors.white,
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
                        // "Toll Free : ${widget.groundModel.number}",
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
                16.height,
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: boxDecorationDefault(
                      border: Border.all(
                          color: const Color.fromARGB(255, 147, 146, 146)),
                      color: Colors.grey.withOpacity(0.01)),
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
                              Text("Total Price: ",
                                  style: secondaryTextStyle()),
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
                if (widget.bookingHistory.users.isNotEmpty)
                  Column(
                    children: List.generate(
                      widget.bookingHistory.users.length,
                      (index) {
                        return Card(
                          color: const Color.fromARGB(255, 234, 233, 233),
                          child: ListTile(
                            leading: const Icon(Icons.person).paddingAll(4),
                            title: Text(
                                "${widget.bookingHistory.users[index].firstName} ${widget.bookingHistory.users[index].lastName}"),
                            subtitle: Text(
                                widget.bookingHistory.users[index].phoneNumber),
                          ),
                        );
                      },
                    ),
                  ),
                50.height,
              ],
            ).paddingAll(16),
          ),
        ],
      ),
    );
  }
}
