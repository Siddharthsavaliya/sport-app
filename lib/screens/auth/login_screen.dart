// ignore_for_file: use_build_context_synchronously

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/bloc/auth/login_bloc/login_bloc.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_strings.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/screens/app_bottom_bar.dart';
import 'package:sport_app/screens/auth/forget_password.dart';
import 'package:sport_app/screens/auth/sign_up_screen.dart';
import 'package:sport_app/screens/auth/verify_screen.dart';
import 'package:sport_app/utils/helper.dart';
import 'package:sport_app/utils/status_dialog.dart';
import 'package:sport_app/utils/validator.dart';
import 'package:sport_app/widget/app_button.dart';
import 'package:sport_app/widget/app_text_field.dart';

import '../../coach_dashboard/coach_dashboard.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController password = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  List<String> images = [
    AppAssets.l3,
    AppAssets.l4,
    AppAssets.l5,
  ];
  int currentIndex = 0;

  late Timer timer;
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 2), (Timer timer) {
      setState(() {
        if (currentIndex < images.length - 1) {
          currentIndex++;
        } else {
          currentIndex = 0;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: 1.sh,
        child: Stack(
          children: [
            AnimatedSwitcher(
              duration: const Duration(seconds: 1),
              child: FadeTransition(
                opacity: const AlwaysStoppedAnimation(1),
                key: ValueKey<String>(images[currentIndex]),
                child: Image.asset(
                  images[currentIndex],
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                ),
              ),
            ),
            Container(
              height: 1.sh,
              width: double.infinity,
              color: AppColors.black.withOpacity(0.7),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.05.sw),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.welcomeBack,
                        style: AppStyle.normalText.copyWith(
                          color: AppColors.white.withOpacity(0.7),
                          fontSize: 32.sp,
                        ),
                      ),
                      Text(
                        AppStrings.welcomeBackSubTex,
                        style: AppStyle.normalText.copyWith(
                          color: AppColors.white.withOpacity(0.7),
                          fontSize: 13.sp,
                        ),
                      ),
                      addVerticalSpacing(0.04),
                      AppTextfield(
                        keyboardType: TextInputType.number,
                        validator: phoneNumberValidator.call,
                        controller: phoneNumber,
                        maxLength: 10,
                        isRound: false,
                        hint: AppStrings.phoneNumber,
                      ),
                      addVerticalSpacing(0.02),
                      AppTextfield(
                        isPassword: true,
                        controller: password,
                        validator: requiredValidator.call,
                        isRound: false,
                        hint: AppStrings.password,
                      ),
                      addVerticalSpacing(0.03),
                      Center(
                        child: SizedBox(
                          width: 0.5.sw,
                          child: BlocConsumer<LoginBloc, LoginState>(
                            listener: (context, state) async {
                              if (state.initial) {
                                if (state.status.isInProgress) {
                                  showProgressDialogue(context);
                                } else if (state.status.isLoaded) {
                                  String? role =
                                      await getKeyValue(key: 'coach');
                                  Navigator.pop(context);
                                  Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                        builder: (context) => role == "coach"
                                            ? const DashboardScreen()
                                            : !state.isOtp
                                                ? VerifyScreen(
                                                    phoneNumber:
                                                        phoneNumber.text)
                                                : const AppBottomBar(),
                                      ));
                                } else if (state.status.isFailed) {
                                  Navigator.pop(context);
                                  showScafoldMessage(
                                      context: context, message: state.message);
                                }
                              }
                            },
                            builder: (context, state) {
                              return AppButton(
                                onTap: () {
                                  if (_formKey.currentState!.validate()) {
                                    BlocProvider.of<LoginBloc>(context).add(
                                        LoginEventRequest(
                                            password: password.text,
                                            phone: phoneNumber.text));
                                  }
                                },
                                text: AppStrings.login,
                              );
                            },
                          ),
                        ),
                      ),
                      addVerticalSpacing(0.02),
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) =>
                                      const ForgetPasswordScreen(),
                                ));
                          },
                          child: Text(
                            AppStrings.forgetPassword,
                            style: AppStyle.normalText.copyWith(
                              color: AppColors.white.withOpacity(0.7),
                              fontSize: 14.sp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0.027.sh,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.doNotHaveAccount,
                    style: AppStyle.normalText.copyWith(
                        color: AppColors.white.withOpacity(0.7),
                        fontSize: 14.sp,
                        letterSpacing: 0.8),
                  ),
                  addHorizontalSpacing(0.005),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => const SignUpScreen(),
                          ));
                    },
                    child: Text(
                      AppStrings.signUp,
                      style: AppStyle.normalText.copyWith(
                          color: AppColors.white.withOpacity(0.7),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.8),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
