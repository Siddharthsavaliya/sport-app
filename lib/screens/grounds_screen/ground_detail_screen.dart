import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/model/ground_model/ground_model.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/screens/booking/sloat_selection_screen.dart';
import 'package:sport_app/utils/helper.dart';
import 'package:sport_app/widget/app_button.dart';

class GroundDetailScreen extends StatefulWidget {
  const GroundDetailScreen({super.key, required this.groundModel});
  final GroundModel groundModel;
  @override
  State<GroundDetailScreen> createState() => _GroundDetailScreenState();
}

class _GroundDetailScreenState extends State<GroundDetailScreen> {
  List facilities = [
    AppAssets.park,
    AppAssets.cctv,
    AppAssets.changeRoom,
    AppAssets.washRoom
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        foregroundColor: AppColors.black,
        backgroundColor: Colors.grey.shade300,
        title: Text(
          widget.groundModel.name!,
          style: AppStyle.mediumText.copyWith(
              fontSize: 20.sp, color: AppColors.black, letterSpacing: 0.8),
        ),
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          addVerticalSpacing(0.02),
          Center(
            child: Container(
              height: 0.2.sh,
              width: 0.8.sw,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(widget.groundModel.image!),
                    fit: BoxFit.fill),
              ),
            ),
          ),
          addVerticalSpacing(0.02),
          Center(
            child: Container(
              height: 0.09.sh,
              width: 0.85.sw,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.borderColor),
                color: AppColors.white.withOpacity(0.9),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Image.asset(
                  AppAssets.schoolLogo,
                  width: 0.7.sw,
                ),
              ),
            ),
          ),
          addVerticalSpacing(0.02),
          Container(
            width: double.infinity,
            color: AppColors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.03.sw),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      addVerticalSpacing(0.015),
                      Text(
                        "Address:",
                        style: AppStyle.mediumText.copyWith(
                            fontSize: 12.sp,
                            color: AppColors.black,
                            letterSpacing: 0.8),
                      ),
                      addVerticalSpacing(0.01),
                      Text(
                        widget.groundModel.name!,
                        style: AppStyle.mediumText.copyWith(
                            fontSize: 15.sp,
                            color: AppColors.black,
                            letterSpacing: 0.8),
                      ),
                      addVerticalSpacing(0.006),
                      SizedBox(
                        width: 0.6.sw,
                        child: Text(
                          widget.groundModel.address ?? "",
                          style: AppStyle.normalText.copyWith(
                            fontSize: 11.sp,
                            color: AppColors.black,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      addVerticalSpacing(0.002),
                      Text(
                        "Toll Free : ${widget.groundModel.number}",
                        style: AppStyle.normalText.copyWith(
                          fontSize: 11.sp,
                          letterSpacing: 1,
                          color: AppColors.black,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      addVerticalSpacing(0.015),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        AppAssets.map,
                        height: 0.044.sh,
                      ),
                      addVerticalSpacing(0.005),
                      Text(
                        "Click Here For Location",
                        style: AppStyle.mediumBold.copyWith(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          addVerticalSpacing(0.025),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.03.sw),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Amenities at Ground",
                    style: AppStyle.mediumBold.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp,
                        color: AppColors.black,
                        letterSpacing: 0),
                  ),
                  addVerticalSpacing(0.019),
                  SizedBox(
                    height: 0.029.sh,
                    child: Center(
                      child: ListView.separated(
                        padding: const EdgeInsets.all(0),
                        separatorBuilder: (context, index) {
                          return const VerticalDivider(
                            color: Color(0xff000000),
                          );
                        },
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: facilities.length,
                        itemBuilder: (context, index) => Image.asset(
                          facilities[index],
                        ),
                      ),
                    ),
                  ),
                  addVerticalSpacing(0.005),
                ],
              ),
            ),
          ),
          addVerticalSpacing(0.025),
          Container(
            width: double.infinity,
            color: AppColors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.03.sw, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        AppAssets.clock,
                        height: 0.06.sh,
                      ),
                      addVerticalSpacing(0.001),
                      Text(
                        "Playing Hours:",
                        style: AppStyle.mediumText.copyWith(
                            fontSize: 15.sp,
                            color: AppColors.black,
                            letterSpacing: 0.8),
                      ),
                    ],
                  ),
                  addHorizontalSpacing(0.03),
                  Text(
                    widget.groundModel.playingHours ?? "",
                    style: AppStyle.mediumBold.copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black,
                      letterSpacing: 0.2,
                    ),
                  ),
                ],
              ),
            ),
          ),
          addVerticalSpacing(0.025),
          Center(
            child: SizedBox(
              width: 0.7.sw,
              child: AppButton(
                color: AppColors.orange,
                radius: 8,
                text: "BOOK YOUR SLOT NOW",
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const SlotSelectionScreen(),
                      ));
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
