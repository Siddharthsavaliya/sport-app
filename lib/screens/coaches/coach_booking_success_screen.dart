import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sport_app/bloc/coach_bloc/coach_bloc.dart';
import 'package:sport_app/bloc/coach_bloc/coach_event.dart';
import 'package:sport_app/bloc/coach_bloc/coach_state.dart';
import 'package:sport_app/model/coach_booking_model/coach_booking_model.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/screens/app_bottom_bar.dart';
import 'package:sport_app/utils/helper.dart';
import 'package:sport_app/widget/empty_place_holder.dart';

class CoachBookingSuccessScreen extends StatefulWidget {
  const CoachBookingSuccessScreen({
    super.key,
    required this.id,
  });
  final String id;
  @override
  State<CoachBookingSuccessScreen> createState() => _BookingDetailScreenState();
}

class _BookingDetailScreenState extends State<CoachBookingSuccessScreen>
    with TickerProviderStateMixin {
  late final AnimationController controller;

  Widget contentBox(BuildContext context, qr) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            "QR Code",
            style: AppStyle.mediumBold
                .copyWith(fontSize: 20.sp, color: AppColors.black),
          ),
          const SizedBox(height: 20.0),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: AppColors.primaryColor,
            ),
            padding: const EdgeInsets.all(10.0),
            child: Image.memory(
              base64Decode(qr),
              width: 150.0,
              height: 150.0,
            ),
          ),
          addVerticalSpacing(0.02),
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "Close",
                style: AppStyle.normalText.copyWith(
                  fontSize: 18.sp,
                  color: AppColors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<bool> _onWillPop() async {
    Navigator.pushAndRemoveUntil(
      context,
      CupertinoPageRoute(builder: (context) => const AppBottomBar()),
      (Route<dynamic> route) => false,
    );
    return false;
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: AppColors.white,
          backgroundColor: AppColors.primaryColor,
          automaticallyImplyLeading: false,
          leading: GestureDetector(
            onTap: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => const AppBottomBar()),
                  (route) => false);
            },
            child: const Icon(
              Icons.arrow_back,
              color: AppColors.white,
            ),
          ),
          title: Text(
            "Booking Status",
            style: AppStyle.mediumText.copyWith(
                fontSize: 20.sp, color: AppColors.white, letterSpacing: 0.8),
          ),
          elevation: 0,
        ),
        body: BlocBuilder<CoachBloc, CoachState>(
          builder: (context, state) {
            if (state.status.isLoaded) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    15.height,
                    SizedBox(
                      height: 0.25.sh,
                      child: Image.asset(
                        'assets/images/calender.png',
                      ),
                    ),
                    addVerticalSpacing(0.015),
                    Text("Payment Successful",
                        style: secondaryTextStyle(
                            size: 26, color: AppColors.black)),
                    30.height,
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            width: 1,
                            color: AppColors.primaryColor,
                          )),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 0.02.sw),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "TXN ID",
                                        style: AppStyle.mediumBold.copyWith(
                                          color:
                                              AppColors.black.withOpacity(0.7),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.sp,
                                        ),
                                      ),
                                      addVerticalSpacing(0.02),
                                      Text(
                                        "Amount",
                                        style: AppStyle.mediumBold.copyWith(
                                          color:
                                              AppColors.black.withOpacity(0.7),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.sp,
                                        ),
                                      ),
                                      addVerticalSpacing(0.02),
                                      Text(
                                        "Date",
                                        style: AppStyle.mediumBold.copyWith(
                                          color:
                                              AppColors.black.withOpacity(0.7),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                  addHorizontalSpacing(0.015),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        state.coachBookingModel!.transactionId,
                                        style: AppStyle.mediumBold.copyWith(
                                          color: AppColors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14.sp,
                                        ),
                                      ),
                                      addVerticalSpacing(0.02),
                                      Text(
                                        "₹ ${state.coachBookingModel!.totalPrice.toString()}",
                                        style: AppStyle.mediumBold.copyWith(
                                          color: AppColors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14.sp,
                                        ),
                                      ),
                                      addVerticalSpacing(0.02),
                                      Text(
                                        formatDateTime(DateTime.now()),
                                        style: AppStyle.mediumBold.copyWith(
                                          color: AppColors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    30.height,
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     // AppButton(
                    //     //   shapeBorder: RoundedRectangleBorder(
                    //     //     borderRadius: BorderRadius.circular(8),
                    //     //   ),
                    //     //   text: "Download Invoice",
                    //     //   color: AppColors.primaryColor,
                    //     //   textColor: AppColors.white,
                    //     //   onTap: () async {
                    //     //     await downloadInvoice(
                    //     //         context,
                    //     //         state.coachBookingModel!.url,
                    //     //         state.coachBookingModel!.transactionId);
                    //     //   },
                    //     // ),
                    //     // addHorizontalSpacing(0.01),

                    //   ],
                    // ),
                    SizedBox(
                      width: double.infinity,
                      child: AppButton(
                        shapeBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        text: "QR Code",
                        color: AppColors.primaryColor,
                        textColor: AppColors.white,
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => Dialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              elevation: 0.0,
                              backgroundColor: Colors.transparent,
                              child: contentBox(
                                  context, state.coachBookingModel!.qrCode),
                            ),
                          );
                        },
                      ),
                    ),
                    16.height,
                  ],
                ).paddingAll(16),
              );
            }
            if (state.status.isInProgress) {
              return Padding(
                padding: EdgeInsets.only(bottom: 0.1.sh),
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }
            if (state.status.isFailed) {
              return EmptyPlaceHolder(
                buttonText: "Try Again",
                title: "Opps",
                subTitle: "Something went wrong",
                imagePath: AppAssets.error,
                onTap: () {
                  BlocProvider.of<CoachBloc>(context)
                      .add(GetCoachSingleHistoryRequest(widget.id));
                },
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
