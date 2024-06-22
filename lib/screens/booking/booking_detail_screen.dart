import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/screens/booking/model/coach_list_model.dart';
import 'package:sport_app/screens/booking/model/ground_slot_model.dart';
import 'package:sport_app/utils/helper.dart';

class BookingDetailScreen extends StatefulWidget {
  final DateTime? selectedHorizontalDate;
  final String? selectedSlot;
  final bool is24HourFormat;
  final GroundSlotData? groundSlotData;

  final List<CoachListData>? coaches;

  const BookingDetailScreen(
      {super.key,
      this.selectedHorizontalDate,
      this.groundSlotData,
      this.is24HourFormat = false,
      this.coaches,
      this.selectedSlot});

  @override
  State<BookingDetailScreen> createState() => _BookingDetailScreenState();
}

class _BookingDetailScreenState extends State<BookingDetailScreen> {
  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
          title: Offstage(),
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
    return Scaffold(
      appBar: AppBar(
        foregroundColor: AppColors.black,
        backgroundColor: Colors.grey.shade300,
        title: Text(
          "Booking Status",
          style: AppStyle.mediumText.copyWith(
              fontSize: 20.sp, color: AppColors.black, letterSpacing: 0.8),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              AppAssets.paymentSuccess,
            ).paddingAll(16),
            Text("Payment Successful",
                style: secondaryTextStyle(size: 26, color: AppColors.black)),
            30.height,
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
                          Text("TXN ID: ", style: secondaryTextStyle()),
                          if (widget.selectedHorizontalDate != null)
                            Text('662aa93f184036c66129066b',
                                style: boldTextStyle(size: 14)),
                        ],
                      ),
                      8.height,
                      Row(
                        children: [
                          Text("Amount: ", style: secondaryTextStyle()),
                          if (widget.selectedHorizontalDate != null)
                            Text('\$300', style: boldTextStyle(size: 14)),
                        ],
                      ),
                      8.height,
                      Row(
                        children: [
                          Text("Date: ", style: secondaryTextStyle()),
                          if (widget.selectedHorizontalDate != null)
                            Text(
                                DateFormat('dd MMM, yyyy')
                                    .format(widget.selectedHorizontalDate!),
                                style: boldTextStyle(size: 14)),
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
                              style: boldTextStyle(size: 14)),
                        ],
                      ),
                      8.height,
                      Row(
                        children: [
                          Text("Quantity: ", style: secondaryTextStyle()),
                          if (widget.selectedHorizontalDate != null)
                            Text('3', style: boldTextStyle(size: 14)),
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
            30.height,
            AppButton(
              shapeBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              text: "Show QR Code",
              color: AppColors.black,
              textColor: AppColors.white,
              onTap: () {
                _showMyDialog();

                // Navigator.push(
                //     context,
                //     CupertinoPageRoute(
                //         builder: (context) => const BookingGroundDetailScreen()));
              },
            ),
            16.height,
            if (widget.coaches!.isNotEmpty)
              Text(
                "All coach detail",
                style: AppStyle.mediumText.copyWith(
                    fontSize: 20.sp,
                    color: AppColors.black,
                    letterSpacing: 0.8),
              ),
            if (widget.coaches!.isNotEmpty)
              Column(
                children: List.generate(widget.coaches!.length, (index) {
                  return Card(
                    color: const Color.fromARGB(255, 226, 225, 225),
                    child: ListTile(
                      leading: Icon(Icons.person).paddingAll(8),
                      title: Text(
                          "${widget.coaches?[index].firstName} ${widget.coaches?[index].lastName}"),
                      subtitle: Text(widget.coaches![index].contact),
                    ),
                  );
                }),
              )
          ],
        ).paddingAll(16),
      ),
    );
  }
}
