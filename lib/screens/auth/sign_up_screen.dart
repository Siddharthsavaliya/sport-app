import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:sport_app/bloc/auth/sign_up_bloc/sign_up_bloc.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_strings.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/screens/auth/verify_screen.dart';
import 'package:sport_app/utils/helper.dart';
import 'package:sport_app/utils/status_dialog.dart';
import 'package:sport_app/widget/app_button.dart';
import 'package:sport_app/widget/app_text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController username = TextEditingController();
  TextEditingController dob = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController institutionName = TextEditingController();
  TextEditingController institutionId = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool isUserNameError = false;
  bool isInstitutionIdError = false;
  bool isInstitutionNameError = false;
  bool isPhoneError = false;
  bool isDobError = false;
  bool isPasswordError = false;
  bool isConfirmPassError = false;

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            // Customize colors here
            primaryColor: AppColors.primaryColor, // Header background color
            colorScheme: const ColorScheme.light(
                primary: AppColors.primaryColor), // Selected day color
            dialogBackgroundColor: Colors.white, // Dialog background color
            // textTheme: const TextTheme(
            //   bodyLarge: TextStyle(color: Colors.black), // Text color
            //   bodySmall: TextStyle(color: Colors.black), // Date text color
            // ),
          ),
          child: child ?? Container(),
        );
      },
    );
    if (picked != DateTime.now()) {
      setState(() {
        dob.text = DateFormat('dd/MM/yyyy').format(picked ?? DateTime.now());
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                AppAssets.l4,
              ),
              fit: BoxFit.fill)),
      height: 1.sh,
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            height: 1.sh,
            color: const Color.fromARGB(255, 229, 231, 233).withOpacity(0.95),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.06.sw),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      addVerticalSpacing(0.12),
                      Center(
                        child: Text(
                          AppStrings.createNewAccount,
                          style: AppStyle.normalText.copyWith(
                            color: AppColors.black,
                            fontSize: 30.sp,
                          ),
                        ),
                      ),
                      Text(
                        AppStrings.signUpContinue,
                        style: AppStyle.normalText.copyWith(
                          color: AppColors.black.withOpacity(0.8),
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w300,
                          fontSize: 15.sp,
                        ),
                      ),
                      addVerticalSpacing(0.06),
                      Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: AppColors.white.withOpacity(0.7),
                        ),
                        child: AppTextfield(
                          controller: username,
                          error: isUserNameError,
                          validator: (v) {
                            if (v!.isEmpty || v == "") {
                              isUserNameError = true;
                            } else {
                              isUserNameError = false;
                            }
                            setState(() {});
                            return null;
                          },
                          height: 55,
                          prefixIcon: Icons.person_outline_outlined,
                          isRound: true,
                          hint: AppStrings.userNameHint,
                        ),
                      ),
                      addVerticalSpacing(0.03),
                      Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: AppColors.white.withOpacity(0.7),
                        ),
                        child: AppTextfield(
                          keyboardType: TextInputType.number,
                          controller: phoneNumber,
                          error: isPhoneError,
                          validator: (v) {
                            if (v!.isEmpty || v == "" || v.length < 10) {
                              isPhoneError = true;
                            } else {
                              isPhoneError = false;
                            }
                            setState(() {});
                            return null;
                          },
                          height: 55,
                          prefixIcon: Icons.phone_android_rounded,
                          isRound: true,
                          hint: AppStrings.phoneNumber,
                        ),
                      ),
                      addVerticalSpacing(0.03),
                      Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: AppColors.white.withOpacity(0.7),
                        ),
                        child: AppTextfield(
                          onTap: () {
                            selectDate(context);
                          },
                          readOnly: true,
                          error: isDobError,
                          validator: (v) {
                            if (v!.isEmpty || v == "") {
                              isDobError = true;
                            } else {
                              isDobError = false;
                            }
                            setState(() {});
                            return null;
                          },
                          controller: dob,
                          height: 55,
                          prefixIcon: Icons.calendar_month_outlined,
                          isRound: true,
                          hint: AppStrings.dateOfBirthHint,
                        ),
                      ),
                      addVerticalSpacing(0.03),
                      Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: AppColors.white.withOpacity(0.7),
                        ),
                        child: AppTextfield(
                          controller: institutionName,
                          error: isInstitutionNameError,
                          validator: (v) {
                            if (v!.isEmpty || v == "") {
                              isInstitutionNameError = true;
                            } else {
                              isInstitutionNameError = false;
                            }
                            setState(() {});
                            return null;
                          },
                          height: 55,
                          prefixIcon: Icons.person_outline_outlined,
                          isRound: true,
                          hint: AppStrings.institutionNameHint,
                        ),
                      ),
                      addVerticalSpacing(0.03),
                      Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: AppColors.white.withOpacity(0.7),
                        ),
                        child: AppTextfield(
                          controller: institutionId,
                          error: isInstitutionIdError,
                          validator: (v) {
                            if (v!.isEmpty || v == "") {
                              isInstitutionIdError = true;
                            } else {
                              isInstitutionIdError = false;
                            }
                            setState(() {});
                            return null;
                          },
                          height: 55,
                          prefixIcon: Icons.person_outline_outlined,
                          isRound: true,
                          hint: AppStrings.institutionODHint,
                        ),
                      ),
                      addVerticalSpacing(0.03),
                      Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: AppColors.white.withOpacity(0.7),
                        ),
                        child: AppTextfield(
                          controller: password,
                          isPassword: true,
                          height: 55,
                          error: isPasswordError,
                          validator: (v) {
                            if (v!.isEmpty || v == "") {
                              isPasswordError = true;
                            } else {
                              isPasswordError = false;
                            }
                            setState(() {});
                            return null;
                          },
                          prefixIcon: Icons.lock_outline_rounded,
                          isRound: true,
                          hint: AppStrings.password,
                        ),
                      ),
                      addVerticalSpacing(0.03),
                      Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: AppColors.white.withOpacity(0.7),
                        ),
                        child: AppTextfield(
                          controller: confirmPassword,
                          isPassword: true,
                          height: 55,
                          error: isConfirmPassError,
                          validator: (v) {
                            if (v!.isEmpty || v == "" || v != password.text) {
                              isConfirmPassError = true;
                            } else {
                              isConfirmPassError = false;
                            }
                            setState(() {});
                            return null;
                          },
                          prefixIcon: Icons.lock_outline_rounded,
                          isRound: true,
                          hint: AppStrings.confirmPassword,
                        ),
                      ),
                      addVerticalSpacing(0.03),
                      BlocListener<SignUpBloc, SignUpState>(
                        listener: (context, state) {
                          if (state.initial) {
                            if (state.status.isInProgress) {
                              showProgressDialogue(context);
                            } else if (state.status.isLoaded) {
                              Navigator.pop(context);
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                    builder: (context) => VerifyScreen(
                                        phoneNumber: phoneNumber.text),
                                  ));
                            } else if (state.status.isFailed) {
                              Navigator.pop(context);
                              showScafoldMessage(
                                  context: context, message: state.message);
                            }
                          }
                        },
                        child: SizedBox(
                          width: 0.6.sw,
                          child: AppButton(
                            radius: 15,
                            textSize: 17.sp,
                            removeOpacity: true,
                            text: AppStrings.signUp,
                            onTap: () {
                              if (_formKey.currentState!.validate() &&
                                  (!isConfirmPassError &&
                                      !isDobError &&
                                      !isPasswordError &&
                                      !isUserNameError &&
                                      !isInstitutionIdError &&
                                      !isInstitutionNameError &&
                                      !isPhoneError)) {
                                BlocProvider.of<SignUpBloc>(context).add(
                                    SignUpEventRequest(
                                        iName: institutionName.text,
                                        institutionId: institutionId.text,
                                        password: password.text,
                                        phone: phoneNumber.text,
                                        userName: username.text,
                                        dob: dob.text));
                              }
                            },
                          ),
                        ),
                      ),
                      addVerticalSpacing(0.025),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AppStrings.alreadyRegister,
                            style: AppStyle.normalText.copyWith(
                                color: AppColors.black.withOpacity(0.7),
                                fontSize: 14.sp,
                                letterSpacing: 0.8),
                          ),
                          addHorizontalSpacing(0.005),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              AppStrings.signInHere,
                              style: AppStyle.normalText.copyWith(
                                  color: AppColors.orange.withOpacity(0.7),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.8),
                            ),
                          ),
                        ],
                      ),
                      addVerticalSpacing(0.025),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
