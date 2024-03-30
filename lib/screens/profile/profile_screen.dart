// ignore_for_file: use_build_context_synchronously

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_strings.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/screens/on_boarding/splash_screen.dart';
import 'package:sport_app/utils/helper.dart';
import 'package:sport_app/utils/status_dialog.dart';
import 'package:sport_app/widget/app_button.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<Map<String, dynamic>> data = [
    {
      "icon": Icons.person,
      "title": AppStrings.personalInfo,
      "subtitle": AppStrings.personalInfoSub,
    },
    {
      "icon": Icons.bookmark_border_outlined,
      "title": AppStrings.myFavorites,
      "subtitle": null,
    },
    {
      "icon": Icons.book_outlined,
      "title": AppStrings.booking,
      "subtitle": AppStrings.bookingSub,
    },
    {
      "icon": Icons.payment,
      "title": AppStrings.paymentMethod,
      "subtitle": AppStrings.paymentMethodSub,
    },
    {
      "icon": Icons.lock,
      "title": AppStrings.security,
      "subtitle": AppStrings.securitySub,
    },
    {
      "icon": Icons.support_agent,
      "title": AppStrings.help,
      "subtitle": null,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.045.sw),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                addVerticalSpacing(0.05),
                Center(
                  child: CircleAvatar(
                    radius: 70,
                    child: Center(
                      child: Image.asset(
                        AppAssets.dp,
                      ),
                    ),
                  ),
                ),
                addVerticalSpacing(0.05),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: data.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      constraints: const BoxConstraints(minHeight: 54),
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: 0.024.sh),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3), // Shadow color
                            blurRadius: 5.0, // Spread of the shadow
                            spreadRadius: 0.0, // How far the shadow extends
                            offset:
                                const Offset(0, 0), // Offset in (x,y) direction
                          ),
                        ],
                        color: AppColors.lightWhite,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 0.03.sw, vertical: 6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              data[index]["icon"],
                              color: AppColors.black,
                            ),
                            const VerticalDivider(
                              color: AppColors.gray,
                              thickness: 1,
                              indent: 10,
                              endIndent: 10,
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        data[index]["title"],
                                        style: AppStyle.normalText.copyWith(
                                            color: AppColors.black,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 0.8),
                                      ),
                                      if (data[index]["subtitle"] != null) ...[
                                        addVerticalSpacing(0.004),
                                        Text(
                                          data[index]["subtitle"],
                                          style: AppStyle.normalText.copyWith(
                                              color: AppColors.black
                                                  .withOpacity(0.7),
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w200,
                                              letterSpacing: 0.8),
                                        ),
                                      ]
                                    ],
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: AppColors.black,
                                    size: 18,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                addVerticalSpacing(0.01),
                SizedBox(
                  width: 0.4.sw,
                  child: AppButton(
                    isBorder: true,
                    text: "Logout",
                    onTap: () {
                      showYesNoDialogue(
                        context,
                        onTap: () async {
                          await deleteAll();
                          Navigator.pushAndRemoveUntil(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => const SplashScreen(),
                            ),
                            (route) => false,
                          );
                        },
                        title: "Alert",
                        subTitle: "Are you sure you want to logout ?",
                      );
                    },
                  ),
                ),
                addVerticalSpacing(0.02)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
