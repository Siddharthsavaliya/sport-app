import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/bloc/auth/forget_password_bloc/forget_pass_bloc.dart';
import 'package:sport_app/bloc/auth/login_bloc/login_bloc.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_strings.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/screens/auth/verify_screen.dart';
import 'package:sport_app/utils/helper.dart';
import 'package:sport_app/utils/status_dialog.dart';
import 'package:sport_app/utils/validator.dart';
import 'package:sport_app/widget/app_button.dart';
import 'package:sport_app/widget/app_text_field.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  TextEditingController oldPass = TextEditingController();
  TextEditingController pass = TextEditingController();
  final _formKey = GlobalKey<FormState>();
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
                    AppStrings.changesPass,
                    style: AppStyle.mediumBold.copyWith(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            )),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.04.sw),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              addVerticalSpacing(0.03),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  AppStrings.oldPassword,
                  style: AppStyle.mediumBold.copyWith(
                    color: AppColors.black.withOpacity(0.9),
                    fontSize: 19.sp,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    
                  ),
                ),
              ),
              addVerticalSpacing(0.005),
              AppTextfield(
                hint: AppStrings.oldPassword,
                validator: requiredValidator.call,
                radius: 4,
                controller: oldPass,
                isRound: true,
                isPassword: true,
              ),
              addVerticalSpacing(0.018),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  AppStrings.newPassword,
                  style: AppStyle.mediumBold.copyWith(
                    color: AppColors.black.withOpacity(0.9),
                    fontSize: 19.sp,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                ),
              ),
              addVerticalSpacing(0.005),
              AppTextfield(
                hint: AppStrings.newPassword,
                validator: requiredValidator.call,
                radius: 4,
                controller: pass,
                isRound: true,
                isPassword: true,
              ),
              addVerticalSpacing(0.055),
              BlocConsumer<LoginBloc, LoginState>(
                listener: (context, state) {
                  if (state.initial) {
                    if (state.status.isInProgress) {
                      showProgressDialogue(context);
                    } else if (state.status.isLoaded) {
                      Navigator.pop(context);
                      Navigator.pop(context);
                      showScafoldMessage(
                          message: "Password change successfully",
                          context: context);
                    } else if (state.status.isFailed) {
                      Navigator.pop(context);
                      showScafoldMessage(
                          context: context, message: state.message);
                    }
                  }
                },
                builder: (context, state) {
                  return SizedBox(
                    width: 0.78.sw,
                    child: AppButton(
                      radius: 15,
                      textSize: 17.sp,
                      removeOpacity: true,
                      text: AppStrings.submit,
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          BlocProvider.of<LoginBloc>(context).add(
                              ChangePasswordEventRequest(
                                  newPassword: pass.text,
                                  oldPassword: oldPass.text));
                        }
                      },
                    ),
                  );
                },
              ),
              addVerticalSpacing(0.02),
            ],
          ),
        ),
      ),
    );
  }
}
