import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sport_app/bloc/coach_bloc/coach_bloc.dart';
import 'package:sport_app/bloc/coach_bloc/coach_event.dart';
import 'package:sport_app/bloc/coach_bloc/coach_state.dart';
import 'package:sport_app/bloc/coach_detail_bloc/coach_detail_bloc.dart';
import 'package:sport_app/bloc/coach_detail_bloc/coach_detail_event.dart';
import 'package:sport_app/bloc/coach_detail_bloc/coach_detail_state.dart';
import 'package:sport_app/model/coach_model/coach_model.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/payment_web_view_screen.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/screens/coaches/coach_booking_success_screen.dart';
import 'package:sport_app/utils/helper.dart';
import 'package:sport_app/utils/status_dialog.dart';
import 'package:sport_app/widget/empty_place_holder.dart';

import '../../widget/app_button.dart' as app;

class CoachDetailScreen extends StatefulWidget {
  final String coachId;
  const CoachDetailScreen({super.key, required this.coachId});

  @override
  State<CoachDetailScreen> createState() => _CoachDetailScreenState();
}

class _CoachDetailScreenState extends State<CoachDetailScreen> {
  Coach? coachData;

  @override
  void initState() {
    super.initState();
    onRefresh();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> onRefresh() async {
    setState(() {
      coachData = BlocProvider.of<CoachDetailBloc>(context).state.coachDetail;
    });
    BlocProvider.of<CoachDetailBloc>(context)
        .add(FetchCoachDetail(widget.coachId.validate()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CoachDetailBloc, CoachDetailState>(
        builder: (context, state) {
          if (state.status.isLoaded) {
            Coach? coachDetail = state.coachDetail;
            return RefreshIndicator(
              onRefresh: onRefresh,
              color: AppColors.black,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 210,
                          child: Stack(
                            children: [
                              Container(
                                height: 190,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(AppAssets.tt1),
                                  ),
                                ),
                              ),
                              Container(
                                height: 190,
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.6)),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                    shape: BoxShape.circle,
                                    image: const DecorationImage(
                                      image: AssetImage(AppAssets.dp),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        10.height,
                        Text(
                            coachDetail?.firstname != null
                                ? "${coachDetail?.firstname} ${coachDetail?.lastname ?? ''}"
                                : "ROHIT MALHOTRA",
                            style: AppStyle.mediumBold
                                .copyWith(letterSpacing: 0.5)),
                        10.height,
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0.02.sw),
                          child: Wrap(
                            alignment: WrapAlignment.center,
                            children: [
                              Wrap(
                                children: coachDetail!.sportsgrounds
                                    .map(
                                      (e) => Text(
                                        e,
                                        style: TextStyle(
                                            fontSize: 15.sp, color: gray),
                                      ),
                                    )
                                    .toList(),
                              ),
                              Text(
                                " Basket ball coach with ${coachDetail.yearsOfExperience} Years experience",
                                style: TextStyle(fontSize: 15.sp, color: gray),
                              ),
                            ],
                          ),
                        ),
                        10.height,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 16,
                            ),
                            Text(
                              coachDetail.coachRating ?? "0",
                              style: TextStyle(fontSize: 15.sp, color: gray),
                            ),
                          ],
                        ),
                      ],
                    ),
                    10.height,
                    Divider(color: grey.withOpacity(0.2), thickness: 6),
                    10.height,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "About ${coachDetail.firstname ?? ""}",
                              style: AppStyle.mediumBold,
                            ),
                          ],
                        ),
                        10.height,
                        Text(coachDetail.description ?? "",
                            textAlign: TextAlign.justify,
                            style: AppStyle.normalText.copyWith(
                              fontSize: 15.sp,
                              letterSpacing: 0,
                              color: gray,
                            )),
                        10.height,
                      ],
                    ).paddingSymmetric(horizontal: 12),
                    10.height,
                    Divider(color: grey.withOpacity(0.2), thickness: 6),
                    10.height,
                    Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Schools",
                              style: AppStyle.mediumBold,
                            ),
                          ],
                        ),
                      ],
                    ).paddingSymmetric(horizontal: 10),
                    8.height,
                    coachDetail.schools == null
                        ? const SizedBox.shrink()
                        : ListView.separated(
                            padding: EdgeInsets.zero,
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: coachDetail.schools!.length,
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   CupertinoPageRoute(
                                  //     builder: (context) => GroundDetailScreen(
                                  //       groundModel: ground,
                                  //     ),
                                  //   ),
                                  // );
                                },
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                        color: grey.withOpacity(0.2),
                                        width: 3.0,
                                      ),
                                      bottom: BorderSide(
                                        color: grey.withOpacity(0.2),
                                        width: 3.0,
                                      ),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        // School Image and Name
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              height: 50.sp, // Increased height
                                              width: 100.sp, // Increased width
                                              child: Image.asset(
                                                AppAssets.ground,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            const SizedBox(width: 12),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  coachDetail.schools![index]
                                                          .schoolName ??
                                                      "",
                                                  style: AppStyle.mediumBold
                                                      .copyWith(
                                                    fontSize: 16
                                                        .sp, // Increased font size
                                                    fontWeight: FontWeight
                                                        .bold, // Bold text
                                                  ),
                                                ),
                                                const SizedBox(height: 4),
                                                SizedBox(
                                                  width: 0.6.sw,
                                                  child: Text(
                                                    "${coachDetail.schools![index].address1 ?? ""} ${coachDetail.schools![index].address1 ?? ""}",
                                                    style: TextStyle(
                                                      fontSize: 14
                                                          .sp, // Increased font size
                                                      color: black,
                                                      fontWeight: FontWeight
                                                          .normal, // Normal weight text
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 12),
                                        Divider(
                                            color: grey.withOpacity(0.2),
                                            thickness: 1),

                                        // Schedule
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 12.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Schedule",
                                                style: AppStyle.normalText
                                                    .copyWith(
                                                  fontSize: 16
                                                      .sp, // Increased font size
                                                  fontWeight: FontWeight
                                                      .bold, // Bold text
                                                  color: AppColors.black,
                                                ),
                                              ),
                                              const SizedBox(height: 8),
                                              Row(
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Mon to Fri",
                                                        style: AppStyle
                                                            .normalText
                                                            .copyWith(
                                                          fontSize: 14.sp,
                                                          fontWeight: FontWeight
                                                              .w600, // Semi-bold text
                                                          color:
                                                              AppColors.black,
                                                        ),
                                                      ),
                                                      const SizedBox(height: 4),
                                                      Text(
                                                        coachDetail
                                                                .schools![index]
                                                                .schoolSchedule!
                                                                .weekdayfromtime ??
                                                            "",
                                                        style: TextStyle(
                                                          fontSize: 12.sp,
                                                          color: black,
                                                          fontWeight: FontWeight
                                                              .normal, // Normal weight text
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  VerticalDivider(
                                                    color:
                                                        grey.withOpacity(0.2),
                                                    thickness: 1,
                                                    width:
                                                        24, // Adjust width to add some space between columns
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Sat, Sun",
                                                        style: AppStyle
                                                            .normalText
                                                            .copyWith(
                                                          fontSize: 14.sp,
                                                          fontWeight: FontWeight
                                                              .w600, // Semi-bold text
                                                          color:
                                                              AppColors.black,
                                                        ),
                                                      ),
                                                      const SizedBox(height: 4),
                                                      Text(
                                                        coachDetail
                                                                .schools![index]
                                                                .schoolSchedule!
                                                                .weekdaytotime ??
                                                            "",
                                                        style: TextStyle(
                                                          fontSize: 12.sp,
                                                          color: black,
                                                          fontWeight: FontWeight
                                                              .normal, // Normal weight text
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Divider(
                                            color: grey.withOpacity(0.2),
                                            thickness: 1),

                                        // Booking Information
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 12.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Book Your Coaching Session",
                                                style: AppStyle.mediumBold
                                                    .copyWith(
                                                  fontSize: 16
                                                      .sp, // Increased font size
                                                  fontWeight: FontWeight
                                                      .w600, // Semi-bold text
                                                  color: AppColors.black,
                                                ),
                                              ),
                                              const SizedBox(height: 6),
                                              Text(
                                                "Book Expert Coaching for Personalized Training Sessions",
                                                style: TextStyle(
                                                  fontSize: 14
                                                      .sp, // Increased font size
                                                  color: black,
                                                  fontWeight: FontWeight
                                                      .normal, // Normal weight text
                                                ),
                                              ),
                                              const SizedBox(height: 10),
                                              Row(
                                                children: [
                                                  Text(
                                                    "Package starts",
                                                    style: TextStyle(
                                                      fontSize: 14
                                                          .sp, // Increased font size
                                                      color: black,
                                                      fontWeight: FontWeight
                                                          .normal, // Normal weight text
                                                    ),
                                                  ),
                                                  const SizedBox(width: 4),
                                                  Text(
                                                    "Rs.${coachDetail.coachSubscriptionprice}/Month",
                                                    style: TextStyle(
                                                      fontSize: 14
                                                          .sp, // Increased font size
                                                      color: redColor,
                                                      fontWeight: FontWeight
                                                          .bold, // Bold text
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              addVerticalSpacing(0.02),
                                              Center(
                                                child: BlocListener<CoachBloc,
                                                    CoachState>(
                                                  listener: (context, state) {
                                                    if (state.isBooking) {
                                                      if (state.status
                                                          .isInProgress) {
                                                        showProgressDialogue(
                                                            context);
                                                      } else if (state
                                                          .status.isLoaded) {
                                                        Navigator.pop(context);
                                                        Navigator.push(
                                                            context,
                                                            CupertinoPageRoute(
                                                                builder: (context) => PaymentWebViewScreen(
                                                                    type:
                                                                        "coach",
                                                                    url: state
                                                                        .redirectUrl,
                                                                    id: state
                                                                        .id)));
                                                      } else if (state
                                                          .status.isFailed) {
                                                        Navigator.pop(context);
                                                        showErrorDialogue(
                                                            context,
                                                            state.message);
                                                      }
                                                    }
                                                  },
                                                  child: SizedBox(
                                                    height: 35,
                                                    width: 0.35.sw,
                                                    child: app.AppButton(
                                                      color: AppColors.orange,
                                                      text: "Buy Now",
                                                      onTap: () {
                                                        BlocProvider.of<
                                                                    CoachBloc>(
                                                                context)
                                                            .add(BuyCoachRequest(
                                                                coachDetail.id!,
                                                                coachDetail
                                                                    .schools![
                                                                        index]
                                                                    .schoolId!));
                                                      },
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return SizedBox(
                                height: 20.sp,
                              );
                            },
                          ),
                    addVerticalSpacing(0.03)
                  ],
                ),
              ),
            );
          }
          if (state.status.isInProgress) {
            return const Center(
              child: CircularProgressIndicator(
                color: AppColors.primaryColor,
              ),
            );
          }
          return EmptyPlaceHolder(
            title: "Oops",
            buttonText: "Try Again",
            onTap: () {
              onRefresh();
            },
            subTitle: "Something went wrong",
            imagePath: AppAssets.error,
          );
        },
      ),
    );
  }
}
