// ignore_for_file: use_build_context_synchronously

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/bloc/user_bloc/user_bloc.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_strings.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/res/constant_data.dart';
import 'package:sport_app/screens/booking/my_bookings_screen.dart';
import 'package:sport_app/screens/coaches/coach_booking_history.dart';
import 'package:sport_app/screens/on_boarding/splash_screen.dart';
import 'package:sport_app/screens/profile/change_password_screen.dart';
import 'package:sport_app/screens/profile/edit_profile_screen.dart';
import 'package:sport_app/screens/profile/faq_screen.dart';
import 'package:sport_app/screens/profile/help_support.dart';
import 'package:sport_app/screens/profile/htmls_view.dart';
import 'package:sport_app/screens/profile/payment_history.dart';
import 'package:sport_app/screens/profile/wishlist_screen.dart';
import 'package:sport_app/utils/helper.dart';
import 'package:sport_app/utils/status_dialog.dart';
import 'package:sport_app/widget/app_button.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> data = [
      {
        "icon": Icons.person,
        "title": AppStrings.personalInfo,
        "subtitle": AppStrings.personalInfoSub,
        "onTap": () {
          Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const EditProfile(),
              ));
        }
      },
      {
        "icon": Icons.bookmark_border_outlined,
        "title": AppStrings.myFavorites,
        "subtitle": null,
        "onTap": () {
          Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const BookmarkScreen(),
              ));
        }
      },
      {
        "icon": Icons.book_outlined,
        "title": AppStrings.booking,
        "subtitle": AppStrings.bookingSub,
        "onTap": () {
          Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const MyBookingsScreen(),
              ));
        }
      },
      {
        "icon": Icons.book_outlined,
        "title": AppStrings.coachBooking,
        "subtitle": null,
        "onTap": () {
          Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const MyCoachBookingsScreen(),
              ));
        }
      },
      {
        "icon": Icons.history,
        "title": "Membership History",
        "subtitle": "View your membership history",
        "onTap": () {
          Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const PaymentHistory(),
              ));
        }
      },
      {
        "icon": Icons.lock,
        "title": AppStrings.security,
        "subtitle": AppStrings.securitySub,
        "onTap": () {
          Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const ChangePasswordScreen(),
              ));
        }
      },
      {
        "icon": Icons.question_answer,
        "title": AppStrings.faq,
        "subtitle": null,
        "onTap": () {
          Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const FaqScreen(),
              ));
        }
      },
      {
        "icon": Icons.support_agent,
        "title": AppStrings.help,
        "subtitle": null,
        "onTap": () {
          Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const HelpScreen(),
              ));
        }
      },
      {
        "icon": Icons.pages,
        "title": AppStrings.termsAndConditions,
        "subtitle": null,
        "onTap": () {
          Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const HtmlViewScreen(
                    data: terms, title: AppStrings.termsAndConditions),
              ));
        }
      },
      {
        "icon": Icons.pages,
        "title": AppStrings.privacyPolicy,
        "subtitle": null,
        "onTap": () {
          Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => HtmlViewScreen(
                    data: privacyPolicy, title: AppStrings.privacyPolicy),
              ));
        }
      },
    ];

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.045.sw),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                addVerticalSpacing(0.05),
                BlocBuilder<UserBloc, UserState>(
                  builder: (context, state) {
                    return Center(
                      child: ClipOval(
                        child: CircleAvatar(
                          radius: 70,
                          backgroundImage: state.userModel == null
                              ? const AssetImage(AppAssets.dp)
                              : state.userModel!.dpUrl != null
                                  ? NetworkImage(state.userModel!.dpUrl!)
                                      as ImageProvider
                                  : const AssetImage(AppAssets.dp),
                        ),
                      ),
                    );
                  },
                ),
                addVerticalSpacing(0.05),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: data.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: data[index]["onTap"],
                      child: Container(
                        constraints: const BoxConstraints(minHeight: 54),
                        width: double.infinity,
                        margin: EdgeInsets.only(bottom: 0.024.sh),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.grey.withOpacity(0.3), // Shadow color
                              blurRadius: 5.0, // Spread of the shadow
                              spreadRadius: 0.0, // How far the shadow extends
                              offset: const Offset(
                                  0, 0), // Offset in (x,y) direction
                            ),
                          ],
                          color: AppColors.lightWhite,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 0.03.sw, vertical: 6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                data[index]["icon"],
                                color: AppColors.black,
                              ),
                              const VerticalDivider(
                                color: AppColors.gray,
                                thickness: 1,
                                indent: 10,
                                endIndent: 10,
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          data[index]["title"],
                                          style: AppStyle.normalText.copyWith(
                                              color: AppColors.black,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 0.8),
                                        ),
                                        if (data[index]["subtitle"] !=
                                            null) ...[
                                          addVerticalSpacing(0.004),
                                          Text(
                                            data[index]["subtitle"],
                                            style: AppStyle.normalText.copyWith(
                                                color: AppColors.black
                                                    .withOpacity(0.7),
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w200,
                                                letterSpacing: 0.8),
                                          ),
                                        ]
                                      ],
                                    ),
                                    const Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: AppColors.black,
                                      size: 18,
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
                ),
                addVerticalSpacing(0.01),
                SizedBox(
                  width: double.infinity,
                  child: AppButton(
                    isBorder: true,
                    text: "Logout",
                    onTap: () {
                      showYesNoDialogue(
                        context,
                        onTap: () async {
                          await deleteAll();
                          Navigator.pushAndRemoveUntil(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => const SplashScreen(),
                            ),
                            (route) => false,
                          );
                        },
                        title: "Alert",
                        subTitle: "Are you sure you want to logout ?",
                      );
                    },
                  ),
                ),
                addVerticalSpacing(0.02),
                BlocListener<UserBloc, UserState>(
                  listener: (context, state) async {
                    if (state.status.isLoaded) {
                      await deleteAll();
                      Navigator.pushAndRemoveUntil(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const SplashScreen(),
                        ),
                        (route) => false,
                      );
                    }
                    if (state.status.isFailed) {
                      Navigator.pop(context);
                      showErrorDialogue(context, state.message);
                    }
                    if (state.status.isInProgress) {
                      showProgressDialogue(context);
                    }
                  },
                  child: SizedBox(
                    width: double.infinity,
                    child: AppButton(
                      isBorder: true,
                      text: "Delete Account",
                      onTap: () {
                        showYesNoDialogue(
                          context,
                          onTap: () async {
                            BlocProvider.of<UserBloc>(context)
                                .add(DeleteAccount());
                          },
                          title: "Alert",
                          subTitle: "Are you sure you want to delete account ?",
                        );
                      },
                    ),
                  ),
                ),
                addVerticalSpacing(0.025)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
