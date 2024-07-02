import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';

class InvoiceViewer extends StatefulWidget {
  final String url;

  const InvoiceViewer({super.key, required this.url});

  @override
  _InvoiceViewerState createState() => _InvoiceViewerState();
}

class _InvoiceViewerState extends State<InvoiceViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Invoice",
          style: AppStyle.mediumText
              .copyWith(fontSize: 20.sp, color: AppColors.white),
        ),
        backgroundColor: AppColors.primaryColor,
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: WebUri(widget.url),
        ),
      ),
    );
  }
}
