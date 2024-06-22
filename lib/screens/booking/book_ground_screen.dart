import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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

class BookGroundScreen extends StatefulWidget {
  final DateTime? selectedHorizontalDate;
  final String? selectedSlot;
  final bool is24HourFormat;
  final GroundSlotData? groundSlotData;
  final GroundModel? groundData;
  final List<CoachListData>? coaches;

  const BookGroundScreen(
      {super.key,
      this.selectedHorizontalDate,
      this.groundSlotData,
      this.groundData,
      this.is24HourFormat = false,
      this.coaches,
      this.selectedSlot});

  @override
  State<BookGroundScreen> createState() => _BookingDetailScreenState();
}

class _BookingDetailScreenState extends State<BookGroundScreen> {
  Future<void> getGroundSlot() async {
    final token = await getKeyValue(key: "token");
    var headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token'
    };
    var data = {
      "groundId": "${widget.groundData?.id}",
      "slotId": "${widget.groundSlotData?.id}",
      "date": formatDate(widget.selectedHorizontalDate!),
      "totalCount": "${widget.coaches?.length}",
      "users": widget.coaches?.map((user) => user.toJson()).toList()
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
        print(json.encode(response.data));
        GroundBookingResponce groundBookingResponce =
            GroundBookingResponce.fromJson(response.data);
        Navigator.pushReplacement(
            context,
            CupertinoPageRoute(
                builder: (context) => BookingSuccessScreen(
                      groundBookingResponce: groundBookingResponce,
                    )));
      } else {
        print(
            'Request failed with status: ${response.statusCode}, ${response.statusMessage}');
      }
    } on DioException catch (e) {
      if (e.response != null) {
        toast(e.response?.data['message']);
        print('Dio error! Response data: ${e.response?.data}');
      } else {
        print('Error sending request!');
        print(e.message);
      }
    } catch (e) {
      print('Unexpected error: $e');
    }
  }

  // Future<void> getGroundSlot() async {
  //   final token = await getKeyValue(key: "token");
  //   var headers = {
  //     'Content-Type': 'application/json',
  //     'Authorization': 'Bearer $token'
  //   };
  //   var data =
  //       '''{\n    "groundId": "665da72c791fe532e7fec8c4",\n    "slotId": "665dfd71a6af84040c4ae0e1",\n    "totalCount": "1",\n    "users": [\n    {\n      "firstName": "Siddharth",\n      "lastName": "Savaliya",\n      "phoneNumber": "9714696101"\n    }\n  ]\n}''';
  //   var dio = Dio();
  //   var response = await dio.request(
  //     'https://cg8gkks.srv-01.purezzatechnologies.com/api/booking/book-slot',
  //     options: Options(
  //       method: 'POST',
  //       headers: headers,
  //     ),
  //     data: data,
  //   );

  //   if (response.statusCode == 200) {
  //     print(json.encode(response.data));
  //   } else {
  //     print(response.statusMessage);
  //   }
  // }

  Future<void> _showMyDialog() async {
    print("${widget.groundData?.id} : ${widget.groundSlotData?.id}");
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
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
                if (widget.groundData != null) ...{
                  GroundListComponent(
                      groundData: widget.groundData!,
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
                },
                16.height,
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: boxDecorationDefault(
                      border: Border.all(
                          color: const Color.fromARGB(255, 147, 146, 146)),
                      color: Colors.white),
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
                                Text('${widget.coaches?.length}',
                                    style: boldTextStyle(size: 14)),
                            ],
                          ),
                          8.height,
                          Row(
                            children: [
                              Text("Total Price: ",
                                  style: secondaryTextStyle()),
                              if (widget.selectedHorizontalDate != null)
                                Text('$price', style: boldTextStyle(size: 14)),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.asset(
                          AppAssets.qrCode,
                        ),
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
                16.height,
                if (widget.coaches!.isNotEmpty)
                  Text(
                    "Players Information",
                    style: AppStyle.mediumText.copyWith(
                        fontSize: 14.sp,
                        color: AppColors.black,
                        letterSpacing: 0.8),
                  ),
                if (widget.coaches!.isNotEmpty)
                  Column(
                    children: List.generate(
                      widget.coaches!.length,
                      (index) {
                        return Card(
                          color: AppColors.white,
                          child: ListTile(
                            leading: const Icon(Icons.person).paddingAll(4),
                            title: Text(
                                "${widget.coaches?[index].firstName} ${widget.coaches?[index].lastName}"),
                            subtitle: Text(widget.coaches![index].contact),
                          ),
                        );
                      },
                    ),
                  ),
                50.height,
              ],
            ).paddingAll(16),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                AppButton(
                  shapeBorder: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  text: "Check out",
                  color: AppColors.black,
                  textColor: AppColors.white,
                  onTap: () {
                    getGroundSlot();
                  },
                ).expand(),
              ],
            ).paddingAll(16),
          ),
        ],
      ),
    );
  }
}
