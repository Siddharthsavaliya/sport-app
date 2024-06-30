import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sport_app/bloc/location_bloc/location_bloc.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/screens/app_bottom_bar.dart';
import 'package:sport_app/screens/location_screens/location_access_screen.dart';
import 'package:sport_app/screens/on_boarding/on_boarding_screens.dart';
import 'package:sport_app/utils/helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLogged = false;

  @override
  void initState() {
    checkIsLogged();
    super.initState();
  }

  checkIsLogged() async {
    String? userId = await getKeyValue(key: 'token');
    String? city = await getKeyValue(key: 'city');
    isLogged = userId == null ? false : true;
    setState(() {});
    if (city != null) {
      BlocProvider.of<LocationBloc>(context)
          .add(const InitializeLocationEvent());
    }
    Future.delayed(
      const Duration(seconds: 3),
      () {
        isLogged
            ? Navigator.pushAndRemoveUntil(
                context,
                CupertinoPageRoute(
                  builder: (context) => const AppBottomBar(),
                ),
                (route) => false,
              )
            : Navigator.pushAndRemoveUntil(
                context,
                CupertinoPageRoute(
                  builder: (context) => const OnBoardScreen(),
                ),
                (route) => false,
              );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: 0.0, end: 1.0),
          duration: const Duration(seconds: 2),
          builder: (context, value, child) {
            return Transform.scale(
              scale: value,
              child: child,
            );
          },
          child: Image.asset(AppAssets.splashScreenImage)
              .paddingSymmetric(horizontal: 0.1.sw),
        ),
      ),
    );
  }
}
