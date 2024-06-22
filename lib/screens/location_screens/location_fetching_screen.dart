import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sport_app/bloc/location_bloc/location_bloc.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:geocoding/geocoding.dart';
import 'package:sport_app/res/app_strings.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/screens/app_bottom_bar.dart';
import 'package:sport_app/utils/helper.dart';

class LocationFetchingScreen extends StatefulWidget {
  const LocationFetchingScreen({super.key});

  @override
  State<LocationFetchingScreen> createState() => _LocationFetchingScreenState();
}

class _LocationFetchingScreenState extends State<LocationFetchingScreen> {
  @override
  void initState() {
    BlocProvider.of<LocationBloc>(context).add(
      const GetLocationEvent(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<LocationBloc, LocationState>(
        listener: (context1, state) async {
          if (state.locationStatus == Status.loaded) {
            List<Placemark> placemarks = await placemarkFromCoordinates(
                state.position!.latitude, state.position!.longitude);
            Navigator.pushAndRemoveUntil(
                context,
                CupertinoPageRoute(builder: (context) => const AppBottomBar()),
                (context) => false);
          }
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AppAssets.locationPinIcon),
              addVerticalSpacing(0.015),
              Text(
                AppStrings.fetchingLocation,
                style: AppStyle.normalText.copyWith(
                  fontSize: 16,
                  color: AppColors.fetchingLocationColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
