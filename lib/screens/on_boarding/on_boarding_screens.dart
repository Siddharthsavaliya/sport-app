import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_strings.dart';
import 'package:sport_app/screens/auth/login_screen.dart';
import 'package:sport_app/screens/on_boarding/widget/common_onboarding_screen.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  PageController controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    List<Widget> onBoardList = [
      CommonOnBoardingScreen(
        onTapContainer: () {
          controller.jumpToPage(0);
        },
        index: 0,
        imagePath: AppAssets.o1,
        onTap: () {
          controller.jumpToPage(1);
        },
        subTitle: AppStrings.o1SubText,
        title: AppStrings.o1Title,
      ),
      CommonOnBoardingScreen(
        onTapContainer: () {
          controller.jumpToPage(1);
        },
        index: 1,
        imagePath: AppAssets.o2,
        onTap: () {
          controller.jumpToPage(2);
        },
        subTitle: AppStrings.o2SubText,
        title: AppStrings.o2Title,
      ),
      CommonOnBoardingScreen(
        onTapContainer: () {
          controller.jumpToPage(2);
        },
        index: 2,
        imagePath: AppAssets.o3,
        onTap: () {
          Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const LoginScreen(),
              ));
        },
        subTitle: AppStrings.o3SubText,
        title: AppStrings.o3Title,
      ),
    ];
    return PageView.builder(
      controller: controller,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => onBoardList[index],
    );
  }
}
