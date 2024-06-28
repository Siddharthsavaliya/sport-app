import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sport_app/bloc/location_bloc/location_bloc.dart';
import 'package:sport_app/bloc/user_bloc/user_bloc.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_strings.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/screens/coaches/coach_list_screen.dart';
import 'package:sport_app/screens/come_play_screen/come_play_screen.dart';
import 'package:sport_app/screens/grounds_screen/all_ground_banners.dart';
import 'package:sport_app/screens/grounds_screen/all_ground_component.dart';
import 'package:sport_app/screens/grounds_screen/grounds_list_screen.dart';
import 'package:sport_app/screens/location_screens/location_access_screen.dart';
import 'package:sport_app/screens/membership/membership.dart';

import 'package:sport_app/utils/helper.dart';
import 'package:sport_app/utils/status_dialog.dart';
import 'package:sport_app/widget/shimmer_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List searchData = [
    {"label": "Football", "image": AppAssets.football},
    {"label": "Cricket", "image": AppAssets.cricket},
    {"label": "Volley Ball", "image": AppAssets.volleyBall},
    {"label": "Hockey", "image": AppAssets.hockey},
    {"label": "Swimming", "image": AppAssets.swimming},
    {"label": "Badminton", "image": AppAssets.badminton},
    {"label": "Table Tennis", "image": AppAssets.tableTennis},
    {"label": "Lawn Tennis", "image": AppAssets.lawnTennis},
    {"label": "Box Cricket", "image": AppAssets.cricket},
    {"label": "Basket Ball", "image": AppAssets.basketball},
    {"label": "Skates", "image": AppAssets.skates},
    {"label": "Horse Riding", "image": AppAssets.horseRiding},
    {"label": "Net Practice", "image": AppAssets.cricket},
    {"label": "yoga", "image": AppAssets.yoga},
  ];
  List<Map<String, String>> data = [
    // {
    //   "image": AppAssets.sport,
    //   "text": "SPORTS",
    //   "subText":
    //       "Choose from a variety of sports options, and book your preferred slot."
    // },
    {
      "image": AppAssets.come,
      "text": "Come & Play",
      "subText":
          "Whether creating a team or joining an ongoing match, booking slots has never been easier."
    },
    {
      "image": AppAssets.training,
      "text": "Training",
      "subText": "Tailored training sessions to enhance your performance"
    },

    {"image": AppAssets.gallery, "text": "Gallery"},
    {"image": AppAssets.gallery, "text": "Gallery"},
    {
      "image": AppAssets.event,
      "text": "Tournaments",
      "subText":
          "Users can seamlessly access a wide array of ongoing events and tournaments across various sports"
    },
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          // physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              addVerticalSpacing(0.013),
              BlocConsumer<UserBloc, UserState>(
                listener: (context, state) {
                  if (state.status.isFailed) {
                    showErrorDialogue(context, state.message);
                  }
                },
                builder: (context, state) {
                  if (state.status.isLoaded) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0.025.sw),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 10,
                                    backgroundColor: AppColors.red,
                                    child: const Center(
                                      child: Icon(
                                        Icons.location_on,
                                        size: 13,
                                        color: AppColors.white,
                                      ),
                                    ),
                                  ),
                                  addHorizontalSpacing(0.01),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        BlocProvider.of<LocationBloc>(context)
                                            .state
                                            .city,
                                        style: AppStyle.normalText.copyWith(
                                            color: AppColors.black
                                                .withOpacity(0.8),
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 0.8),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Change your current location",
                                            style: AppStyle.normalText.copyWith(
                                                color: AppColors.black
                                                    .withOpacity(0.8),
                                                fontSize: 11.sp,
                                                fontWeight: FontWeight.w500,
                                                letterSpacing: 0.5),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pushAndRemoveUntil(
                                                context,
                                                CupertinoPageRoute(
                                                    builder: (context) =>
                                                        const LocationAccessScreen()),
                                                (route) => false,
                                              );
                                            },
                                            child: const Icon(Icons
                                                .keyboard_arrow_down_rounded),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                AppAssets.dp,
                                height: 36,
                              ),
                              addVerticalSpacing(0.005),
                              Text(
                                'Hi ${state.userModel!.userName}' ?? "",
                                style: AppStyle.mediumBold.copyWith(
                                    color: AppColors.black,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.8),
                              ),
                              // if (state.userModel!.subscription != null) ...[
                              //   addVerticalSpacing(0.001),
                              //   Row(
                              //     crossAxisAlignment: CrossAxisAlignment.center,
                              //     children: [
                              //       Image.asset(
                              //         AppAssets.king,
                              //         width: 20,
                              //       ),
                              //       Padding(
                              //         padding: EdgeInsets.only(top: 0.004.sh),
                              // child: Text(
                              //   "Member",
                              //   style: AppStyle.normalText.copyWith(
                              //       color: AppColors.black
                              //           .withOpacity(0.8),
                              //       fontSize: 12.sp,
                              //       fontWeight: FontWeight.w500,
                              //       letterSpacing: 0.8),
                              // ),
                              //       ),
                              //     ],
                              //   )
                              // ]
                            ],
                          )
                        ],
                      ),
                    );
                  }
                  return Row(
                    children: [
                      shimmerWidget(
                          child: const CircleAvatar(
                        radius: 30,
                      )),
                      addHorizontalSpacing(0.012),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          shimmerWidget(
                            child: Container(
                              height: 0.015.sh,
                              width: 0.5.sw,
                              decoration: BoxDecoration(
                                color: AppColors.black,
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                          addVerticalSpacing(0.01),
                          shimmerWidget(
                            child: Container(
                              height: 0.015.sh,
                              width: 0.35.sw,
                              decoration: BoxDecoration(
                                color: AppColors.black,
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  );
                },
              ),
              addVerticalSpacing(0.025),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.025.sw),
                child: Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.red,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: Image.asset(AppAssets.verified),
                                ),
                                addHorizontalSpacing(0.013),
                                Text(
                                  "Membership\nSports Super",
                                  style: AppStyle.normalText.copyWith(
                                    color: AppColors.white,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        color: AppColors.white,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: Image.asset(AppAssets.star1),
                                ),
                                addHorizontalSpacing(0.013),
                                Text(
                                  "1000\nSports Points",
                                  style: AppStyle.normalText.copyWith(
                                    color: AppColors.white,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              addVerticalSpacing(0.03),
              const AllBannersGroundComponent(),
              addVerticalSpacing(0.01),
              Center(
                child: Text(
                  "Book Venue with the best offer",
                  style: AppStyle.mediumBold.copyWith(
                      color: AppColors.black.withOpacity(0.8),
                      fontSize: 16.sp,
                      letterSpacing: 0.1),
                ),
              ),
              addVerticalSpacing(0.03),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.02.sw),
                child: Container(
                  color: Colors.transparent,
                  child: StaggeredGrid.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    children: [
                      // First large container spanning two columns and two rows
                      StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 0.65,
                        child: buildImageCard(0, AppAssets.come1,
                            "Come\n& Play"), // Adjust as needed
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1.4,
                        child: buildImageCard(
                            1, AppAssets.train, "Training"), // Adjust as needed
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 0.37,
                        child: buildImageCard(2, AppAssets.id,
                            "Subscriptions"), // Adjust as needed
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 0.37,
                        child: buildImageCard(
                            3, AppAssets.camera, "Gallery"), // Adjust as needed
                      ),
                    ],
                  ),
                ),
              ),
              addVerticalSpacing(0.02),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 0.025.sw),
                constraints: BoxConstraints(minHeight: 0.2.sh),
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.gray.withOpacity(0.4),
                        blurRadius: 5,
                        spreadRadius: 1),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      right: 0.03.sw,
                      bottom: 0.01.sh,
                      child: Image.asset(
                        AppAssets.event,
                        height: 0.13.sh,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 0.028.sw, vertical: 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          addVerticalSpacing(0.008),
                          Text(
                            data[4]["text"]!.toUpperCase(),
                            style: AppStyle.normalText.copyWith(
                                color: AppColors.black.withOpacity(0.8),
                                fontSize: 20.sp,
                                fontFamily: "ProzaLibre-Regular",
                                letterSpacing: 1,
                                fontWeight: FontWeight.w600),
                          ),
                          addVerticalSpacing(0.005),
                          SizedBox(
                            width: 0.6.sw,
                            child: Text(
                              data[4]["subText"]!,
                              style: AppStyle.normalText.copyWith(
                                  color: AppColors.black.withOpacity(0.6),
                                  fontSize: 10.sp,
                                  height: 2,
                                  letterSpacing: 0.8,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          // const Spacer(),
                          addVerticalSpacing(0.04),
                          Container(
                            margin:
                                EdgeInsets.only(bottom: 0.01.sh, left: 0.1.sw),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: const Color(0xffFFAC33),
                                )),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 0.015.sw, vertical: 0.003.sh),
                              child: Text(
                                "Play now",
                                style: AppStyle.normalText.copyWith(
                                    color: AppColors.black.withOpacity(0.6),
                                    fontSize: 10.sp,
                                    fontFamily: "Preah_Vihear",
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          addVerticalSpacing(0.005),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              addVerticalSpacing(0.015),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImageCard(int index, String asset, String text) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.white,
            boxShadow: [
              BoxShadow(
                  color: AppColors.gray.withOpacity(0.4),
                  blurRadius: 5,
                  spreadRadius: 1),
            ]),
        child: index == 0 || index == 2 || index == 3
            ? Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.02.sw),
                child: Row(
                  children: [
                    Expanded(
                      flex: index == 2 || index == 3 ? 3 : 2,
                      child: Text(text.toUpperCase(),
                          style: AppStyle.normalText.copyWith(
                              color: AppColors.black.withOpacity(0.8),
                              fontSize: index == 2 ? 13.sp : 16.sp,
                              fontFamily: "ProzaLibre-Regular",
                              letterSpacing: 1,
                              fontWeight: index == 2
                                  ? FontWeight.bold
                                  : FontWeight.w600)),
                    ),
                    addHorizontalSpacing(0.01),
                    Expanded(
                      flex: index == 2 || index == 3 ? 1 : 3,
                      child: Container(
                        color: AppColors.black,
                        child: Image.asset(
                          asset,
                        ),
                      ),
                    )
                  ],
                ),
              )
            : Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.02.sw),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    addVerticalSpacing(0.015),
                    Text(text.toUpperCase(),
                        style: AppStyle.normalText.copyWith(
                            color: AppColors.black.withOpacity(0.8),
                            fontSize: 18.sp,
                            fontFamily: "ProzaLibre-Regular",
                            letterSpacing: 1,
                            fontWeight: FontWeight.w600)),
                    addVerticalSpacing(0.03),
                    Image.asset(
                      asset,
                    ),
                    addVerticalSpacing(0.015),
                  ],
                ),
              ),
      ),
    );
  }
}
