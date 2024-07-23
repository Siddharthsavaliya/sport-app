import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/bloc/coach_bloc/coach_bloc.dart';
import 'package:sport_app/bloc/coach_bloc/coach_event.dart';
import 'package:sport_app/bloc/user_bloc/user_bloc.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/screens/booking/booking_success_screen.dart';
import 'package:sport_app/screens/coaches/coach_booking_success_screen.dart';
import 'package:sport_app/utils/status_dialog.dart';

class PaymentWebViewScreen extends StatefulWidget {
  const PaymentWebViewScreen({
    super.key,
    required this.url,
    required this.type,
    this.id,
  });
  final String url;
  final String? id;
  final String type;

  @override
  State<PaymentWebViewScreen> createState() => _PaymentWebViewScreenState();
}

class _PaymentWebViewScreenState extends State<PaymentWebViewScreen> {

  static MethodChannel _channel = MethodChannel('easebuzz');
  InAppWebViewController? webViewController;
  String getStatusFromUrl(String url) {
    // Parse the URL
    Uri uri = Uri.parse(url);

    // Extract the query parameters
    Map<String, String> queryParams = uri.queryParameters;

    // Get the value of the "status" parameter
    String status = queryParams['status'] ?? "";
    print("Status:$status");
    return status;
  }

  @override
  Widget build(BuildContext context) {
    print(widget.id);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Payment Screen",
          style: AppStyle.mediumText
              .copyWith(fontSize: 20.sp, color: AppColors.white),
        ),
        backgroundColor: AppColors.primaryColor,
      ),
      body: SafeArea(
        child: InAppWebView(
          onUpdateVisitedHistory: (controller, _, androidIsReload) async {
            final url = await controller.getUrl();
            Uri uri = Uri.parse(url.toString());
            print(url);

            // Extract the value of the 'status' parameter from the URL
            String? status = uri.queryParameters['status'];

            // Check the status value and perform actions accordingly
            if (status == 'true') {
              if (mounted) {
                if (widget.type == "membership") {
                  BlocProvider.of<UserBloc>(context).add(GetUserEventRequest());
                  showScafoldMessage(
                      message: "Membership purchase completed",
                      context: context);
                  Navigator.pop(context);
                }
                if (widget.type == "coach") {
                  BlocProvider.of<CoachBloc>(context)
                      .add(GetCoachSingleHistoryRequest(widget.id!));
                  Navigator.pushReplacement(
                      context,
                      CupertinoPageRoute(
                          builder: (context) =>
                              CoachBookingSuccessScreen(id: widget.id!)));
                }
                if (widget.type == "ground") {
                  Navigator.pushReplacement(
                      context,
                      CupertinoPageRoute(
                          builder: (context) =>
                              BookingSuccessScreen(id: widget.id!)));
                }
              }
            } else if (status == 'false') {
              if (mounted) {
                Navigator.pop(context);
                showScafoldMessage(
                  message: "Payment failed. Please try again.",
                  context: context,
                );
              }
            }
          },
          initialSettings: InAppWebViewSettings(),
          onWebViewCreated: (controller) async {
            webViewController = controller;
            // print("WebView Initiated");
            // var result =
            //     await controller.evaluateJavascript(source: '2 + 2');
            // // print('Result from JavaScript: $result');

            // setupJavaScriptHandlers(controller);
            controller.addJavaScriptHandler(
              handlerName: 'AndroidFunction',
              callback: (message) {
                log('Received message from JavaScript: $message');
              },
            );
          },
          initialUrlRequest: URLRequest(
            url: WebUri(widget.url),
          ),
          onReceivedClientCertRequest: (controller, challenge) async {
            return ClientCertResponse(
                action: ClientCertResponseAction.PROCEED, certificatePath: '');
          },
          onConsoleMessage: (controller, consoleMessage) {
            // print('Console Message: ${consoleMessage.message}');
          },
          onReceivedServerTrustAuthRequest: (controller, challenge) async {
            // print('onReceivedServerTrustAuthRequest');

            final url = await controller.getUrl();
            log('Certificate URL: $url');
            return ServerTrustAuthResponse(
                action: ServerTrustAuthResponseAction.PROCEED);
          },
        ),
      ),
    );
  }
}
