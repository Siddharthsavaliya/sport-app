import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sport_app/bloc/user_bloc/user_bloc.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_strings.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/screens/come_play_screen/come_play_screen.dart';
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.045.sw),
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
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 0.003.sh),
                                    child: CircleAvatar(
                                      radius: 10,
                                      backgroundColor: AppColors.red,
                                      child: const Center(
                                        child: Icon(
                                          Icons.location_on,
                                          size: 12,
                                          color: AppColors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  addHorizontalSpacing(0.01),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Home",
                                            style: AppStyle.normalText.copyWith(
                                                color: AppColors.black
                                                    .withOpacity(0.8),
                                                fontSize: 15.sp,
                                                fontWeight: FontWeight.w600,
                                                letterSpacing: 0.8),
                                          ),
                                          const Icon(
                                              Icons.keyboard_arrow_down_rounded)
                                        ],
                                      ),
                                      Text(
                                        "Tilak Nagar, New Delhi",
                                        style: AppStyle.normalText.copyWith(
                                            color: AppColors.black
                                                .withOpacity(0.8),
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 0.5),
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
                                AppAssets.person,
                                height: 35,
                              ),
                              Text(
                                state.userModel!.userName ?? "",
                                style: AppStyle.normalText.copyWith(
                                    color: AppColors.gray.withOpacity(0.8),
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.8),
                              ),
                              addVerticalSpacing(0.001),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    AppAssets.king,
                                    width: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 0.004.sh),
                                    child: Text(
                                      "Member",
                                      style: AppStyle.normalText.copyWith(
                                          color:
                                              AppColors.black.withOpacity(0.8),
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 0.8),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
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
                addVerticalSpacing(0.015),
                SearchAnchor(builder:
                    (BuildContext context, SearchController controller) {
                  return Container(
                    height: 55,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      border: Border.all(
                        color: AppColors.borderColor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0.03.sw),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            AppStrings.searchSport,
                            style: AppStyle.normalText.copyWith(
                                color: AppColors.gray.withOpacity(0.8),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.8),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.search,
                                size: 19,
                                color: AppColors.gray.withOpacity(0.8),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                child: VerticalDivider(
                                  thickness: 1,
                                  color: AppColors.gray.withOpacity(0.8),
                                ),
                              ),
                              Icon(
                                Icons.mic_none_sharp,
                                size: 19,
                                color: AppColors.gray.withOpacity(0.8),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }, suggestionsBuilder:
                    (BuildContext context, SearchController controller) {
                  return List<ListTile>.generate(5, (int index) {
                    final String item = 'item $index';
                    return ListTile(
                      title: Text(item),
                      onTap: () {
                        setState(() {
                          controller.closeView(item);
                        });
                      },
                    );
                  });
                }),
                addVerticalSpacing(0.03),
                MasonryGridView.count(
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 13,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  itemCount: 4, // You can adjust this based on your requirement
                  itemBuilder: (context, index) {
                    return index == 2
                        ? SizedBox(
                            height: 0.12.sh,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        CupertinoPageRoute(
                                          builder: (context) =>
                                              const MembershipScreen(),
                                        ));
                                  },
                                  child: Container(
                                    clipBehavior: Clip.hardEdge,
                                    decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                            offset: Offset.zero,
                                            blurRadius: 1,
                                            color: AppColors.borderColor)
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                        color: AppColors.borderColor,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 0.01.sw, vertical: 18),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Image.asset(
                                            AppAssets.id,
                                            width: 0.1.sw,
                                          ),
                                          addHorizontalSpacing(0.001),
                                          Text(
                                            "SUBSCRIPTIONS",
                                            style: AppStyle.normalText.copyWith(
                                                color: AppColors.black
                                                    .withOpacity(0.9),
                                                fontSize: 14.sp,
                                                fontFamily:
                                                    "ProzaLibre-Regular",
                                                letterSpacing: 1,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : index == 3
                            ? Container(
                                clipBehavior: Clip.hardEdge,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                        offset: Offset.zero,
                                        blurRadius: 1,
                                        color: AppColors.borderColor)
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    color: AppColors.borderColor,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 0.01.sw, vertical: 8),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Image.asset(
                                        AppAssets.gallery,
                                        width: 0.2.sw,
                                      ),
                                      addHorizontalSpacing(0.007),
                                      Text(
                                        "GALLERY",
                                        style: AppStyle.normalText.copyWith(
                                            color: AppColors.black
                                                .withOpacity(0.9),
                                            fontSize: 14.sp,
                                            fontFamily: "ProzaLibre-Regular",
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            : GestureDetector(
                                onTap: () {
                                  if (index == 0 || index == 2) {
                                    Navigator.push(
                                        context,
                                        CupertinoPageRoute(
                                          builder: (context) =>
                                              const ComePlayScreen(),
                                        ));
                                  }
                                },
                                child: Container(
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                          offset: Offset.zero,
                                          blurRadius: 1,
                                          color: AppColors.borderColor)
                                    ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      color: AppColors.borderColor,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 0.028.sw, vertical: 4),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        addVerticalSpacing(0.008),
                                        Text(
                                          data[index]["text"]!.toUpperCase(),
                                          style: AppStyle.normalText.copyWith(
                                              color: AppColors.black
                                                  .withOpacity(0.8),
                                              fontSize: 20.sp,
                                              fontFamily: "ProzaLibre-Regular",
                                              letterSpacing: 1,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        addVerticalSpacing(0.005),
                                        Text(
                                          data[index]["subText"]!,
                                          style: AppStyle.normalText.copyWith(
                                              color: index == 1 || index == 2
                                                  ? AppColors.black
                                                      .withOpacity(0.8)
                                                  : AppColors.black
                                                      .withOpacity(0.6),
                                              fontSize: 10.sp,
                                              letterSpacing:
                                                  index == 2 ? 0.8 : 0.6,
                                              fontWeight: FontWeight.w300),
                                        ),
                                        if (index == 1) ...[
                                          addVerticalSpacing(0.01),
                                          Image.asset(
                                            data[index]["image"]!,
                                            height: 0.09.sh,
                                          ),
                                          addVerticalSpacing(0.01)
                                        ],
                                        if (index == 2) ...[
                                          addVerticalSpacing(0.01),
                                        ],
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            if (index == 1) ...[
                                              SizedBox.fromSize(),
                                            ],
                                            if (index == 2) ...[
                                              Image.asset(
                                                data[index]["image"]!,
                                                height: 0.08.sh,
                                              ),
                                            ],
                                            Container(
                                              margin: EdgeInsets.only(
                                                  bottom: 0.005.sh),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                    color:
                                                        const Color(0xffFFAC33),
                                                  )),
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 0.015.sw,
                                                    vertical: 0.003.sh),
                                                child: Text(
                                                  "Play now",
                                                  style: AppStyle.normalText
                                                      .copyWith(
                                                          color: AppColors.black
                                                              .withOpacity(0.6),
                                                          fontSize: 10.sp,
                                                          fontFamily:
                                                              "Preah_Vihear",
                                                          letterSpacing: 1,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                ),
                                              ),
                                            ),
                                            if (index == 0) ...[
                                              Image.asset(
                                                data[index]["image"]!,
                                                height: 0.08.sh,
                                              ),
                                            ]
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                  },
                ),
                addVerticalSpacing(0.015),
                Container(
                  width: double.infinity,
                  constraints: BoxConstraints(minHeight: 0.2.sh),
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset.zero,
                          blurRadius: 1,
                          color: AppColors.borderColor)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: AppColors.borderColor,
                    ),
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
                              margin: EdgeInsets.only(
                                  bottom: 0.01.sh, left: 0.1.sw),
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
      ),
    );
  }
}
