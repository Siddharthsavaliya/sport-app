import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_strings.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/screens/app_bottom_bar.dart';
import 'package:sport_app/screens/auth/login_screen.dart';
import 'package:sport_app/screens/home/home_screen.dart';
import 'package:sport_app/utils/helper.dart';

class CommonOnBoardingScreen extends StatefulWidget {
  const CommonOnBoardingScreen(
      {super.key,
      required this.onTap,
      required this.title,
      required this.imagePath,
      required this.subTitle,
      required this.index,
      required this.onTapContainer});
  final VoidCallback onTap;
  final VoidCallback onTapContainer;
  final String title;
  final String imagePath;
  final String subTitle;
  final int index;
  @override
  State<CommonOnBoardingScreen> createState() => _CommonOnBoardingScreenState();
}

class _CommonOnBoardingScreenState extends State<CommonOnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          addVerticalSpacing(0.1),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.045.sw),
            child: Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const LoginScreen(),
                      ));
                },
                child: Text(
                  AppStrings.skip,
                  style: AppStyle.mediumBold
                      .copyWith(color: AppColors.orange, fontSize: 18.2.sp),
                ),
              ),
            ),
          ),
          addVerticalSpacing(widget.index == 1 ? 0.07 : 0.07),
          Container(
            height: widget.index == 1 ? 0.47.sh : 0.47.sh,
            width: double.infinity,
            color: AppColors.white,
            child: Padding(
              padding: EdgeInsets.only(right: widget.index == 1 ? 0.012.sw : 0),
              child: Image.asset(
                widget.imagePath,
                fit: widget.index == 1 ? BoxFit.fill : BoxFit.fitWidth,
              ),
            ),
          ),
          addVerticalSpacing(0.07),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.06.sw),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: AppStyle.mediumBold.copyWith(
                      color: AppColors.black,
                      fontSize: 30.sp,
                      fontFamily: "Lobster"),
                ),
                addVerticalSpacing(0.025),
                Text(
                  widget.subTitle,
                  style: AppStyle.normalText.copyWith(
                    color: AppColors.black.withOpacity(0.6),
                    fontSize: 13.sp,
                  ),
                ),
                addVerticalSpacing(0.04),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 4,
                      child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: widget.onTapContainer,
                            child: Container(
                              height: 4,
                              margin: const EdgeInsets.only(right: 5),
                              width: 0.07.sw,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: index == widget.index
                                    ? AppColors.orange
                                    : AppColors.orange.withOpacity(0.4),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: widget.index == 2
                          ? Text(
                              AppStrings.getStarted,
                              style: AppStyle.normalText.copyWith(
                                  color: AppColors.orange,
                                  fontSize: 14.5.sp,
                                  fontWeight: FontWeight.w600),
                            )
                          : CircleAvatar(
                              radius: 13,
                              backgroundColor: AppColors.red,
                              child: const Center(
                                child: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 14,
                                  color: AppColors.white,
                                ),
                              ),
                            ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
