import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:sport_app/bloc/user_bloc/user_bloc.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/model/user_model/user_model.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_strings.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/utils/helper.dart';
import 'package:sport_app/utils/status_dialog.dart';
import 'package:sport_app/widget/app_button.dart';
import 'package:sport_app/widget/app_text_field.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({
    super.key,
  });
  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController username = TextEditingController();
  TextEditingController dob = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController institutionName = TextEditingController();
  TextEditingController institutionId = TextEditingController();
  TextEditingController email = TextEditingController();

  bool isUserNameError = false;
  bool isInstitutionIdError = false;
  bool isInstitutionNameError = false;
  bool isPhoneError = false;
  bool isDobError = false;
  bool isEmailError = false;

  final _key = GlobalKey<FormState>();
  bool isPhoneActive = false;

  File? _image;

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }
    });
  }

  setData(UserModel userModel) {
    institutionName.text = userModel.institutionName ?? "";
    phoneNumber.text = userModel.phoneNumber ?? "";
    institutionId.text = userModel.institutionId ?? "";
    username.text = userModel.userName ?? "";
    dob.text = userModel.dob ?? "";
    email.text = userModel.email ?? "";
    setState(() {});
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
            primaryColor: AppColors.primaryColor,
            colorScheme:
                const ColorScheme.light(primary: AppColors.primaryColor),
            dialogBackgroundColor: Colors.white,
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
  void initState() {
    BlocProvider.of<UserBloc>(context).add(GetUserEventRequest());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        foregroundColor: AppColors.white,
        title: Text(
          "Edit Profile",
          style: AppStyle.mediumText.copyWith(
              fontSize: 24.sp, color: AppColors.white, letterSpacing: 0.5),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.045.sw),
        child: Form(
          key: _key,
          child: SingleChildScrollView(
            child: BlocConsumer<UserBloc, UserState>(
              listener: (context, state) {
                if (state.isUpdate) {
                  if (state.status.isFailed) {
                    Navigator.pop(context);
                    showErrorDialogue(context, state.message);
                  }
                  if (state.status.isInProgress) {
                    showProgressDialogue(context);
                  }
                }
                if (state.status.isLoaded) {
                  if (state.isUpdate) {
                    Navigator.pop(context);
                  }
                  setData(state.userModel!);
                }
              },
              builder: (context, state) {
                if (state.status.isLoaded || state.isUpdate) {
                  return Column(
                    children: [
                      const SizedBox(height: 20),
                      GestureDetector(
                        onTap: _pickImage,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: _image != null
                              ? FileImage(_image!)
                              : state.userModel!.dpUrl != null
                                  ? NetworkImage(state.userModel!.dpUrl!)
                                      as ImageProvider
                                  : const AssetImage(AppAssets.dp),
                        ),
                      ),
                      const SizedBox(height: 20),
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
                          controller: email,
                          error: isEmailError,
                          validator: (v) {
                            if (v!.isEmpty ||
                                !RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(v)) {
                              isEmailError = true;
                            } else {
                              isEmailError = false;
                            }
                            setState(() {});
                            return null;
                          },
                          height: 55,
                          prefixIcon: Icons.email_outlined,
                          isRound: true,
                          hint: "Email",
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
                          readOnly: true,
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
                          readOnly: true,
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
                          readOnly: true,
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
                      SizedBox(
                        width: 0.45.sw,
                        child: AppButton(
                          removeOpacity: true,
                          onTap: () {
                            if (_key.currentState!.validate()) {
                              if (!isDobError &&
                                  !isUserNameError &&
                                  !isInstitutionIdError &&
                                  !isEmailError &&
                                  !isPhoneError) {
                                BlocProvider.of<UserBloc>(context)
                                    .add(UpdateUserEventRequest(UserModel(
                                  path: _image != null ? _image!.path : null,
                                  dob: dob.text,
                                  institutionId: institutionId.text,
                                  institutionName: institutionName.text,
                                  phoneNumber: phoneNumber.text,
                                  userName: username.text,
                                  email: email.text,
                                )));
                              }
                            }
                          },
                          text: "Save",
                        ),
                      ),
                      addVerticalSpacing(0.022),
                    ],
                  );
                }
                return SizedBox(
                  height: 0.8.sh,
                  child: const Center(
                    child: CircularProgressIndicator(
                      color: AppColors.primaryColor,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
