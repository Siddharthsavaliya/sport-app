import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';

class AppExpansionTile extends StatelessWidget {
  const AppExpansionTile({
    super.key,
    required this.title,
    required this.children,
    this.initiallyExpanded = false,
    this.removePadding = false,
    this.sTitle,
    this.style,
  });
  final String title;
  final String? sTitle;
  final List<Widget> children;
  final bool initiallyExpanded;
  final bool removePadding;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        iconColor: AppColors.black,
        initiallyExpanded: initiallyExpanded,
        backgroundColor: Colors.transparent,
        maintainState: true,
        childrenPadding:
            EdgeInsets.symmetric(horizontal: removePadding ? 0 : 0.042.sw),
        subtitle: sTitle != null
            ? Text(sTitle!,
                style: AppStyle.normalText.copyWith(
                    fontSize: 14.sp,
                    letterSpacing: 0.5,
                    color: AppColors.black.withOpacity(0.7)))
            : null,
        title: Text(title,
            style: style ??
                AppStyle.mediumBold.copyWith(
                    fontSize: 16.sp,
                    letterSpacing: 0.5,
                    color: AppColors.black.withOpacity(0.9))),
        children: children,
      ),
    );
  }
}
