import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:nb_utils/nb_utils.dart' as nb;
import 'package:sport_app/bloc/auth/sign_up_bloc/sign_up_bloc.dart';
import 'package:sport_app/model/institution_model/institution_model.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_strings.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/screens/auth/verify_screen.dart';
import 'package:sport_app/screens/booking/book_ground_screen.dart';
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
  TextEditingController email = TextEditingController();
  TextEditingController institutionName = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController institutionId = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  Institution? _selectedInstitution;

  bool isUserNameError = false;
  bool isInstitutionIdError = false;
  bool isInstitutionNameError = false;
  bool isPhoneError = false;
  bool isCityError = false;
  bool isStateError = false;
  bool c3 = false;
  bool isEmailError = false;
  bool isPasswordError = false;
  bool isConfirmPassError = false;

  @override
  void initState() {
    BlocProvider.of<SignUpBloc>(context).add(GetInstitutionIds());
    super.initState();
  }

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: AppColors.primaryColor, // Header background color
            colorScheme: const ColorScheme.light(
              primary: AppColors.primaryColor, // Selected day color
              onPrimary: Colors.white, // Text color for selected day
              onSurface: Colors.black, // Text color for other days
            ),
            dialogBackgroundColor: Colors.white, // Dialog background color
            textTheme: const TextTheme(
              bodyLarge: TextStyle(color: Colors.black), // Text color
              bodySmall: TextStyle(color: Colors.black), // Date text color
              labelLarge:
                  TextStyle(color: Colors.black), // Year selector text color
            ),
          ),
          child: child ?? Container(),
        );
      },
    );
    if (picked != null && picked != DateTime.now()) {
      setState(() {
        dob.text = DateFormat('dd/MM/yyyy').format(picked);
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
                          keyboardType: TextInputType.emailAddress,
                          controller: email,
                          error: isEmailError,
                          validator: (v) {
                            // Regular expression for email validation
                            Pattern pattern =
                                r'^([a-zA-Z0-9_\.\-])+\@([a-zA-Z0-9\-]+\.)+([a-zA-Z0-9]{2,4})+$';
                            RegExp regex = RegExp(pattern.toString());

                            // Check if the email is empty or doesn't match the pattern
                            if (v!.isEmpty || !regex.hasMatch(v)) {
                              setState(() {
                                isEmailError = true;
                              });
                              return null;
                            } else {
                              setState(() {
                                isEmailError = false;
                              });
                              return null;
                            }
                          },
                          height: 55,
                          prefixIcon: Icons.mail,
                          isRound: true,
                          hint: "Email Address",
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
                          controller: dob,
                          height: 55,
                          prefixIcon: Icons.calendar_month_outlined,
                          isRound: true,
                          hint: AppStrings.dateOfBirthHint,
                        ),
                      ),
                      addVerticalSpacing(0.03),
                      BlocBuilder<SignUpBloc, SignUpState>(
                        builder: (context, state) {
                          if (state.status.isLoaded || state.initial) {
                            InputBorder border = OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(
                                  color: isInstitutionIdError
                                      ? AppColors.red
                                      : AppColors.gray.withOpacity(0.4),
                                  width: 2),
                            );
                            return Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: AppColors.white.withOpacity(0.7),
                              ),
                              child: DropdownButtonFormField<Institution>(
                                validator: (v) {
                                  if (v == null) {
                                    isInstitutionIdError = true;
                                  } else {
                                    isInstitutionIdError = false;
                                  }
                                  setState(() {});
                                  return null;
                                },
                                icon: Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Icon(
                                    Icons.arrow_drop_down_sharp,
                                    color: AppColors.gray.withOpacity(0.8),
                                    size: 25,
                                  ),
                                ),
                                hint: Center(
                                  child: Text(
                                    'Select Institution',
                                    style: AppStyle.normalText.copyWith(
                                      color: AppColors.gray.withOpacity(0.8),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1.5,
                                    ),
                                  ),
                                ),
                                decoration: InputDecoration(
                                  counterText: "",
                                  isDense: true,
                                  contentPadding: const EdgeInsets.only(
                                      top: 15, bottom: 17),
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.only(bottom: 2),
                                    child: Icon(
                                      Icons.person_outline_outlined,
                                      color: AppColors.gray.withOpacity(0.8),
                                      size: 25,
                                    ),
                                  ),
                                  border: border,
                                  focusedBorder: border,
                                  enabledBorder: border,
                                ),
                                value: _selectedInstitution,
                                onChanged: (Institution? newValue) {
                                  setState(() {
                                    _selectedInstitution = newValue;
                                  });
                                },
                                items: state.institutionIds.map((institution) {
                                  return DropdownMenuItem<Institution>(
                                    value: institution,
                                    child: SizedBox(
                                      // color: Colors.amber,
                                      width: context.width() * 0.65,
                                      child: nb.Marquee(
                                        child: Text(
                                          institution.institutionName,
                                          style: AppStyle.mediumBold.copyWith(
                                              color: AppColors.gray,
                                              letterSpacing: 1,
                                              fontSize: 17.sp),
                                        ),
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                            );
                          }
                          return const SizedBox.shrink();
                        },
                      ),
                      if (_selectedInstitution?.institutionName == "Other") ...[
                        addVerticalSpacing(0.03),
                        Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: AppColors.white.withOpacity(0.7),
                          ),
                          child: AppTextfield(
                            controller: institutionName,
                            isSecure: false,
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
                            prefixIcon: Icons.school,
                            isRound: true,
                            hint: "Enter institution name",
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
                            controller: city,
                            isSecure: false,
                            height: 55,
                            error: isCityError,
                            validator: (v) {
                              if (v!.isEmpty || v == "") {
                                isCityError = true;
                              } else {
                                isCityError = false;
                              }
                              setState(() {});
                              return null;
                            },
                            prefixIcon: Icons.location_city,
                            isRound: true,
                            hint: "Enter city name",
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
                            controller: state,
                            isSecure: false,
                            height: 55,
                            error: isStateError,
                            validator: (v) {
                              if (v!.isEmpty || v == "") {
                                isStateError = true;
                              } else {
                                isStateError = false;
                              }
                              setState(() {});
                              return null;
                            },
                            prefixIcon: Icons.location_city,
                            isRound: true,
                            hint: "Enter state name",
                          ),
                        ),
                      ],
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
                                      !isPasswordError &&
                                      !isUserNameError &&
                                      !isEmailError &&
                                      !isPhoneError)) {
                                if (_selectedInstitution!.institutionId ==
                                    "OTHER") {
                                  if (!isInstitutionNameError &&
                                      !isCityError &&
                                      !isStateError) {
                                    BlocProvider.of<SignUpBloc>(context).add(
                                        SignUpEventRequest(
                                            email: email.text,
                                            city: city.text,
                                            state: state.text,
                                            iName: _selectedInstitution!
                                                        .institutionId ==
                                                    "OTHER"
                                                ? institutionName.text
                                                : _selectedInstitution!
                                                    .institutionName
                                                    .validate(),
                                            institutionId: _selectedInstitution!
                                                .institutionId,
                                            password: password.text,
                                            phone: phoneNumber.text,
                                            userName: username.text,
                                            dob: dob.text));
                                  }
                                } else {
                                  BlocProvider.of<SignUpBloc>(context).add(
                                      SignUpEventRequest(
                                          email: email.text,
                                          city: city.text,
                                          state: state.text,
                                          iName: _selectedInstitution!
                                                      .institutionId ==
                                                  "OTHER"
                                              ? institutionName.text
                                              : _selectedInstitution!
                                                  .institutionName
                                                  .validate(),
                                          institutionId: _selectedInstitution!
                                              .institutionId,
                                          password: password.text,
                                          phone: phoneNumber.text,
                                          userName: username.text,
                                          dob: dob.text));
                                }
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

Widget _customCheckBox(
    String title, void Function(bool?)? onChanged, bool value) {
  return Container(
    width: double.infinity,
    clipBehavior: Clip.hardEdge,
    decoration: BoxDecoration(
      border: Border.all(color: AppColors.gray.withOpacity(0.4), width: 2),
      borderRadius: BorderRadius.circular(25),
      color: AppColors.white.withOpacity(0.7),
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.035.sw, vertical: 0.015.sh),
      child: Row(
        children: [
          SizedBox(
              height: 20,
              width: 20,
              child: Checkbox(
                checkColor: AppColors.white,
                activeColor: AppColors.primaryColor,
                value: value,
                onChanged: onChanged,
              )),
          addHorizontalSpacing(0.015),
          Flexible(
            child: Text(
              title,
              style: AppStyle.mediumBold.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.gray,
              ),
            ),
          )
        ],
      ),
    ),
  );
}
