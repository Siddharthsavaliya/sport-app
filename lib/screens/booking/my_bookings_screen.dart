import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sport_app/bloc/booking_history_bloc/booking_history_bloc.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/screens/booking/booking_detail_screen.dart';
import 'package:sport_app/screens/booking/booking_history_detail_screen.dart';
import 'package:sport_app/utils/helper.dart';
import 'package:sport_app/widget/empty_place_holder.dart';
import 'package:sport_app/widget/shimmer_widget.dart';

class MyBookingsScreen extends StatefulWidget {
  const MyBookingsScreen({super.key});

  @override
  State<MyBookingsScreen> createState() => _MyBookingsScreenState();
}

class _MyBookingsScreenState extends State<MyBookingsScreen> {
  @override
  void initState() {
    super.initState();
    onRefresh();
  }

  Future<void> onRefresh() async {
    BlocProvider.of<BookingHistoryBloc>(context)
        .add(const GetBookingHistoryEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          foregroundColor: AppColors.white,
          backgroundColor: AppColors.primaryColor,
          title: Text(
            "Booking History",
            style: AppStyle.mediumText.copyWith(
                fontSize: 20.sp, color: AppColors.white, letterSpacing: 0.8),
          ),
          elevation: 0,
        ),
        body: BlocBuilder<BookingHistoryBloc, BookingHistoryState>(
          builder: (context, state) {
            if (state.status.isLoaded || state.isCancel) {
              return Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 0.035.sw, vertical: 15),
                child: RefreshIndicator(
                  color: AppColors.primaryColor,
                  onRefresh: () {
                    return onRefresh();
                  },
                  child: state.bookingHistory.isEmpty
                      ? Center(
                          child: Text(
                            "Not have any transactions yet",
                            style: AppStyle.normalText.copyWith(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                              fontSize: 16.sp,
                            ),
                          ),
                        )
                      : ListView.builder(
                          itemCount: state.bookingHistory.length,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (context) =>
                                            BookingHistoryDetailScreen(
                                              bookingHistory:
                                                  state.bookingHistory[index],
                                            )));
                              },
                              child: Container(
                                margin: const EdgeInsets.only(bottom: 15),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      blurRadius: 10,
                                    )
                                  ],
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 0.03.sw,
                                    vertical: 10,
                                  ),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            showDialog(
                                                context: context,
                                                builder: (context) => Dialog(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                      ),
                                                      elevation: 0.0,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      child: contentBox(
                                                          context,
                                                          state
                                                              .bookingHistory[
                                                                  index]
                                                              .qrCode),
                                                    ));
                                          },
                                          child: Image.memory(
                                            base64Decode(state
                                                .bookingHistory[index].qrCode),
                                            width: 0.2.sw,
                                          ),
                                        ),
                                        addHorizontalSpacing(0.01),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(right: 5),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  state.bookingHistory[index]
                                                      .ground.institutionName!,
                                                  style: AppStyle.normalBold
                                                      .copyWith(
                                                    color: AppColors.black,
                                                    fontSize: 16.sp,
                                                  ),
                                                ),
                                                addVerticalSpacing(0.01),
                                                // Text(
                                                //   formatDateTimeToString(state
                                                //       .storeTransactionList[index]
                                                //       .createdAt!),
                                                //   style:
                                                //       AppStyle.normalText.copyWith(
                                                //     color: Colors.grey.shade600,
                                                //     fontSize: 11.sp,
                                                //   ),
                                                // ),
                                                Text(
                                                  "₹${state.bookingHistory[index].totalPrice}",
                                                  style: AppStyle.mediumBold
                                                      .copyWith(
                                                    color: AppColors.black
                                                        .withOpacity(0.6),
                                                    letterSpacing: 0.5,
                                                    fontSize: 16.sp,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        // GestureDetector(
                                        //   onTap: () async {
                                        //     // await downloadFile(
                                        //     //     state
                                        //     //         .storeTransactionList[
                                        //     //             index]
                                        //     //         .invoice!,
                                        //     //     "Invoice");
                                        //   },
                                        //   child: Image.asset(
                                        //     AppAssets.invoice,
                                        //     height: 30,
                                        //   ),
                                        // )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                ),
              );
            } else if (state.status.isFailed) {
              return EmptyPlaceHolder(
                title: "Opps",
                subTitle: "Something went wrong",
                imagePath: AppAssets.error,
                buttonText: "Try Again",
                onTap: () {
                  onRefresh();
                },
              );
            } else if (state.status.isInProgress) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return shimmerWidget(
                      child: Container(
                        height: 0.1.sh,
                        width: double.infinity,
                        margin: const EdgeInsets.only(bottom: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColors.black,
                        ),
                      ),
                    );
                  },
                ),
              );
            }
            return Container();
          },
        ));
  }
}

Widget contentBox(BuildContext context, qrCode) {
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
            base64Decode(qrCode),
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
