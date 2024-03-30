import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_strings.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/screens/home/home_screen.dart';
import 'package:sport_app/utils/helper.dart';
import 'package:sport_app/widget/app_button.dart';
import 'package:sport_app/widget/app_text_field.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: AppColors.black,
        backgroundColor: AppColors.lightGrey,
        elevation: 0,
        automaticallyImplyLeading: true,
        bottom: PreferredSize(
            preferredSize: Size(double.infinity, 0.12.sh),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.045.sw, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.resetPass,
                    style: AppStyle.mediumBold.copyWith(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            )),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.04.sw),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            addVerticalSpacing(0.05),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                AppStrings.newPassword,
                style: AppStyle.mediumBold.copyWith(
                  color: AppColors.gray,
                  fontSize: 19.sp,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                ),
              ),
            ),
            addVerticalSpacing(0.005),
            AppTextfield(
              isPassword: true,
              controller: TextEditingController(),
              hint: AppStrings.newPassword,
              radius: 4,
              isRound: true,
              prefixIcon: Icons.lock,
            ),
            addVerticalSpacing(0.015),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                AppStrings.confirmPassword,
                style: AppStyle.mediumBold.copyWith(
                  color: AppColors.gray,
                  fontSize: 19.sp,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                ),
              ),
            ),
            addVerticalSpacing(0.005),
            AppTextfield(
              hint: AppStrings.confirmPassword,
              radius: 4,
              isRound: true,
              prefixIcon: Icons.lock,
            ),
            addVerticalSpacing(0.05),
            SizedBox(
              width: 0.78.sw,
              child: AppButton(
                radius: 15,
                textSize: 17.sp,
                removeOpacity: true,
                text: AppStrings.resetPassword,
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const HomeScreen(),
                      ));
                },
              ),
            ),
            addVerticalSpacing(0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppStrings.notNeedToDoThis,
                  style: AppStyle.normalText.copyWith(
                      color: AppColors.black.withOpacity(0.7),
                      fontSize: 14.sp,
                      letterSpacing: 0.8),
                ),
                addHorizontalSpacing(0.005),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    AppStrings.login,
                    style: AppStyle.normalText.copyWith(
                        color: AppColors.orange.withOpacity(0.7),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.8),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
