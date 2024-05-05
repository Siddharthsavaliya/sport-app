import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/bloc/membership_bloc/membership_bloc.dart';
import 'package:sport_app/bloc/user_bloc/user_bloc.dart';
import 'package:sport_app/bloc/wishlist_bloc/wishlist_bloc.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_strings.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/screens/come_play_screen/come_play_screen.dart';
import 'package:sport_app/screens/home/home_screen.dart';
import 'package:sport_app/screens/profile/profile_screen.dart';

class AppBottomBar extends StatefulWidget {
  const AppBottomBar({super.key});

  @override
  State<AppBottomBar> createState() => _AppBottomBarState();
}

class _AppBottomBarState extends State<AppBottomBar> {
  int _index = 0;
  @override
  void initState() {
    BlocProvider.of<UserBloc>(context).add(GetUserEventRequest());
    BlocProvider.of<WishlistBloc>(context).add(GetToWishlistRequest());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3), // Shadow color
              blurRadius: 5.0, // Spread of the shadow
              spreadRadius: 0.0, // How far the shadow extends
              offset: const Offset(0, -2), // Offset in (x,y) direction
            ),
          ],
        ),
        height: 0.09.sh,
        child: Padding(
          padding: EdgeInsets.only(left: 0.012.sw, right: 0.012.sw, bottom: 10),
          child: Row(
            children: [
              Expanded(
                  child: _bottomBarTile(
                iconPath: AppAssets.home,
                title: AppStrings.home,
                selectedIconPath: AppAssets.home,
                index: 0,
                onTap: () {
                  _index = 0;
                  setState(() {});
                },
              )),
              Expanded(
                  child: _bottomBarTile(
                iconPath: AppAssets.event1,
                title: AppStrings.event,
                selectedIconPath: AppAssets.event1,
                index: 1,
                onTap: () {
                  _index = 1;
                  setState(() {});
                },
              )),
              Expanded(
                  child: _bottomBarTile(
                iconPath: AppAssets.sport1,
                title: AppStrings.sport,
                selectedIconPath: AppAssets.sport1,
                // space: 10,
                index: 2,
                onTap: () {
                  _index = 2;
                  setState(() {});
                },
              )),
              Expanded(
                  child: _bottomBarTile(
                iconPath: AppAssets.profile,
                title: AppStrings.profile,
                selectedIconPath: AppAssets.profile,
                index: 3,
                space: 6,
                onTap: () {
                  _index = 3;
                  setState(() {});
                },
              )),
            ],
          ),
        ),
      ),
      body: _index == 0
          ? const HomeScreen()
          : _index == 2
              ? const ComePlayScreen()
              : const ProfileScreen(),
    );
  }

  Widget _bottomBarTile({
    required String iconPath,
    required String selectedIconPath,
    required VoidCallback onTap,
    required int index,
    required String title,
    double? space,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: space != null ? 2.5 : null,
            ),
            Image.asset(
              index == _index ? selectedIconPath : iconPath,
              height: 0.03.sh,
            ),
            SizedBox(
              height: space != null ? 0.005.sh : 5,
            ),
            Text(
              title,
              style: AppStyle.normalText.copyWith(
                color: AppColors.blackText,
                fontSize: 12,
              ),
            )
          ],
        ),
      ),
    );
  }
}
