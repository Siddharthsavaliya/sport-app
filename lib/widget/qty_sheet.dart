import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/model/ground_model/ground_model.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/screens/booking/add_coach_list_screen.dart';
import 'package:sport_app/screens/booking/model/ground_slot_model.dart';
import 'package:sport_app/utils/helper.dart';
import 'package:sport_app/widget/app_button.dart';

import '../res/app_text_style.dart';

class SizeSelectionBottomSheet extends StatefulWidget {
  const SizeSelectionBottomSheet({
    super.key,
    required this.maxQty,
    required this.selectedHorizontalDate,
    this.selectedSlot,
    this.groundData,
    required this.is24HourFormat,
  });
  final int maxQty;
  final GroundSlotData? selectedSlot;
  final GroundModel? groundData;
  final DateTime selectedHorizontalDate;
  final bool is24HourFormat;
  @override
  State<SizeSelectionBottomSheet> createState() =>
      _SizeSelectionBottomSheetState();
}

class _SizeSelectionBottomSheetState extends State<SizeSelectionBottomSheet> {
  int selectedQty = 1;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 0.04.sw, right: 0.015.sw),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Select Quantity',
                        style: AppStyle.mediumBold.copyWith(
                            fontSize: 15.sp, fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.close,
                          )),
                    ],
                  ),
                  addVerticalSpacing(0.02),

                  SizedBox(
                    height: 25,
                    child: ListView(
                        shrinkWrap: true,
                        padding: const EdgeInsets.all(0),
                        scrollDirection: Axis.horizontal,
                        children: List.generate(
                                widget.maxQty, (index) => index + 1)
                            .map(
                              (e) => Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedQty = e;
                                    });
                                  },
                                  child: Container(
                                    height: 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: AppColors.lightColor,
                                      border: selectedQty == e
                                          ? Border.all(
                                              color: AppColors.primaryColor)
                                          : null,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Center(
                                        child: Text(
                                          e.toString(),
                                          style: AppStyle.mediumBold
                                              .copyWith(color: AppColors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                            .toList()),
                  ),
                  addVerticalSpacing(0.025)
                  // ],
                ],
              ),
            ),
            SizedBox(
              child: AppButton(
                radius: 0,
                removeOpacity: true,
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => AddCoachListScreen(
                        quantity: selectedQty,
                        groundSlotData: widget.selectedSlot,
                        groundData: widget.groundData,
                        selectedSlot: widget.selectedSlot?.startTime.toString(),
                        selectedHorizontalDate: widget.selectedHorizontalDate,
                        is24HourFormat: widget.is24HourFormat,
                      ),
                    ),
                  );
                },
                text: "Select",
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
          ],
        ),
      ),
    );
  }
}

class SizeContainer extends StatelessWidget {
  final String size;

  const SizeContainer(this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        border: Border.all(color: Colors.transparent, width: 2),
      ),
      alignment: Alignment.center,
      child: Text(
        size,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}
