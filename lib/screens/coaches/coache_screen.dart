import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sport_app/model/sport/fetch_sport_model.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/utils/helper.dart';
import 'package:sport_app/utils/shimmer_widget.dart';

class CoachScreen extends StatefulWidget {
  const CoachScreen({super.key});

  @override
  State<CoachScreen> createState() => _CoachScreenState();
}

class _CoachScreenState extends State<CoachScreen> {
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
        'https://cg8gkks.srv-01.purezzatechnologies.com/api/sport/getll',
      );

      if (response.statusCode == 200) {
        List<dynamic> responseData = response.data;
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
        foregroundColor: AppColors.black,
        backgroundColor: Colors.grey.shade300,
        title: Text(
          "Our Expert Coaches",
          style: AppStyle.mediumText
              .copyWith(fontSize: 20.sp, color: AppColors.black),
        ),
        elevation: 0,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 29,
                    childAspectRatio: 0.8,
                  ),
                  itemCount: isLoading ? 14 : sportList.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
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
                        // Navigator.push(
                        //     context,
                        //     CupertinoPageRoute(
                        //       builder: (context) => GroundsListScreen(
                        //           name: data.name.validate()),
                        //     ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: grey),
                            // borderRadius: BorderRadius.circular(12),
                            color: const Color.fromARGB(255, 245, 245, 245),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                              )
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 120,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(12),
                                        topRight: Radius.circular(12)),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(AppAssets.coach),
                                    ),
                                    // image: DecorationImage(
                                    //   fit: BoxFit.cover,
                                    //   image: NetworkImage(
                                    //       'https://s3-alpha-sig.figma.com/img/74e0/051a/982c92d4c5914b8cd1b01c34b3e2384a?Expires=1716768000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=K46rmD51p9YflN2cjJc9MfWQFF9ovLizg-9PLbuVPAJ8KeqQn0ZSzLXC6tAXt~U6C83GBDbrAyyqI2v8ePqJDTKn9xf3B0vPjDobXoEGuperF~KTciuUIg0XqAiP0PvpBViyn6gtYgIjiUIwbRXsZFeOc2GmoJcPOI~AwvbwL9Nu7dE33LP2IEv-O~YwncCFBZpNF-fHOoCl2lzxFJORAySe4bfC0skQzqq6jn-1eHc6W8i6ae1cctey9LH9FyPpQHjLNYHoKe1WbyNf1Dqt7G6o8B6YKvk8OdBQPcXf6GYjxpfvyFg6ZfFCto49ru1uoqcPX~-kjv86LjuWhlIVTg__'),
                                    // ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: const Icon(
                                    Icons.bookmark,
                                    color: Colors.amber,
                                    size: 18,
                                  ).paddingAll(8),
                                )
                              ],
                            ),
                            4.height,
                            Row(
                              children: [
                                Text(
                                  "Name: ",
                                  style:
                                      TextStyle(fontSize: 15.sp, color: black),
                                ),
                                Text(
                                  "John Doe",
                                  style:
                                      TextStyle(fontSize: 15.sp, color: black),
                                ),
                              ],
                            ).paddingSymmetric(horizontal: 10, vertical: 2),
                            Row(
                              children: [
                                Text(
                                  "Skills: ",
                                  style: TextStyle(fontSize: 15.sp),
                                ),
                                Text(
                                  "Cricket Coach",
                                  style: TextStyle(fontSize: 15.sp),
                                ),
                              ],
                            ).paddingSymmetric(horizontal: 10, vertical: 2),
                            4.height,
                            const Divider(color: grey, thickness: 1),
                            Row(
                              children: [
                                Text(
                                  "Exp: ",
                                  style: TextStyle(fontSize: 15.sp),
                                ),
                                Text(
                                  "10+ Years",
                                  style: TextStyle(fontSize: 15.sp),
                                ).expand(),
                                const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 16,
                                ),
                                Text(
                                  "4.2",
                                  style: TextStyle(fontSize: 15.sp),
                                ),
                              ],
                            ).paddingSymmetric(horizontal: 10, vertical: 2),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                82.height
              ],
            ).paddingSymmetric(horizontal: 0.04.sw, vertical: 16),
          ),
          // Positioned(
          //   bottom: 1,
          //   left: 0,
          //   right: 0,
          //   child: Container(
          //     padding: EdgeInsets.all(16),
          //     color: const Color.fromARGB(255, 245, 245, 245),
          //     child: Container(
          //       height: 54.sp,
          //       decoration: BoxDecoration(
          //         border: Border.all(color: gray),
          //         borderRadius: BorderRadius.circular(20),
          //         color: const Color.fromARGB(255, 245, 245, 245),
          //       ),
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //         children: [
          //           Text(
          //             "Sort by",
          //             style: TextStyle(fontSize: 16.sp),
          //           ),
          //           Image.asset(
          //             AppAssets.sort,
          //           ).paddingAll(8),
          //           Container(
          //             height: 54.sp,
          //             width: 1.sp,
          //             color: grey,
          //           ),
          //           Text(
          //             "Filter by sports",
          //             style: TextStyle(fontSize: 16.sp),
          //           ),
          //           Icon(Icons.filter_alt_outlined),
          //         ],
          //       ).paddingSymmetric(horizontal: 10, vertical: 2),
          //     ),
          //   ),
          // )
        ],
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
