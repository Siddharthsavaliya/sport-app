import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/bloc/membership_bloc/membership_bloc.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_strings.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/utils/helper.dart';
import 'package:sport_app/widget/app_button.dart';
import 'package:sport_app/widget/empty_place_holder.dart';
import 'package:sport_app/widget/shimmer_widget.dart';

class PaymentHistory extends StatefulWidget {
  const PaymentHistory({super.key});

  @override
  State<PaymentHistory> createState() => _PaymentHistoryState();
}

class _PaymentHistoryState extends State<PaymentHistory> {
  @override
  void initState() {
    onRefresh();
    super.initState();
  }

  Future<void> onRefresh() async {
    BlocProvider.of<MembershipBloc>(context).add(MyPurchaseRequest());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.primaryColor,
        title: Text(
          AppStrings.myPaymentHistory,
          style: AppStyle.mediumText.copyWith(
              fontSize: 20.sp, color: AppColors.white, letterSpacing: 0.8),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.03.sw, vertical: 10),
        child: BlocBuilder<MembershipBloc, MembershipState>(
          builder: (context, state) {
            if (state.status.isLoaded) {
              return RefreshIndicator(
                onRefresh: onRefresh,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: state.purchase.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 0.03.sw),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            addVerticalSpacing(0.01),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Plan",
                                  style: AppStyle.normalText.copyWith(
                                    color: AppColors.black.withOpacity(0.8),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15.sp,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                              ],
                            ),
                            addVerticalSpacing(0.001),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "₹${state.purchase[index].subscriptionPlan?.price.toInt()}",
                                      style: AppStyle.mediumBold.copyWith(
                                        color: AppColors.black,
                                        fontSize: 18.sp,
                                        letterSpacing: 0.5,
                                      ),
                                    ),
                                    addVerticalSpacing(0.005),
                                    Text(
                                      "Purchased on",
                                      style: AppStyle.normalText.copyWith(
                                        color: AppColors.black.withOpacity(0.8),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13.sp,
                                        letterSpacing: 0.5,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: index == 1
                                            ? AppColors.red
                                            : Colors.green,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 1),
                                        child: Text(
                                          index == 1 ? "EXPIRED" : "ACTIVE",
                                          style: AppStyle.mediumBold.copyWith(
                                            fontSize: 12.sp,
                                            color: AppColors.white,
                                            letterSpacing: 0.1,
                                          ),
                                        ),
                                      ),
                                    ),
                                    addVerticalSpacing(0.008),
                                    Text(
                                      formatDateTime(
                                          state.purchase[index].purchaseDate!),
                                      style: AppStyle.normalText.copyWith(
                                        color: AppColors.black.withOpacity(0.8),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13.sp,
                                        letterSpacing: 0.1,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            addVerticalSpacing(0.02),
                            Center(
                              child: SizedBox(
                                width: 0.5.sw,
                                child: AppButton(
                                  radius: 5,
                                  text: "Download Invoice",
                                  color: AppColors.primaryColor,
                                  onTap: () async {
                                    await downloadInvoice(
                                        context,
                                        state.purchase[index].invoiceUrl!,
                                        state.purchase[index].id!);
                                  },
                                ),
                              ),
                            ),
                            addVerticalSpacing(0.01),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            }
            if (state.status.isInProgress) {
              return ListView.builder(
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) {
                  return shimmerWidget(
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.black,
                      ),
                    ),
                  );
                },
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
      ),
    );
  }
}
