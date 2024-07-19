import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';

class AppTextfield extends StatefulWidget {
  AppTextfield(
      {super.key,
      required this.hint,
      this.isRound = true,
      this.prefixIcon,
      this.height,
      this.radius,
      this.readOnly = false,
      this.isSecure,
      this.error = false,
      this.isBlack = false,
      this.isPassword,
      this.controller,
      this.validator,
      this.onTap,
      this.maxLength,
      this.keyboardType,
      this.onChanged});
  final String hint;
  final bool isRound;
  final IconData? prefixIcon;
  final TextEditingController? controller;
  final double? height;
  final double? radius;
  final bool? isPassword;
  final bool error;
  final bool isBlack;
  final bool? isSecure;
  final bool readOnly;
  final int? maxLength;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;
  String? Function(String?)? validator;
  final void Function(String)? onChanged;
  @override
  State<AppTextfield> createState() => _AppTextfieldState();
}

class _AppTextfieldState extends State<AppTextfield> {
  bool isShow = false;
  @override
  void initState() {
    print(widget.isSecure);
    isShow = widget.isPassword ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    InputBorder border = widget.isRound
        ? OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.radius ?? 25),
            borderSide: BorderSide(
                color: widget.error
                    ? AppColors.red
                    : AppColors.gray.withOpacity(0.4),
                width: 2),
          )
        : UnderlineInputBorder(
            borderSide: BorderSide(
              color: widget.isBlack ? AppColors.gray : AppColors.white,
            ),
          );
    return SizedBox(
      // height: widget.height,
      child: TextFormField(
        keyboardType: widget.keyboardType,
        maxLength: widget.maxLength,
        onChanged: widget.onChanged,
        onTap: widget.onTap,
        readOnly: widget.readOnly,
        validator: widget.validator,
        obscureText: widget.isSecure ?? isShow,
        controller: widget.controller ?? TextEditingController(),
        cursorColor: widget.isBlack
            ? AppColors.gray
            : widget.isRound
                ? AppColors.gray
                : AppColors.white,
        cursorHeight: 18,
        style: AppStyle.mediumBold.copyWith(
            color: widget.isBlack
                ? AppColors.gray
                : widget.isRound
                    ? AppColors.gray
                    : AppColors.white,
            letterSpacing: 1,
            fontSize: widget.isRound ? 17.sp : 15.sp),
        decoration: InputDecoration(
          counterText: "",
          suffixIcon: widget.isPassword == true
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      isShow = !isShow;
                    });
                  },
                  child: isShow
                      ? Padding(
                          padding: const EdgeInsets.all(12),
                          child: Image.asset(
                            AppAssets.closeEye,
                            height: 5,
                            color: AppColors.gray.withOpacity(0.8),
                          ),
                        )
                      : Icon(
                          Icons.remove_red_eye,
                          color: AppColors.gray.withOpacity(0.8),
                        ),
                )
              : null,
          prefixIcon: widget.prefixIcon != null
              ? Padding(
                  padding: const EdgeInsets.only(bottom: 2),
                  child: Icon(
                    widget.prefixIcon,
                    color: AppColors.gray.withOpacity(0.8),
                    size: 25,
                  ),
                )
              : null,
          contentPadding: widget.height != null
              ? const EdgeInsets.only(top: 15, bottom: 17, left: 22)
              : null,
          hintText: widget.hint,
          border: border,
          hintStyle: AppStyle.normalText.copyWith(
            color: widget.isRound
                ? AppColors.gray.withOpacity(0.8)
                : AppColors.white.withOpacity(0.5),
            fontSize: widget.isRound ? 16.sp : 13.sp,
            fontWeight: widget.isRound ? FontWeight.w600 : null,
            letterSpacing: 1.5,
          ),
          focusedBorder: border,
          enabledBorder: border,
        ),
      ),
    );
  }
}
