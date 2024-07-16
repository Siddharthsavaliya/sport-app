import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/utils/helper.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key,
      required this.text,
      this.isBorder = false,
      required this.onTap,
      this.removeOpacity = false,
      this.radius,
      this.color,
      this.textColor,
      this.textSize});
  final bool removeOpacity;
  final bool isBorder;
  final String text;
  final Color? color;
  final Color? textColor;
  final double? radius;
  final double? textSize;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        closeKeyboard(context);
        onTap();
      },
      child: Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius ?? 68),
            border: isBorder ? Border.all(color: AppColors.red) : null,
            color: isBorder
                ? Colors.transparent
                : color ??
                    AppColors.buttonColor.withOpacity(removeOpacity ? 1 : 0.6)),
        child: Center(
          child: Text(
            text,
            style: AppStyle.mediumBold.copyWith(
              color: textColor ?? (isBorder ? AppColors.red : AppColors.white),
              fontSize: textSize ?? 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
