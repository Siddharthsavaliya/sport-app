import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/utils/helper.dart';

class ComePlayScreen extends StatefulWidget {
  const ComePlayScreen({super.key});

  @override
  State<ComePlayScreen> createState() => _ComePlayScreenState();
}

class _ComePlayScreenState extends State<ComePlayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: AppColors.black,
        backgroundColor: Colors.grey.shade300,
        elevation: 0,
      ),
      body: Column(
        children: [
          addVerticalSpacing(0.013),
          SizedBox(
            height: 0.2.sh,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.5),
                  clipBehavior: Clip.hardEdge,
                  height: 0.19.sh,
                  width: 0.4.sw,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.borderColor,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 0.123.sh,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Color(0xffFFFCF5),
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(15)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 4, bottom: 10),
                          child: SizedBox(
                            height: 0.6.sh,
                            child: Image.asset(
                              AppAssets.tt,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 1,
                        width: double.infinity,
                        color: AppColors.borderColor,
                      ),
                      addVerticalSpacing(0.005),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 0.01.sw),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Indian Table Tennis League",
                              style: AppStyle.normalText.copyWith(
                                color: AppColors.black.withOpacity(0.6),
                                fontSize: 10.sp,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            Text(
                              "Date: 20-Feb-2024",
                              style: AppStyle.normalText.copyWith(
                                color: AppColors.black.withOpacity(0.6),
                                fontSize: 10.sp,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            addVerticalSpacing(0.005),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  right: 0.015.sw,
                                ),
                                child: Text(
                                  "More",
                                  style: AppStyle.mediumBold.copyWith(
                                    color: AppColors.orange,
                                    fontSize: 10.sp,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
