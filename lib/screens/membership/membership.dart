// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/bloc/membership_bloc/membership_bloc.dart';
import 'package:sport_app/bloc/user_bloc/user_bloc.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/payment_web_view_screen.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/utils/helper.dart';
import 'package:sport_app/utils/status_dialog.dart';
import 'package:sport_app/widget/shimmer_widget.dart';

class MembershipScreen extends StatefulWidget {
  const MembershipScreen({super.key});

  @override
  State<MembershipScreen> createState() => _MembershipScreenState();
}

class _MembershipScreenState extends State<MembershipScreen> {
  static const MethodChannel _channel = MethodChannel('easebuzz');
  @override
  void initState() {
    BlocProvider.of<MembershipBloc>(context).add(GetMembershipRequest());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: 1.sh,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 255, 122, 118),
                AppColors.primaryRedColor,
              ], // Change colors as per your choice
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.05.sw),
              child: BlocConsumer<MembershipBloc, MembershipState>(
                listener: (context, state) async {
                  if (state.isPurchase) {
                    if (state.status.isInProgress) {
                      showProgressDialogue(context);
                    } else if (state.status.isLoaded) {
                      Navigator.pop(context);
                      // Navigator.push(
                      //     context,
                      //     CupertinoPageRoute(
                      //         builder: (context) => PaymentWebViewScreen(
                      //               type: "membership",
                      //               url: state.redirectUrl,
                      //             )));

                      String payMode = "production";
                      Object parameters = {
                        "access_key": state.redirectUrl,
                        "pay_mode": payMode
                      };
                      final paymentResponse = await _channel.invokeMethod(
                          "payWithEasebuzz", parameters);
                      log(paymentResponse.toString());
                      if (paymentResponse["result"] == "payment_successfull") {
                        BlocProvider.of<UserBloc>(context)
                            .add(GetUserEventRequest());
                        showScafoldMessage(
                            message: "Membership purchase completed",
                            context: context);
                      } else {
                        showScafoldMessage(
                          message: "Payment failed. Please try again.",
                          context: context,
                        );
                      }
                    } else if (state.status.isFailed) {
                      Navigator.pop(context);
                      showScafoldMessage(
                          context: context, message: state.message);
                    }
                  }
                },
                builder: (context, state) {
                  if (state.status.isLoaded || state.isPurchase) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        addVerticalSpacing(0.1),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Membership\nPlans",
                              style: AppStyle.normalBold.copyWith(
                                fontSize: 32.sp,
                                color: AppColors.white,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 0.01.sh),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: const CircleAvatar(
                                  radius: 18,
                                  backgroundColor: AppColors.white,
                                  child: Center(
                                    child: Icon(
                                      Icons.close_rounded,
                                      color: AppColors.black,
                                      size: 18,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Text(
                          "Select a Membership Option",
                          style: AppStyle.mediumBold.copyWith(
                            fontSize: 20.sp,
                            letterSpacing: 1,
                            // fontFamily: "Lobster",
                            color: AppColors.white,
                          ),
                        ),
                        addVerticalSpacing(0.018),
                        const AnimatedTextWidget(),
                        addVerticalSpacing(0.025),
                        ListView.builder(
                          padding: const EdgeInsets.all(0),
                          itemCount: state.plans.length,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return _card(
                                state.plans[index].price.toInt().toString(),
                                state.plans[index].actualPrice
                                    .toInt()
                                    .toString(),
                                state.plans[index].planType,
                                state.plans[index].id!,
                                state.plans[index].planName ?? "");
                          },
                        ),
                      ],
                    );
                  }
                  return Column(
                    children: [
                      addVerticalSpacing(0.12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              shimmerWidget(
                                child: Container(
                                  height: 0.015.sh,
                                  width: 0.6.sw,
                                  decoration: BoxDecoration(
                                    color: AppColors.white.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                              addVerticalSpacing(0.01),
                              shimmerWidget(
                                child: Container(
                                  height: 0.015.sh,
                                  width: 0.4.sw,
                                  decoration: BoxDecoration(
                                    color: AppColors.white.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: CircleAvatar(
                              radius: 18,
                              backgroundColor: AppColors.white.withOpacity(0.5),
                              child: const Center(
                                child: Icon(
                                  Icons.close_rounded,
                                  color: AppColors.black,
                                  size: 18,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      addVerticalSpacing(0.08),
                      ListView.builder(
                        itemCount: 2,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.all(0),
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return shimmerWidget(
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 15),
                              height: 200,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: AppColors.white.withOpacity(0.5),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  );
                },
              ),
            ),
          )),
    );
  }

  Widget _card(
      String price, String crossPrice, String plan, String id, String name) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 0.025.sh),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.white.withOpacity(0.5),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.02.sw, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 0.1.sh,
                  height: 0.2.sw,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Image.asset(
                      AppAssets.king,
                      height: 0.07.sh,
                    ),
                  ),
                ),
                addHorizontalSpacing(0.015),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$name\nMembership",
                      style: AppStyle.mediumBold.copyWith(
                        height: 0,
                        fontSize: 20.sp,
                        letterSpacing: 0.8,
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                      ),
                    ),
                    addVerticalSpacing(0.004),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(255, 252, 96, 91),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 0.03.sw, vertical: 2),
                        child: Text(
                          plan,
                          style: AppStyle.mediumBold.copyWith(
                            height: 0,
                            fontSize: 14.sp,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.bold,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            addVerticalSpacing(0.008),
            Divider(
              color: AppColors.white.withOpacity(0.9),
            ),
            addVerticalSpacing(0.008),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.04.sw),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "₹$crossPrice",
                        style: AppStyle.mediumBold.copyWith(
                          height: 0,
                          decoration: TextDecoration.lineThrough,
                          fontSize: 25.sp,
                          // fontFamily: "Lobster",
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                          color: AppColors.white,
                        ),
                      ),
                      Text(
                        "₹$price",
                        style: AppStyle.mediumBold.copyWith(
                          height: 0,
                          fontSize: 32.sp,
                          // fontFamily: "Lobster",
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 0.3.sw,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(68),
                      gradient: const LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          Color.fromARGB(255, 252, 96, 91),
                          AppColors.primaryRedColor,
                        ], // Change colors as per your choice
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        BlocProvider.of<MembershipBloc>(context)
                            .add(PurchaseMembershipRequest(id));
                      },
                      child: Center(
                        child: Text(
                          "BUY NOW",
                          style: AppStyle.normalBold.copyWith(
                            color: AppColors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            addVerticalSpacing(0.0065),
            Center(
              child: Text(
                "*Applicable Taxes May Apply",
                style: AppStyle.normalBold.copyWith(
                  color: Colors.black.withOpacity(0.8),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AnimatedTextWidget extends StatefulWidget {
  const AnimatedTextWidget({super.key});

  @override
  _AnimatedTextWidgetState createState() => _AnimatedTextWidgetState();
}

class _AnimatedTextWidgetState extends State<AnimatedTextWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2), // Adjust the duration as needed
    )..repeat(
        reverse: true); // Makes the animation reverse after reaching its end

    _colorAnimation = ColorTween(
      begin: const Color.fromARGB(254, 247, 135, 83),
      end: Colors.red, // You can specify multiple colors if needed
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.white, // Background color
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Text(
                    "INAUGURAL DISCOUNT",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      color: _colorAnimation.value,
                    ),
                  );
                },
              ),
              addHorizontalSpacing(0.008),
              Image.asset(
                AppAssets.dis,
                width: 20,
                color: Colors.red,
              )
            ],
          ),
        ),
      ),
    );
  }
}
