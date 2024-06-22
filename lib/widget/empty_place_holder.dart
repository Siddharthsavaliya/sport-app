import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/utils/helper.dart';
import 'package:sport_app/widget/app_button.dart';

class EmptyPlaceHolder extends StatelessWidget {
  const EmptyPlaceHolder(
      {super.key,
      required this.title,
      required this.subTitle,
      this.onTap,
      this.pending,
      this.buttonText,
      required this.imagePath});
  final String title;
  final String subTitle;
  final String imagePath;
  final String? buttonText;
  final double? pending;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment:
          pending != null ? MainAxisAlignment.start : MainAxisAlignment.center,
      children: [
        if (pending != null) ...[addVerticalSpacing(pending!)],
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.06.sw),
            child: Container(
              clipBehavior: Clip.hardEdge,
              width: double.infinity,
              // height: 0.1.sh,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Lottie.asset(imagePath),
                ),
              ),
            ),
          ),
        ),
        addVerticalSpacing(0.05),
        Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: AppStyle.normalText.copyWith(
                color: AppColors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600),
          ),
        ),
        addVerticalSpacing(0.01),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.04.sw),
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
            style: AppStyle.mediumBold.copyWith(
                color: AppColors.fetchingLocationColor,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
        ),
        if (buttonText != null) ...[
          addVerticalSpacing(0.08),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.13.sw),
            child: AppButton(
              removeOpacity: true,
              color: Colors.grey,
              text: buttonText!,
              onTap: onTap!,
            ),
          ),
          addVerticalSpacing(0.1),
        ]
      ],
    );
  }
}
