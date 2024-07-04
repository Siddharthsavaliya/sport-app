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
  const ComePlayScreen({super.key});

  @override
  State<ComePlayScreen> createState() => _ComePlayScreenState();
}

class _ComePlayScreenState extends State<ComePlayScreen> {
  bool isLoading = false;
  // List data = [
  //   {"label": "Football", "image": AppAssets.football},
  //   {"label": "Cricket", "image": AppAssets.cricket},
  //   {"label": "Volley Ball", "image": AppAssets.volleyBall},
  //   {"label": "Hockey", "image": AppAssets.hockey},
  //   {"label": "Swimming", "image": AppAssets.swimming},
  //   {"label": "Badminton", "image": AppAssets.badminton},
  //   {"label": "Table Tennis", "image": AppAssets.tableTennis},
  //   {"label": "Lawn Tennis", "image": AppAssets.lawnTennis},
  //   {"label": "Box Cricket", "image": AppAssets.cricket},
  //   {"label": "Basket Ball", "image": AppAssets.basketball},
  //   {"label": "Skates", "image": AppAssets.skates},
  //   {"label": "Horse Riding", "image": AppAssets.horseRiding},
  //   {"label": "Net Practice", "image": AppAssets.cricket},
  //   {"label": "yoga", "image": AppAssets.yoga},
  // ];

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
              padding: EdgeInsets.symmetric(horizontal: 0.029.sw),
              child: Column(
                children: [
                  DynamicHeightGridView(
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 3,
                    mainAxisSpacing: 16,
                    itemCount: isLoading ? 14 : sportList.length,
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
                      FetchSportResponse data = sportList[index];

                      return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) => GroundsListScreen(
                                      name: data.name.validate()),
                                ));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
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
                            ],
                          ));
                    },
                  ),
                  16.height
                ],
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




// Padding(
//               padding: EdgeInsets.symmetric(horizontal: 0.029.sw),
//               child: Column(
//                 children: [
//                   GridView.builder(
//                     physics: const NeverScrollableScrollPhysics(),
//                     gridDelegate:
//                         const SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 2,
//                       mainAxisSpacing: 10,
//                       crossAxisSpacing: 10,
//                       childAspectRatio: 2,
//                     ),
//                     itemCount: isLoading ? 14 : sportList.length,
//                     shrinkWrap: true,
//                     itemBuilder: (BuildContext context, int index) {
//                       if (isLoading) {
//                         return shimmerWidget(
//                             child: Container(
//                           height: 0.15.sh,
//                           width: double.infinity,
//                           decoration: BoxDecoration(
//                               color: Colors.black,
//                               borderRadius: BorderRadius.circular(15)),
//                         ));
//                       }
//                       FetchSportResponse data = sportList[index];

//                       return GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                               context,
//                               CupertinoPageRoute(
//                                 builder: (context) => GroundsListScreen(
//                                     name: data.name.validate()),
//                               ));
//                         },
//                         child: Container(
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(12),
//                               color: const Color.fromARGB(255, 245, 245, 245),
//                               boxShadow: const [
//                                 BoxShadow(
//                                   color: Colors.grey,
//                                 )
//                               ]),
//                           child: Stack(
//                             children: [
//                               Positioned(
//                                 left: 0.025.sw,
//                                 top: 0.01.sh,
//                                 // bottom: 0.01.sh,
//                                 child: SizedBox(
//                                   width: 0.22.sw,
//                                   child: Text(
//                                     data.name.validate(),
//                                     style: AppStyle.mediumBold.copyWith(
//                                       fontWeight: FontWeight.w500,
//                                       letterSpacing: 0.6,
//                                       fontSize: 15.sp,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Positioned(
//                                   top: 0.015.sh,
//                                   right: 0.02.sw,
//                                   bottom: 0.015.sh,
//                                   child: SizedBox(
//                                     height: 30,
//                                     width: 0.15.sw,
//                                     child:
//                                         loadNetworkImage(url: data.imageUrl!),
//                                     //  Image.asset(
//                                     //   data.imageUrl.validate(),
//                                     //   fit: BoxFit.contain,
//                                     // ),
//                                   )),
//                             ],
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                   16.height
//                 ],
//               ),
//             ),
         