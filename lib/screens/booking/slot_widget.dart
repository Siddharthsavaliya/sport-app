import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';

class SlotWidget extends StatelessWidget {
  final bool isAvailable;
  final bool isNotAvailable;
  final bool isSelected;
  final bool is24HourFormat;
  final String value;
  final String? slotCount;
  final String? totalCount;
  final Color activeColor;
  final Color inActiveColor;
  final Function() onTap;

  const SlotWidget({
    super.key,
    required this.isAvailable,
    this.isNotAvailable = false,
    required this.isSelected,
    this.is24HourFormat = false,
    required this.value,
    this.slotCount,
    this.totalCount,
    this.activeColor = AppColors.primaryColor,
    this.inActiveColor = Colors.grey,
    required this.onTap,
  });

  Color _getBackgroundColor(BuildContext context) {
    if (isAvailable && isSelected) {
      return activeColor;
    } else if (isSelected) {
      return activeColor;
    } else {
      return context.cardColor;
    }
  }

  Color _getTextColor() {
    if (isNotAvailable) {
      return Colors.grey.shade700;
    } else if (isAvailable && isSelected) {
      return Colors.white;
    } else if (isSelected) {
      return Colors.white;
    } else {
      return textPrimaryColorGlobal;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            width: context.width() / 3 - 30,
            decoration: boxDecorationDefault(
              boxShadow: defaultBoxShadow(blurRadius: 0, spreadRadius: 0),
              border: Border.all(
                  color: isNotAvailable ? Colors.grey : AppColors.primaryColor),
              color: isNotAvailable
                  ? Colors.grey.shade300
                  : _getBackgroundColor(context),
            ),
            padding: const EdgeInsets.all(12),
            child: Builder(builder: (context) {
              return Text(
                is24HourFormat
                    ? value.splitBefore(':00')
                    : TimeOfDay(
                            hour: value.split(':').first.toInt(), minute: 00)
                        .format(context),
                style: primaryTextStyle(
                  color: _getTextColor(),
                ),
              ).center();
            }),
          ).paddingOnly(top: 5, right: 5),
          if (!isNotAvailable && slotCount != null)
            Positioned(
              right: 0,
              child: Container(
                height: 20.sp,
                width: 20.sp,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: AppColors.primaryColor),
                child: Text(
                  slotCount.validate(),
                  style: AppStyle.mediumBold
                      .copyWith(color: AppColors.white, fontSize: 9.sp),
                ).center(),
              ),
            ),
        ],
      ),
    );
  }
}
