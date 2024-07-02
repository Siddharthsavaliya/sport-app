import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sport_app/bloc/common_bloc/common_bloc.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/utils/helper.dart';
import 'package:sport_app/utils/status_dialog.dart';
import 'package:sport_app/widget/app_text_field.dart';

import '../../widget/app_button.dart' as AppButton;

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  void initState() {
    super.initState();
  }

  TextEditingController textEditingController = TextEditingController();
  String _sectedType = "Query";
  File? file;
  @override
  Widget build(BuildContext context) {
    InputBorder border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(25),
      borderSide: BorderSide(color: AppColors.gray.withOpacity(0.4), width: 2),
    );
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
          elevation: 0,
          foregroundColor: AppColors.white,
          title: Text(
            "Help & Support",
            style: AppStyle.mediumText.copyWith(
                fontSize: 24.sp, color: AppColors.white, letterSpacing: 0.5),
          ),
        ),
        body: BlocListener<CommonBloc, CommonState>(
          listener: (context, state) async {},
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.035.sw),
              child: Column(
                children: [
                  addVerticalSpacing(0.01),
                  Image.asset(AppAssets.help),
                  addVerticalSpacing(0.012),
                  Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: AppColors.white.withOpacity(0.7),
                    ),
                    child: DropdownButtonFormField(
                      validator: (v) {
                        if (v == null) {
                        } else {}
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
                        contentPadding:
                            const EdgeInsets.only(top: 15, bottom: 17),
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
                      value: _sectedType,
                      onChanged: (newValue) {
                        setState(() {
                          _sectedType = newValue!;
                        });
                      },
                      items: ["Complain", "Query"].map((v) {
                        return DropdownMenuItem(
                          value: v,
                          child: SizedBox(
                            width: context.width() * 0.65,
                            child: Text(
                              v,
                              style: AppStyle.mediumBold.copyWith(
                                  color: AppColors.gray,
                                  letterSpacing: 1,
                                  fontSize: 17.sp),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  addVerticalSpacing(0.015),
                  AppTextfield(
                    controller: textEditingController,
                    height: 40,
                    hint: "Write text here",
                  ),
                  addVerticalSpacing(0.02),
                  BlocListener<CommonBloc, CommonState>(
                    listener: (context, state) {
                      if (state.status.isInProgress) {
                        showProgressDialogue(context);
                      } else if (state.status.isLoaded) {
                        Navigator.pop(context);
                        Navigator.pop(context);
                        showScafoldMessage(
                            context: context,
                            message: "Request submission completed");
                      } else if (state.status.isFailed) {
                        Navigator.pop(context);
                        showScafoldMessage(
                            context: context, message: state.message);
                      }
                    },
                    child: AppButton.AppButton(
                      removeOpacity: true,
                      onTap: () {
                        if (textEditingController.text.isNotEmpty) {
                          BlocProvider.of<CommonBloc>(context).add(HelpEvent(
                              _sectedType, textEditingController.text));
                        } else {
                          showScafoldMessage(
                              message: "Please fill all detail",
                              context: context);
                        }
                      },
                      text: "Submit",
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
