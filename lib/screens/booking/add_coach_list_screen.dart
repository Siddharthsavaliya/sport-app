import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sport_app/model/ground_model/ground_model.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/screens/booking/book_ground_screen.dart';
import 'package:sport_app/screens/booking/model/coach_list_model.dart';
import 'package:sport_app/screens/booking/model/ground_slot_model.dart';

class AddCoachListScreen extends StatefulWidget {
  final int quantity;
  final DateTime? selectedHorizontalDate;
  final String? selectedSlot;
  final bool is24HourFormat;
  final GroundModel? groundData;

  final GroundSlotData? groundSlotData;

  const AddCoachListScreen(
      {super.key,
      required this.quantity,
      this.selectedHorizontalDate,
      this.groundData,
      this.groundSlotData,
      this.is24HourFormat = false,
      this.selectedSlot});

  @override
  State<AddCoachListScreen> createState() => _AddCoachListScreenState();
}

class _AddCoachListScreenState extends State<AddCoachListScreen> {
  final _formKey = GlobalKey<FormState>();
  List<TextEditingController> firstNameControllers = [];
  List<TextEditingController> lastNameControllers = [];
  List<TextEditingController> numberControllers = [];

  @override
  void initState() {
    super.initState();
    // Initialize the controllers based on the quantity
    for (int i = 0; i < widget.quantity; i++) {
      firstNameControllers.add(TextEditingController());
      lastNameControllers.add(TextEditingController());
      numberControllers.add(TextEditingController());
    }
  }

  void submit() {
    if (_formKey.currentState!.validate()) {
      List<CoachListData> coaches = [];
      for (int i = 0; i < widget.quantity; i++) {
        coaches.add(CoachListData(
            firstName: firstNameControllers[i].text,
            lastName: lastNameControllers[i].text,
            contact: numberControllers[i].text));
      }

      Navigator.pushReplacement(
        context,
        CupertinoPageRoute(
          builder: (context) => BookGroundScreen(
            selectedSlot: widget.selectedSlot.validate(),
            is24HourFormat: widget.is24HourFormat,
            groundData: widget.groundData,
            groundSlotData: widget.groundSlotData,
            selectedHorizontalDate: widget.selectedHorizontalDate,
            coaches: coaches,
          ),
        ),
      );
    }
  }

  @override
  void dispose() {
    // Dispose of the controllers when the screen is disposed
    for (var controller in firstNameControllers) {
      controller.dispose();
    }
    for (var controller in lastNameControllers) {
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
      labelText: labelText,
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
        borderSide: const BorderSide(color: black, width: 0.0),
      ),
      filled: true,
      fillColor: context.cardColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: AppColors.black,
        backgroundColor: Colors.grey.shade300,
        title: Text(
          "Add personal detail",
          style: AppStyle.mediumText.copyWith(
              fontSize: 20.sp, color: AppColors.black, letterSpacing: 0.8),
        ),
        elevation: 0,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            16.height,
            Text(
              'Total slot : ${widget.quantity}',
              style: boldTextStyle(),
            ),
            16.height,
            Expanded(
              child: ListView.builder(
                itemCount: widget.quantity,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Slot ${index + 1} :',
                        style: secondaryTextStyle(size: 16),
                      ),
                      16.height,
                      AppTextField(
                        textFieldType: TextFieldType.NAME,
                        controller: firstNameControllers[index],
                        errorThisFieldRequired: 'This field is required!',
                        decoration: inputDecoration(
                          context,
                        ).copyWith(
                          hintText: 'Enter first name',
                          fillColor: Colors.grey.shade300,
                        ),
                        suffix: const Icon(Icons.person_outline),
                      ),
                      16.height,
                      AppTextField(
                        textFieldType: TextFieldType.NAME,
                        controller: lastNameControllers[index],
                        errorThisFieldRequired: 'This field is required!',
                        decoration: inputDecoration(
                          context,
                        ).copyWith(
                          hintText: 'Enter last name',
                          fillColor: Colors.grey.shade300,
                        ),
                        suffix: const Icon(Icons.person_outline),
                      ),
                      16.height,
                      AppTextField(
                        textFieldType: TextFieldType.PHONE,
                        controller: numberControllers[index],
                        errorThisFieldRequired: 'This field is required!',
                        decoration: inputDecoration(
                          context,
                        ).copyWith(
                          fillColor: Colors.grey.shade300,
                          hintText: 'ex: 9192019192',
                        ),
                        maxLength: 10,
                        suffix: const Icon(Icons.call_outlined),
                      ),
                      8.height,
                    ],
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppButton(
                  shapeBorder: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  text: "Next",
                  color: black,
                  textColor: AppColors.white,
                  onTap: submit,
                ).expand(),
              ],
            ).paddingSymmetric(vertical: 16),
          ],
        ).paddingSymmetric(horizontal: 16),
      ),
    );
  }
}
