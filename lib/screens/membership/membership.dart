import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/utils/helper.dart';

class MembershipScreen extends StatefulWidget {
  const MembershipScreen({super.key});

  @override
  State<MembershipScreen> createState() => _MembershipScreenState();
}

class _MembershipScreenState extends State<MembershipScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: 1.sh,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 255, 122, 118),
                AppColors.primaryColor,
              ], // Change colors as per your choice
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.05.sw),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                addVerticalSpacing(0.1),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Membership\nPlans",
                      style: AppStyle.normalBold.copyWith(
                        fontSize: 32.sp,
                        color: AppColors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 0.01.sh),
                      child: const CircleAvatar(
                        radius: 18,
                        backgroundColor: AppColors.white,
                        child: Center(
                          child: Icon(
                            Icons.close_rounded,
                            color: AppColors.black,
                            size: 18,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Text(
                  "Select a Membership Option",
                  style: AppStyle.mediumBold.copyWith(
                    fontSize: 20.sp,
                    letterSpacing: 1,
                    // fontFamily: "Lobster",
                    color: AppColors.white,
                  ),
                ),
                addVerticalSpacing(0.01),
                Row(
                  children: [
                    Text(
                      "INAUGURAL DISCOUNT",
                      style: AppStyle.mediumBold.copyWith(
                        fontSize: 20.sp,
                        letterSpacing: 1,
                        // fontFamily: "Lobster",
                        color: AppColors.white,
                      ),
                    ),
                    addHorizontalSpacing(0.005),
                    Image.asset(
                      AppAssets.dis,
                      width: 20,
                      color: AppColors.white,
                    )
                  ],
                ),
                addVerticalSpacing(0.035),
                _card("1,000", "1,500", "Monthly"),
                addVerticalSpacing(0.03),
                _card("2,700", "3,000", "3 Months"),
              ],
            ),
          )),
    );
  }

  Widget _card(String price, String crossPrice, String plan) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.white.withOpacity(0.5),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.02.sw, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 0.1.sh,
                  height: 0.2.sw,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Image.asset(
                      AppAssets.king,
                      height: 0.07.sh,
                    ),
                  ),
                ),
                addHorizontalSpacing(0.015),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Elite\nMembership",
                      style: AppStyle.mediumBold.copyWith(
                        height: 0,
                        fontSize: 20.sp,
                        letterSpacing: 0.8,
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                      ),
                    ),
                    addVerticalSpacing(0.004),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(255, 252, 96, 91),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 0.03.sw, vertical: 2),
                        child: Text(
                          plan,
                          style: AppStyle.mediumBold.copyWith(
                            height: 0,
                            fontSize: 14.sp,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.bold,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            addVerticalSpacing(0.008),
            Divider(
              color: AppColors.white.withOpacity(0.9),
            ),
            addVerticalSpacing(0.008),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.04.sw),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "₹$crossPrice",
                        style: AppStyle.mediumBold.copyWith(
                          height: 0,
                          decoration: TextDecoration.lineThrough,
                          fontSize: 25.sp,
                          fontFamily: "Lobster",
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                          color: AppColors.white,
                        ),
                      ),
                      Text(
                        "₹$price",
                        style: AppStyle.mediumBold.copyWith(
                          height: 0,
                          fontSize: 32.sp,
                          fontFamily: "Lobster",
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 0.3.sw,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(68),
                      gradient: const LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          Color.fromARGB(255, 252, 96, 91),
                          AppColors.primaryColor,
                        ], // Change colors as per your choice
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "BUY NOW",
                        style: AppStyle.normalBold.copyWith(
                          color: AppColors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
