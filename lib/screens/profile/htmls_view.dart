import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';

class HtmlViewScreen extends StatefulWidget {
  const HtmlViewScreen({
    super.key,
    required this.title,
    required this.data,
  });
  final String title;
  final String data;
  @override
  State<HtmlViewScreen> createState() => _HtmlViewScreenState();
}

class _HtmlViewScreenState extends State<HtmlViewScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: AppColors.black,
          backgroundColor: Colors.grey.shade300,
          title: Text(
            widget.title,
            style: AppStyle.mediumText.copyWith(
                fontSize: 20.sp, color: AppColors.black, letterSpacing: 0.8),
          ),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.03.sw),
            child: Html(
              shrinkWrap: true,
              data: widget.data,
            ),
          ),
        ));
  }
}
