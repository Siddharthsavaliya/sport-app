// ignore_for_file: use_build_context_synchronously

import 'dart:developer';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geocoding/geocoding.dart';
import 'package:sport_app/bloc/location_bloc/location_bloc.dart';
import 'package:sport_app/model/place_model/place_model.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_strings.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/screens/app_bottom_bar.dart';
import 'package:sport_app/screens/location_screens/location_fetching_screen.dart';
import 'package:sport_app/screens/location_screens/widget/location_info_list_tile.dart';
import 'package:sport_app/utils/helper.dart';
import 'package:sport_app/utils/status_dialog.dart';
import 'package:sport_app/widget/app_button.dart';
import 'package:sport_app/widget/app_text_field.dart';

class LocationSearchScreen extends StatefulWidget {
  const LocationSearchScreen(
      {super.key, this.isFromListing = false, this.getLocation});
  final bool isFromListing;
  final Function(String)? getLocation;
  @override
  State<LocationSearchScreen> createState() => _LocationSearchScreenState();
}

class _LocationSearchScreenState extends State<LocationSearchScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            addVerticalSpacing(Platform.isAndroid ? 0.04 : 0.07),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.04.sw),
              child: Row(
                children: [
                  backArrow(context),
                  addHorizontalSpacing(0.027),
                  Expanded(
                    child: AppTextfield(
                      isRound: false,
                      isBlack: true,
                      controller: searchController,
                      onChanged: (value) async {
                        BlocProvider.of<LocationBloc>(context)
                            .add(SearchLocationEvent(value));
                        setState(() {});
                      },
                      hint: AppStrings.searchYourLocality,
                    ),
                  )
                ],
              ),
            ),
            addVerticalSpacing(0.002),
            Padding(
              padding: EdgeInsets.only(right: 0.04.sw, left: 0.16.sw),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  addVerticalSpacing(0.02),
                  Container(
                      height: 37,
                      decoration: BoxDecoration(
                        color: AppColors.lightContainerColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            addHorizontalSpacing(0.012),
                            SvgPicture.asset(AppAssets.light),
                            addHorizontalSpacing(0.015),
                            Text(
                              AppStrings.locationExText,
                              style: AppStyle.normalText.copyWith(
                                color: AppColors.darkGrayColor,
                              ),
                            )
                          ],
                        ),
                      )),
                ],
              ),
            ),
            addVerticalSpacing(0.028),
            if (searchController.text.isEmpty && !widget.isFromListing) ...[
              Row(
                children: [
                  Expanded(
                    child: customDivider(),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0.02.sw),
                    child: Text(
                      "OR",
                      style: AppStyle.mediumBold
                          .copyWith(color: AppColors.primaryColor),
                    ),
                  ),
                  Expanded(
                    child: customDivider(),
                  ),
                ],
              ),
              addVerticalSpacing(0.052),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.05.sw),
                child: AppButton(
                  color: AppColors.primaryColor,
                  text: AppStrings.yourLocationText,
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const LocationFetchingScreen(),
                        ));
                  },
                ),
              ),
              addVerticalSpacing(0.03),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const AppBottomBar()));
                },
                child: Text(
                  AppStrings.skip,
                  style:
                      AppStyle.normalBold.copyWith(fontWeight: FontWeight.w600),
                ),
              ),
            ],
            if (searchController.text.isNotEmpty || widget.isFromListing) ...[
              BlocConsumer<LocationBloc, LocationState>(
                listener: (context, state) {
                  if (state.searchStatus.isFailed) {
                    showErrorDialogue(context, state.message);
                  }
                },
                builder: (context, state) {
                  if (state.searchStatus.isLoaded) {
                    List<PlaceModel> data = state.placeList ?? [];
                    return data.isEmpty
                        ? SizedBox(
                            height: 0.7.sh,
                            child: Center(
                              child: Text(
                                "Search Location",
                                style: AppStyle.mediumBold
                                    .copyWith(color: AppColors.lightTextColor),
                              ),
                            ),
                          )
                        : ListView.builder(
                            itemCount: data.length,
                            shrinkWrap: true,
                            padding: const EdgeInsets.all(0),
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(bottom: 0.025.sh),
                                child: LocationInfoListTile(
                                  onTap: () async {
                                    Map<String, double> data1 =
                                        await getPlaceDetails(
                                            data[index].placeId!);
                                    List<Placemark> placemarks =
                                        await placemarkFromCoordinates(
                                            data1["lat"]!, data1["lng"]!);
                                    log(placemarks.toString());
                                    BlocProvider.of<LocationBloc>(context).add(
                                        InitializeLocationEvent(
                                            city: placemarks[0].locality,
                                            address:
                                                placemarks[0].subLocality));
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        CupertinoPageRoute(
                                            builder: (context) =>
                                                const AppBottomBar()),
                                        (context) => false);
                                  },
                                  title: data[index]
                                      .structuredFormatting!
                                      .mainText!,
                                  subTitle: data[index].description!,
                                ),
                              );
                            },
                          );
                  }
                  if (state.searchStatus.isInProgress ||
                      state.searchStatus.isFailed) {
                    return SizedBox(
                        height: 0.7.sh,
                        child:
                            const Center(child: CircularProgressIndicator()));
                  }
                  return SizedBox(
                    height: 0.7.sh,
                    child: Center(
                      child: Text(
                        "Search Location",
                        style: AppStyle.mediumBold
                            .copyWith(color: AppColors.lightTextColor),
                      ),
                    ),
                  );
                },
              ),
            ]
          ],
        ),
      ),
    );
  }
}
