import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/widget/app_button.dart';

Future<dynamic> showProgressDialogue(BuildContext context) {
  return showDialog(
    barrierColor: Colors.black.withOpacity(0.1),
    context: context,
    barrierDismissible: false,
    builder: (context) => Center(
      child: Container(
        clipBehavior: Clip.hardEdge,
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.6),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Lottie.asset('assets/animation/loading.json'),
          ),
        ),
      ),
    ),
  );
}

void showScafoldMessage(
    {required String message,
    bool isError = false,
    bool isDark = false,
    required BuildContext context}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      // behavior: SnackBarBehavior.floating,
      backgroundColor: isError ? Colors.red : Colors.black,
      content: Text(
        message,
        style: AppStyle.mediumBold.copyWith(color: Colors.white, fontSize: 14),
      ),
      duration:
          const Duration(milliseconds: 1100), // Set the duration to 0.5 seconds
    ),
  );
}

Future<dynamic> showYesNoDialogue(
  BuildContext context, {
  required VoidCallback onTap,
  VoidCallback? onTapNO,
  required String title,
  String? subTitle,
}) async {
  await showDialog<void>(
    context: context,
    builder: (context) => Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.04.sw),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.01.sw),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    title,
                    style: AppStyle.mediumBold.copyWith(
                        color: AppColors.black,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  if (subTitle != null) ...[
                    const SizedBox(
                      height: 15,
                    ),
                    Flexible(
                      child: Text(
                        subTitle,
                        textAlign: TextAlign.center,
                        style: AppStyle.mediumBold.copyWith(
                            color: AppColors.fetchingLocationColor,
                            fontSize: 15.5,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                  const SizedBox(
                    height: 35,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0.08.sw),
                    child: Row(
                      children: [
                        Expanded(
                            child: AppButton(
                          isBorder: true,
                          text: "No",
                          onTap: onTapNO ??
                              () {
                                Navigator.pop(context);
                              },
                        )),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                            child: AppButton(
                          removeOpacity: true,
                          text: "Yes",
                          onTap: onTap,
                        ))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

Future<dynamic> showErrorDialogue(
  BuildContext context,
  String errorMessage, {
  bool isForLogin = false,
}) async {
  await showDialog<void>(
    context: context,
    builder: (context) => Center(
      child: AlertDialog(
        backgroundColor: AppColors.white,
        surfaceTintColor: AppColors.white,
        title: const Text(
          'Error',
          style: TextStyle(color: Colors.red),
        ),
        content: Text(errorMessage.split('\$').last.replaceFirst(':', '')),
        actions: [
          Center(
            child: SizedBox(
              width: 0.3.sw,
              child: AppButton(
                removeOpacity: true,
                onTap: () {
                  Navigator.pop(context);
                },
                text: isForLogin ? "Log In" : "OK",
              ),
            ),
          )
        ],
      ),
    ),
  );
}
