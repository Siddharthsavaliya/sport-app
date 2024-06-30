// ignore_for_file: use_build_context_synchronously

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:sport_app/bloc/auth/forget_password_bloc/forget_pass_bloc.dart';
import 'package:sport_app/bloc/auth/sign_up_bloc/sign_up_bloc.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_strings.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/screens/app_bottom_bar.dart';
import 'package:sport_app/screens/location_screens/location_access_screen.dart';
import 'package:sport_app/utils/helper.dart';
import 'package:sport_app/utils/status_dialog.dart';
import 'package:sport_app/widget/app_button.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen(
      {super.key,
      this.isForget = false,
      required this.phoneNumber,
      this.password});
  final bool isForget;
  final String phoneNumber;
  final String? password;
  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  TextEditingController otp = TextEditingController();
  final StopWatchTimer _stopWatchTimer = StopWatchTimer(
    mode: StopWatchMode.countDown,
  ); // C
  final value = StopWatchTimer.getRawSecond(60 * 60);
  bool isStop = false;
  @override
  void initState() {
    _stopWatchTimer.setPresetSecondTime(30);
    _stopWatchTimer.onStartTimer();
    Future.delayed(const Duration(seconds: 1), () {
      _stopWatchTimer.secondTime.listen((value) {
        if (value == 0) {
          isStop = true;
          setState(() {});
        }
      });
    });
    super.initState();
  }

  @override
  @override
  void dispose() async {
    super.dispose();
    await _stopWatchTimer.dispose(); // Need to call dispose function.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: AppColors.black,
        backgroundColor: AppColors.lightGrey,
        elevation: 0,
        automaticallyImplyLeading: true,
        bottom: PreferredSize(
            preferredSize: Size(double.infinity, 0.12.sh),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.045.sw, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.verifyOtp,
                    style: AppStyle.mediumBold.copyWith(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          addVerticalSpacing(0.03),
          Center(
            child: Text(
              AppStrings.otpCodeHas,
              style: AppStyle.mediumBold.copyWith(
                  color: AppColors.black.withOpacity(0.8),
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.8),
            ),
          ),
          addVerticalSpacing(0.01),
          Center(
            child: Text(
              "+91${widget.phoneNumber}",
              style: AppStyle.mediumBold.copyWith(
                  color: AppColors.black.withOpacity(0.8),
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.8),
            ),
          ),
          addVerticalSpacing(0.025),
          Center(
            child: Text(
              AppStrings.enterOtp,
              style: AppStyle.mediumBold.copyWith(
                  color: AppColors.black.withOpacity(0.9),
                  fontSize: 19.sp,
                  letterSpacing: 1),
            ),
          ),
          addVerticalSpacing(0.04),
          OTPTextField(
            length: 4,
            width: MediaQuery.of(context).size.width,
            fieldWidth: 0.09.sw,
            otpFieldStyle: OtpFieldStyle(
              borderColor: AppColors.black,
              disabledBorderColor: AppColors.black,
              enabledBorderColor: AppColors.black,
              focusBorderColor: AppColors.black,
              errorBorderColor: AppColors.black,
            ),
            style: TextStyle(fontSize: 17.sp),
            textFieldAlignment: MainAxisAlignment.center,
            fieldStyle: FieldStyle.underline,
            contentPadding: const EdgeInsets.all(0),
            spaceBetween: 0.06.sw,
            onChanged: (value) {
              otp.text = value;
              print(otp.text);
              setState(() {});
            },
            onCompleted: (pin) {
              otp.text = pin;
              setState(() {});
            },
          ),
          addVerticalSpacing(0.055),
          SizedBox(
            width: 0.78.sw,
            child: MultiBlocListener(
              listeners: [
                BlocListener<SignUpBloc, SignUpState>(
                  listener: (context, state) async {
                    if (state.isVerifyOto) {
                      if (state.status.isInProgress) {
                        showProgressDialogue(context);
                      } else if (state.status.isLoaded) {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => const AppBottomBar(),
                            ));
                      } else if (state.status.isFailed) {
                        Navigator.pop(context);
                        showScafoldMessage(
                            context: context, message: state.message);
                      }
                    }
                  },
                ),
                BlocListener<ForgetPasswordBloc, ForgetPasswordState>(
                  listener: (context, state) {
                    if (state.isVerifyOto) {
                      if (state.status.isInProgress) {
                        showProgressDialogue(context);
                      } else if (state.status.isLoaded) {
                        Navigator.pop(context);
                        Navigator.pop(context);
                        Navigator.pop(context);
                        showScafoldMessage(
                            message: "Password changed successfully",
                            context: context);
                      } else if (state.status.isFailed) {
                        Navigator.pop(context);
                        showScafoldMessage(
                            context: context, message: state.message);
                      }
                    }
                  },
                ),
              ],
              child: AppButton(
                radius: 15,
                textSize: 17.sp,
                removeOpacity: true,
                text: AppStrings.verify,
                onTap: () {
                  if (otp.text.length == 4) {
                    if (widget.isForget) {
                      BlocProvider.of<ForgetPasswordBloc>(context).add(
                          VerifyOtpRequest(
                              phone: widget.phoneNumber,
                              otp: otp.text,
                              newPassword: widget.password!));
                    } else {
                      BlocProvider.of<SignUpBloc>(context).add(
                          SignUpEventVerifyRequest(
                              phone: widget.phoneNumber, otp: otp.text));
                    }
                  } else {
                    showScafoldMessage(
                        message: "Please Enter Valid OTP!", context: context);
                  }
                },
              ),
            ),
          ),
          addVerticalSpacing(0.02),
          BlocListener<SignUpBloc, SignUpState>(
              listener: (context, state) {
                if (state.resendOtp) {
                  if (state.status.isInProgress) {
                    showProgressDialogue(context);
                  } else if (state.status.isLoaded) {
                    Navigator.pop(context);
                    showScafoldMessage(
                        context: context, message: "Otp sent successfully");
                  } else if (state.status.isFailed) {
                    Navigator.pop(context);
                    showScafoldMessage(
                        context: context, message: state.message);
                  }
                }
              },
              child: Wrap(
                children: [
                  Text(
                    AppStrings.didNotGetOtp,
                    style: AppStyle.mediumBold.copyWith(
                      color: AppColors.black.withOpacity(0.6),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.8,
                    ),
                  ),
                  if (isStop)
                    GestureDetector(
                      onTap: () {
                        closeKeyboard(context);
                        otp.clear();
                        isStop = false;
                        setState(() {});
                        _stopWatchTimer.setPresetSecondTime(30);
                        _stopWatchTimer.onStartTimer();
                        BlocProvider.of<SignUpBloc>(context)
                            .add(ResendOtpRequest(phone: widget.phoneNumber));
                      },
                      child: Text(
                        "Resend",
                        style: AppStyle.mediumBold.copyWith(
                          color: AppColors.orange.withOpacity(0.7),
                          fontSize: 14.sp,
                          letterSpacing: 0.8,
                        ),
                      ),
                    )
                  else
                    StreamBuilder<int>(
                      stream: _stopWatchTimer.secondTime,
                      initialData: _stopWatchTimer.secondTime.value,
                      builder: (context, snap) {
                        final value = snap.data;
                        return Text(
                          "in 00:$value Seconds",
                          style: AppStyle.mediumBold.copyWith(
                            color: AppColors.black.withOpacity(0.6),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.8,
                          ),
                        );
                      },
                    ),
                ],
              ))
        ],
      ),
    );
  }
}
