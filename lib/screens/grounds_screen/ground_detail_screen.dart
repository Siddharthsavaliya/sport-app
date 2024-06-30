import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sport_app/bloc/ground_bloc/ground_bloc.dart';
import 'package:sport_app/bloc/wishlist_bloc/wishlist_bloc.dart';
import 'package:sport_app/model/ground_model/ground_model.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/screens/booking/sloat_selection_screen.dart';
import 'package:sport_app/screens/grounds_screen/all_ground_banners.dart';
import 'package:sport_app/screens/grounds_screen/all_ground_component.dart';
import 'package:sport_app/utils/helper.dart';
import 'package:sport_app/utils/shimmer_widget.dart';
import 'package:sport_app/utils/status_dialog.dart';
import 'package:sport_app/widget/app_button.dart' as AppButton;
import 'package:sport_app/widget/carosule_widget.dart';

class GroundDetailScreen extends StatefulWidget {
  const GroundDetailScreen({super.key, required this.groundModel});
  final GroundModel groundModel;
  @override
  State<GroundDetailScreen> createState() => _GroundDetailScreenState();
}

class _GroundDetailScreenState extends State<GroundDetailScreen> {
  List<String> amenitiesList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    init();
  }

  void init() {
    if (widget.groundModel.amenities != null) {
      amenitiesList = widget.groundModel.amenities!.split(',');
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        foregroundColor: AppColors.black,
        backgroundColor: Colors.grey.shade100,
        title: Text(
          widget.groundModel.institutionName!,
          style: AppStyle.mediumText.copyWith(
              fontSize: 20.sp, color: AppColors.black, letterSpacing: 0.8),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            addVerticalSpacing(0.02),
            // Center(
            //     child: Container(
            //   height: 0.2.sh,
            //   width: 0.8.sw,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(10),
            //     image: const DecorationImage(
            //         image: AssetImage(AppAssets.ground),
            //         // image: NetworkImage(widget.groundModel.image!),
            //         fit: BoxFit.fill),
            //   ),
            // )),

            BannerWidget(
              data: widget.groundModel.images!,
            ),
            // addVerticalSpacing(0.02),
            // Center(
            //   child: Container(
            //     height: 0.09.sh,
            //     width: 0.85.sw,
            //     decoration: BoxDecoration(
            //       border: Border.all(color: AppColors.borderColor),
            //       color: AppColors.white.withOpacity(0.9),
            //       borderRadius: BorderRadius.circular(10),
            //     ),
            //     child: Center(
            //       child: Image.network(
            //      widget.groundModel.school.,
            //         width: 0.7.sw,
            //       ),
            //     ),
            //   ),
            // ),
            addVerticalSpacing(0.02),
            Container(
              width: double.infinity,
              color: AppColors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.03.sw),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          addVerticalSpacing(0.015),
                          Text(
                            "Address:",
                            style: AppStyle.mediumText.copyWith(
                                fontSize: 13.5.sp,
                                color: AppColors.black,
                                letterSpacing: 0.8),
                          ),
                          addVerticalSpacing(0.01),
                          SizedBox(
                            width: 0.49.sw,
                            child: Text(
                              widget.groundModel.institutionName!,
                              style: AppStyle.mediumText.copyWith(
                                  fontSize: 16.sp,
                                  color: AppColors.black,
                                  letterSpacing: 0.8),
                            ),
                          ),
                          addVerticalSpacing(0.006),
                          SizedBox(
                            width: 0.6.sw,
                            child: Text(
                              "${widget.groundModel.school!.address1!} ${widget.groundModel.school!.address2!}",
                              style: AppStyle.normalText.copyWith(
                                fontSize: 12.sp,
                                color: AppColors.black,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          addVerticalSpacing(0.002),
                          Text(
                            "Toll Free : 90873480384",
                            // "Toll Free : ${widget.groundModel.number}",
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
                    ),
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          launchUrls(context,
                              widget.groundModel.school?.googlemaplink ?? "");
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              AppAssets.map,
                              height: 0.044.sh,
                            ),
                            addVerticalSpacing(0.005),
                            Text(
                              "Click Here For Location",
                              textAlign: TextAlign.center,
                              style: AppStyle.mediumBold.copyWith(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // addVerticalSpacing(0.025),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.03.sw, vertical: 15),
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
                    DynamicHeightGridView(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisSpacing: 0,
                      crossAxisCount: 2,
                      itemCount: amenitiesList.length,
                      builder: (context, index) => Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            AppAssets.yesIcon,
                            height: 20,
                            width: 20,
                          ),
                          addHorizontalSpacing(0.01),
                          Text(
                            amenitiesList[index].toString(),
                            style: AppStyle.mediumBold.copyWith(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: AppColors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.03.sw, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppAssets.clock,
                            height: 0.06.sh,
                          ),
                          addVerticalSpacing(0.001),
                          Text(
                            "Playing Hours:",
                            textAlign: TextAlign.center,
                            style: AppStyle.mediumText.copyWith(
                                fontSize: 15.sp,
                                color: AppColors.black,
                                letterSpacing: 0.8),
                          ),
                        ],
                      ),
                    ),
                    addHorizontalSpacing(0.03),
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Monday to Friday: ${widget.groundModel.school!.schoolSchedule!.weekdayfromtime}",
                            style: AppStyle.mediumBold.copyWith(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.black,
                              letterSpacing: 0.2,
                            ),
                          ),
                          addVerticalSpacing(0.01),
                          Text(
                            "Saturday to Sunday: ${widget.groundModel.school!.schoolSchedule!.weekdaytotime}",
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
                  ],
                ),
              ),
            ),
            addVerticalSpacing(0.028),
            Center(
              child: SizedBox(
                width: 0.7.sw,
                child: AppButton.AppButton(
                  color: AppColors.orange,
                  radius: 8,
                  text: "BOOK YOUR SLOT NOW",
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => SlotSelectionScreen(
                              groundData: widget.groundModel),
                        ));
                  },
                ),
              ),
            ),
            addVerticalSpacing(0.028),
            Padding(
              padding: EdgeInsets.only(left: 0.025.sw),
              child: Text(
                "Popular Ground",
                style: AppStyle.mediumBold.copyWith(fontSize: 15.sp),
              ),
            ),
            addVerticalSpacing(0.01),
            const AllBannersGroundComponent(),
            addVerticalSpacing(0.03),
          ],
        ),
      ),
    );
  }
}
