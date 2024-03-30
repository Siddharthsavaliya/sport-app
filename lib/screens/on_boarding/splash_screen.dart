import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sport_app/screens/app_bottom_bar.dart';
import 'package:sport_app/screens/on_boarding/on_boarding_screens.dart';
import 'package:sport_app/utils/helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final bool _animationCompleted = false;
  bool isLogged = false;
  @override
  void initState() {
    checkIsLogged();
    super.initState();
  }

  checkIsLogged() async {
    String? userId = await getKeyValue(key: 'token');
    isLogged = userId == null ? false : true;
    setState(() {});
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
        child: Lottie.asset(
          "assets/animation/loading.json",
          onLoaded: (composition) {
            final duration = composition.duration;
            Future.delayed(duration, () {
              if (_animationCompleted) {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const SplashScreen()),
                );
              }
            });
          },
        ),
      ),
    );
  }
}
