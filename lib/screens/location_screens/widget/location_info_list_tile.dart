import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/utils/helper.dart';

class LocationInfoListTile extends StatelessWidget {
  const LocationInfoListTile(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.onTap});
  final String title;
  final String subTitle;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: 0.05.sw, right: 0.05.sw, bottom: 0.045.sh),
            child: SvgPicture.asset(AppAssets.location),
          ),
          Container(
            width: 0.8.sw,
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppStyle.mediumBold.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
                Text(
                  subTitle,
                  style: AppStyle.normalText
                      .copyWith(color: AppColors.lightTextColor),
                ),
                addVerticalSpacing(0.025),
                customDivider()
              ],
            ),
          )
        ],
      ),
    );
  }
}
