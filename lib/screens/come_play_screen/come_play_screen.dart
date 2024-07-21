import 'package:dio/dio.dart';
import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sport_app/model/sport/fetch_sport_model.dart';
import 'package:sport_app/res/api_constants.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/screens/grounds_screen/all_ground_banners.dart';
import 'package:sport_app/screens/grounds_screen/grounds_list_screen.dart';
import 'package:sport_app/utils/helper.dart';
import 'package:sport_app/utils/shimmer_widget.dart';

class ComePlayScreen extends StatefulWidget {
  const ComePlayScreen({super.key, this.isFromNavigator = false});
  final bool isFromNavigator;
  @override
  State<ComePlayScreen> createState() => _ComePlayScreenState();
}

class _ComePlayScreenState extends State<ComePlayScreen> {
  bool isLoading = false;
  List<FetchSportResponse> sportList = [];

  @override
  void initState() {
    super.initState();
    getSportSlot();
  }

  Future<void> getSportSlot() async {
    setState(() {
      isLoading = true;
    });
    var dio = Dio();
    try {
      var response = await dio.get(
        '${ApiConstants.baseUrl}/sport/getll',
      );

      if (response.statusCode == 200) {
        List<dynamic> responseData = response.data;
        log(responseData.toString());
        sportList = responseData
            .map((json) => FetchSportResponse.fromJson(json))
            .toList();
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
      setState(() {
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    List<FetchSportResponse> firstSix = sportList.take(6).toList();
    List<FetchSportResponse> remaining = sportList.skip(6).toList();

    return Scaffold(
      appBar: AppBar(
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Come & Play",
          style: AppStyle.mediumText
              .copyWith(fontSize: 20.sp, color: AppColors.white),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            addVerticalSpacing(0.013),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.029.sw, vertical: 0),
              child: DynamicHeightGridView(
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                mainAxisSpacing: 16,
                itemCount: isLoading ? 6 : firstSix.length,
                shrinkWrap: true,
                builder: (BuildContext context, int index) {
                  if (isLoading) {
                    return shimmerWidget(
                        child: Container(
                      height: 0.15.sh,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15)),
                    ));
                  }
                  FetchSportResponse data = firstSix[index];

                  return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) =>
                                  GroundsListScreen(name: data.name.validate()),
                            ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: AppColors.gray.withOpacity(0.5))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            addVerticalSpacing(0.01),
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: loadNetworkImage(url: data.imageUrl!),
                            ),
                            addVerticalSpacing(0.01),
                            SizedBox(
                              width: 0.22.sw,
                              child: Text(
                                data.name.validate(),
                                textAlign: TextAlign.center,
                                style: AppStyle.mediumBold.copyWith(
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.6,
                                  fontSize: 12.sp,
                                ),
                              ),
                            ),
                            addVerticalSpacing(0.01),
                          ],
                        ),
                      ));
                },
              ),
            ),
            if (widget.isFromNavigator) ...[
              addVerticalSpacing(0.02),
            ],
            AllBannersGroundComponent(
              height: 0.15.sh,
            ),
            if (widget.isFromNavigator) ...[
              addVerticalSpacing(0.02),
            ],
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.029.sw),
              child: DynamicHeightGridView(
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                mainAxisSpacing: 16,
                itemCount: isLoading ? 0 : remaining.length,
                shrinkWrap: true,
                builder: (BuildContext context, int index) {
                  FetchSportResponse data = remaining[index];

                  return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) =>
                                  GroundsListScreen(name: data.name.validate()),
                            ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: AppColors.gray.withOpacity(0.5))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            addVerticalSpacing(0.01),
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: loadNetworkImage(url: data.imageUrl!),
                            ),
                            addVerticalSpacing(0.01),
                            SizedBox(
                              width: 0.22.sw,
                              child: Text(
                                data.name.validate(),
                                textAlign: TextAlign.center,
                                style: AppStyle.mediumBold.copyWith(
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.6,
                                  fontSize: 12.sp,
                                ),
                              ),
                            ),
                            addVerticalSpacing(0.01),
                          ],
                        ),
                      ));
                },
              ),
            ),
            16.height,
          ],
        ),
      ),
    );
  }

  Widget categoryCard(String text) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.blueShade,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 0.04.sw),
        child: Text(
          text,
          style: AppStyle.normalText
              .copyWith(fontSize: 15.sp, color: AppColors.black),
        ),
      ),
    );
  }
}
