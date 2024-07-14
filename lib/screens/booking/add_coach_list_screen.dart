// ignore_for_file: use_build_context_synchronously

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sport_app/bloc/booking_history_bloc/booking_history_bloc.dart';
import 'package:sport_app/model/ground_model/ground_model.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/screens/booking/book_ground_screen.dart';
import 'package:sport_app/screens/booking/model/coach_list_model.dart';
import 'package:sport_app/screens/booking/model/ground_slot_model.dart';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:sport_app/model/booking/ground_booking_response.dart';
import 'package:sport_app/res/api_constants.dart';
import 'package:sport_app/screens/booking/sloat_selection_screen.dart';
import 'package:sport_app/utils/helper.dart';
import 'package:sport_app/utils/status_dialog.dart';

class AddCoachListScreen extends StatefulWidget {
  final int quantity;
  final DateTime? selectedHorizontalDate;
  final String? selectedSlot;
  final bool is24HourFormat;
  final GroundModel? groundData;
  final GroundSlotData? groundSlotData;

  const AddCoachListScreen({
    super.key,
    required this.quantity,
    this.selectedHorizontalDate,
    this.groundData,
    this.groundSlotData,
    this.is24HourFormat = false,
    this.selectedSlot,
  });

  @override
  State<AddCoachListScreen> createState() => _AddCoachListScreenState();
}

class _AddCoachListScreenState extends State<AddCoachListScreen> {
  final _formKey = GlobalKey<FormState>();
  List<TextEditingController> firstNameControllers = [];
  List<TextEditingController> numberControllers = [];

  @override
  void initState() {
    super.initState();
    // Initialize the controllers based on the quantity
    for (int i = 0; i < widget.quantity; i++) {
      firstNameControllers.add(TextEditingController());
      numberControllers.add(TextEditingController());
    }
  }

  void submit() async {
    if (_formKey.currentState!.validate()) {
      showYesNoDialogue(
        context,
        onTap: () async {
          List<CoachListData> coaches = [];
          for (int i = 0; i < widget.quantity; i++) {
            coaches.add(CoachListData(
                firstName: firstNameControllers[i].text,
                contact: "91${numberControllers[i].text}"));
          }
          BlocProvider.of<BookingHistoryBloc>(context).add(SetBookingDataEvent(
              users: coaches, groundSlotData: widget.groundSlotData));
          Navigator.pop(context);
          Navigator.push(
              context,
              CupertinoPageRoute(
                  builder: (context) => SlotSelectionScreen(
                        groundData: widget.groundData,
                        count: widget.quantity,
                        groundSlotData: widget.groundSlotData,
                        selectedHorizontalDate: widget.selectedHorizontalDate,
                        selectedSlot: widget.selectedSlot,
                        isSecond: true,
                      )));
        },
        onTapNO: () async {
          List<CoachListData> coaches = [];
          for (int i = 0; i < widget.quantity; i++) {
            coaches.add(CoachListData(
                firstName: firstNameControllers[i].text,
                contact: "91${numberControllers[i].text}"));
          }

          final token = await getKeyValue(key: "token");
          var headers = {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $token',
          };
          var data = {
            "groundId": "${widget.groundData?.id}",
            "slotIds": [widget.groundSlotData?.id],
            "date": formatDate(widget.selectedHorizontalDate!),
            "totalCount": "${coaches.length}",
            "users": coaches.map((user) => user.toJson()).toList(),
          };
          var dio = Dio();
          try {
            showProgressDialogue(context);
            var response = await dio.request(
              '${ApiConstants.baseUrl}${ApiConstants.getSummary}',
              options: Options(
                method: 'POST',
                headers: headers,
              ),
              data: jsonEncode(data),
            );
            log(response.data.toString());
            if (response.statusCode == 200) {
              Navigator.pop(context);
              GroundBookingResponce groundBookingResponce =
                  GroundBookingResponce.fromJson(response.data);
              Navigator.pushReplacement(
                context,
                CupertinoPageRoute(
                  builder: (context) => BookGroundScreen(
                    groundBookingSummary: groundBookingResponce,
                    selectedSlot: widget.selectedSlot.validate(),
                    is24HourFormat: widget.is24HourFormat,
                    groundData: widget.groundData,
                    groundSlotData: [widget.groundSlotData!],
                    selectedHorizontalDate: widget.selectedHorizontalDate,
                    coaches: coaches,
                  ),
                ),
              );
            } else {
              Navigator.pop(context);
              showErrorDialogue(context, "Something went wrong");
            }
          } on DioException catch (e) {
            print(e);
            Navigator.pop(context);
            if (e.response != null) {
              showErrorDialogue(context, "Something went wrong");
            } else {
              showErrorDialogue(context, "Something went wrong");
            }
          } catch (e) {
            print(e);
            Navigator.pop(context);
            showErrorDialogue(context, e.toString());
          }
        },
        title: "Do want add one more hour ?",
      );
    }
  }

  @override
  void dispose() {
    // Dispose of the controllers when the screen is disposed
    for (var controller in firstNameControllers) {
      controller.dispose();
    }
    for (var controller in numberControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  InputDecoration inputDecoration(BuildContext context,
      {Widget? prefixIcon, String? labelText, double? borderRadius}) {
    return InputDecoration(
      contentPadding:
          const EdgeInsets.only(left: 12, bottom: 10, top: 10, right: 10),
      labelStyle: secondaryTextStyle(),
      alignLabelWithHint: true,
      prefixIcon: prefixIcon,
      enabledBorder: OutlineInputBorder(
        borderRadius: radius(borderRadius ?? defaultRadius),
        borderSide: const BorderSide(color: Colors.transparent, width: 0.0),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: radius(borderRadius ?? defaultRadius),
        borderSide: const BorderSide(color: Colors.red, width: 0.0),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: radius(borderRadius ?? defaultRadius),
        borderSide: const BorderSide(color: Colors.red, width: 1.0),
      ),
      errorMaxLines: 2,
      border: OutlineInputBorder(
        borderRadius: radius(borderRadius ?? defaultRadius),
        borderSide: const BorderSide(color: Colors.transparent, width: 0.0),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: radius(borderRadius ?? defaultRadius),
        borderSide: const BorderSide(color: Colors.transparent, width: 0.0),
      ),
      errorStyle: primaryTextStyle(color: Colors.red, size: 12),
      focusedBorder: OutlineInputBorder(
        borderRadius: radius(borderRadius ?? defaultRadius),
        borderSide: const BorderSide(color: AppColors.primaryColor, width: 0.0),
      ),
      filled: true,
      fillColor: context.cardColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Add Players Details",
          style: AppStyle.mediumText.copyWith(
              fontSize: 20.sp, color: AppColors.white, letterSpacing: 0.8),
        ),
        elevation: 0,
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Total slots: ${widget.quantity}',
                style: boldTextStyle(size: 16, color: AppColors.primaryColor),
              ),
              16.height,
              Expanded(
                child: ListView.builder(
                  itemCount: widget.quantity,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Player ${index + 1}:',
                              style: secondaryTextStyle(size: 16),
                            ),
                            16.height,
                            AppTextField(
                              textFieldType: TextFieldType.NAME,
                              controller: firstNameControllers[index],
                              errorThisFieldRequired: 'This field is required!',
                              decoration: inputDecoration(
                                context,
                                labelText: 'Username',
                              ).copyWith(
                                fillColor: Colors.grey.shade200,
                                hintText: 'Username',
                              ),
                              suffix: const Icon(Icons.person_outline,
                                  color: AppColors.primaryColor),
                            ),
                            // 16.height,
                            // AppTextField(
                            //   textFieldType: TextFieldType.NAME,
                            //   controller: lastNameControllers[index],
                            //   errorThisFieldRequired: 'This field is required!',
                            //   decoration: inputDecoration(
                            //     context,
                            //     labelText: 'Last Name',
                            //   ).copyWith(
                            //     fillColor: Colors.grey.shade200,
                            //     hintText: 'Last Name',
                            //   ),
                            //   suffix: const Icon(Icons.person_outline,
                            //       color: AppColors.primaryColor),
                            // ),
                            16.height,
                            AppTextField(
                              textFieldType: TextFieldType.PHONE,
                              controller: numberControllers[index],
                              errorThisFieldRequired: 'This field is required!',
                              decoration: inputDecoration(
                                context,
                                labelText: 'Contact Number',
                              ).copyWith(
                                fillColor: Colors.grey.shade200,
                                hintText: 'ex: 9192019192',
                              ),
                              maxLength: 10,
                              suffix: const Icon(Icons.call_outlined,
                                  color: AppColors.primaryColor),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: AppButton(
                      shapeBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      text: "Next",
                      color: AppColors.primaryColor,
                      textColor: AppColors.white,
                      onTap: submit,
                    ),
                  ),
                ],
              ).paddingSymmetric(vertical: 16),
            ],
          ),
        ),
      ),
    );
  }
}
