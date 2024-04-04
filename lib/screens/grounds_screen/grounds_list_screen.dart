import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/screens/grounds_screen/ground_detail_screen.dart';
import 'package:sport_app/utils/helper.dart';
import 'package:sport_app/widget/app_text_field.dart';

class GroundsListScreen extends StatefulWidget {
  const GroundsListScreen({super.key, required this.name});
  final String name;
  @override
  State<GroundsListScreen> createState() => _GroundsListScreenState();
}

class _GroundsListScreenState extends State<GroundsListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: AppColors.black,
        backgroundColor: Colors.grey.shade300,
        title: Text(
          "${widget.name} Grounds",
          style: AppStyle.mediumText.copyWith(
              fontSize: 20.sp, color: AppColors.black, letterSpacing: 0.8),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.045.sw, vertical: 20),
              child: AppTextfield(
                radius: 8,
                height: 40,
                prefixIcon: Icons.search_rounded,
                hint: "Search ground here",
              ),
            ),
            addVerticalSpacing(0.006),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 0.025.sw,
              ),
              child: Text(
                "${widget.name.toUpperCase()} SPORT GROUNDS",
                style: AppStyle.mediumText.copyWith(
                    fontSize: 15.sp,
                    color: AppColors.black,
                    letterSpacing: 0.8,
                    fontWeight: FontWeight.w600),
              ),
            ),
            addVerticalSpacing(0.008),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const GroundDetailScreen(
                              name: "Trinity Global School"),
                        ));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 6),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(
                      width: 1,
                      color: AppColors.borderColor,
                    )),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 6,
                              child: Image.asset(
                                AppAssets.ground,
                                height: 100,
                                fit: BoxFit.fill,
                              ),
                            ),
                            addHorizontalSpacing(0.01),
                            Expanded(
                                flex: 6,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 0.01.sw),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          addVerticalSpacing(0.008),
                                          Text(
                                            "Trinity Global School",
                                            style: AppStyle.mediumBold.copyWith(
                                                fontSize: 13.5.sp,
                                                fontWeight: FontWeight.w400,
                                                color: AppColors.black,
                                                letterSpacing: 0.8),
                                          ),
                                          addVerticalSpacing(0.018),
                                          Wrap(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 0.001.sh),
                                                child: Image.asset(
                                                  AppAssets.footballIcon,
                                                  height: 16,
                                                ),
                                              ),
                                              addHorizontalSpacing(0.004),
                                              Text(
                                                "Rs. 300 Onwards",
                                                style: AppStyle.mediumBold
                                                    .copyWith(
                                                        fontSize: 13.5.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: AppColors.black,
                                                        letterSpacing: 0.8),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          addVerticalSpacing(0.005),
                                          Image.asset(
                                            AppAssets.recom,
                                            height: 0.035.sh,
                                          ),
                                          addVerticalSpacing(0.012),
                                          Image.asset(
                                            AppAssets.bookmark,
                                            height: 0.035.sh,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ))
                          ],
                        ),
                        addVerticalSpacing(0.01),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0.012.sw),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    AppAssets.star,
                                    width: 20,
                                  ),
                                  addHorizontalSpacing(0.004),
                                  Text(
                                    "3.5",
                                    style: AppStyle.normalText.copyWith(
                                        fontSize: 15.sp,
                                        color: AppColors.black,
                                        letterSpacing: 0.8),
                                  ),
                                  addHorizontalSpacing(0.01),
                                  Container(
                                    width: 2,
                                    height: 20,
                                    color: AppColors.borderColor,
                                  ),
                                  addHorizontalSpacing(0.01),
                                  Image.asset(
                                    AppAssets.location,
                                    width: 12,
                                  ),
                                  addHorizontalSpacing(0.004),
                                  Text(
                                    "Patna",
                                    style: AppStyle.normalText.copyWith(
                                        fontSize: 15.sp,
                                        color: AppColors.black,
                                        letterSpacing: 0.8),
                                  ),
                                ],
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: AppColors.orange,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 0.02.sw),
                                  child: Center(
                                    child: Text(
                                      "BOOK YOUR SLOT NOW",
                                      style: AppStyle.mediumText.copyWith(
                                          fontSize: 15.sp,
                                          color: AppColors.white,
                                          letterSpacing: 0.2,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        addVerticalSpacing(0.009),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
