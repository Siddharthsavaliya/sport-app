import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_strings.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/screens/location_screens/location_fetching_screen.dart';
import 'package:sport_app/screens/location_screens/location_search_screen.dart';
import 'package:sport_app/utils/helper.dart';
import 'package:sport_app/widget/app_button.dart';

class LocationAccessScreen extends StatelessWidget {
  const LocationAccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          // Background Google Map Image
          Positioned.fill(
            child: Image.asset(
              AppAssets.map1, // replace with your image asset
              fit: BoxFit.cover,
            ),
          ),

          Positioned.fill(
              child: Container(
            color: AppColors.white.withOpacity(0.8),
          )),

          // Foreground Content
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.05.sw),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(AppAssets.map2),
                  ),
                  addVerticalSpacing(0.04),
                  AppButton(
                    color: AppColors.primaryColor,
                    text: AppStrings.yourLocationText,
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const LocationFetchingScreen(),
                        ),
                      );
                    },
                  ),
                  addVerticalSpacing(0.013),
                  AppButton(
                    color: AppColors.primaryColor,
                    text: AppStrings.someOtherLocation,
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const LocationSearchScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
