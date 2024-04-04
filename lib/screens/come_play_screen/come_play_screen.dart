import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/screens/grounds_screen/grounds_list_screen.dart';
import 'package:sport_app/utils/helper.dart';
import 'package:sport_app/widget/carosule_widget.dart';

class ComePlayScreen extends StatefulWidget {
  const ComePlayScreen({super.key});

  @override
  State<ComePlayScreen> createState() => _ComePlayScreenState();
}

class _ComePlayScreenState extends State<ComePlayScreen> {
  List data = [
    {"label": "Football", "image": AppAssets.football},
    {"label": "Cricket", "image": AppAssets.cricket},
    {"label": "Volley Ball", "image": AppAssets.volleyBall},
    {"label": "Hockey", "image": AppAssets.hockey},
    {"label": "Swimming", "image": AppAssets.swimming},
    {"label": "Badminton", "image": AppAssets.badminton},
    {"label": "Table Tennis", "image": AppAssets.tableTennis},
    {"label": "Lawn Tennis", "image": AppAssets.lawnTennis},
    {"label": "Box Cricket", "image": AppAssets.boxCricket},
    {"label": "Basket Ball", "image": AppAssets.basketball},
    {"label": "Skates", "image": AppAssets.skates},
    {"label": "Horse Riding", "image": AppAssets.horseRiding},
    {"label": "Net Practice", "image": AppAssets.netpractice},
    {"label": "yoga", "image": AppAssets.yoga},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: AppColors.black,
        backgroundColor: Colors.grey.shade300,
        title: Text(
          "Come & Play",
          style: AppStyle.mediumText
              .copyWith(fontSize: 20.sp, color: AppColors.black),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            addVerticalSpacing(0.013),
            const BannerWidget(),
            // SizedBox(
            //   height: 0.2.sh,
            //   child: ListView.builder(
            //     scrollDirection: Axis.horizontal,
            //     shrinkWrap: true,
            //     itemCount: 4,
            //     itemBuilder: (BuildContext context, int index) {
            //       return Container(
            //         margin: const EdgeInsets.symmetric(horizontal: 8.5),
            //         clipBehavior: Clip.hardEdge,
            //         height: 0.19.sh,
            //         width: 0.4.sw,
            //         decoration: BoxDecoration(
            //           border: Border.all(
            //             color: AppColors.borderColor,
            //           ),
            //           borderRadius: BorderRadius.circular(15),
            //         ),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Container(
            //               height: 0.123.sh,
            //               width: double.infinity,
            //               decoration: const BoxDecoration(
            //                 color: Color(0xffFFFCF5),
            //                 borderRadius:
            //                     BorderRadius.vertical(top: Radius.circular(15)),
            //               ),
            //               child: Padding(
            //                 padding: const EdgeInsets.only(top: 4, bottom: 10),
            //                 child: SizedBox(
            //                   height: 0.6.sh,
            //                   child: Image.asset(
            //                     AppAssets.tt,
            //                   ),
            //                 ),
            //               ),
            //             ),
            //             Container(
            //               height: 1,
            //               width: double.infinity,
            //               color: AppColors.borderColor,
            //             ),
            //             addVerticalSpacing(0.005),
            //             Padding(
            //               padding: EdgeInsets.symmetric(horizontal: 0.01.sw),
            //               child: Column(
            //                 crossAxisAlignment: CrossAxisAlignment.start,
            //                 children: [
            //                   Text(
            //                     "Indian Table Tennis League",
            //                     style: AppStyle.normalText.copyWith(
            //                       color: AppColors.black.withOpacity(0.6),
            //                       fontSize: 10.sp,
            //                       letterSpacing: 0,
            //                       fontWeight: FontWeight.w200,
            //                     ),
            //                   ),
            //                   Text(
            //                     "Date: 20-Feb-2024",
            //                     style: AppStyle.normalText.copyWith(
            //                       color: AppColors.black.withOpacity(0.6),
            //                       fontSize: 10.sp,
            //                       letterSpacing: 0,
            //                       fontWeight: FontWeight.w200,
            //                     ),
            //                   ),
            //                   addVerticalSpacing(0.005),
            //                   Align(
            //                     alignment: Alignment.bottomRight,
            //                     child: Padding(
            //                       padding: EdgeInsets.only(
            //                         right: 0.015.sw,
            //                       ),
            //                       child: Text(
            //                         "More",
            //                         style: AppStyle.mediumBold.copyWith(
            //                           color: AppColors.orange,
            //                           fontSize: 10.sp,
            //                           letterSpacing: 0,
            //                           fontWeight: FontWeight.w500,
            //                         ),
            //                       ),
            //                     ),
            //                   )
            //                 ],
            //               ),
            //             ),
            //           ],
            //         ),
            //       );
            //     },
            //   ),
            // )
            addVerticalSpacing(0.025),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                categoryCard("All"),
                addHorizontalSpacing(0.013),
                categoryCard("Play Grounds"),
                addHorizontalSpacing(0.013),
                categoryCard("Tournaments"),
              ],
            ),
            addVerticalSpacing(0.025),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.029.sw),
              child: Column(
                children: [
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 2,
                    ),
                    itemCount: data.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => GroundsListScreen(
                                    name: data[index]["label"]),
                              ));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: const Color.fromARGB(255, 245, 245, 245),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                )
                              ]),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0.025.sw,
                                top: 0.01.sh,
                                // bottom: 0.01.sh,
                                child: SizedBox(
                                  width: 0.22.sw,
                                  child: Text(
                                    data[index]["label"],
                                    style: AppStyle.mediumBold.copyWith(
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.6,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                  top: 0,
                                  right: 0.02.sw,
                                  bottom: 0,
                                  child: SizedBox(
                                    height: 80,
                                    width: 0.17.sw,
                                    child: Image.asset(
                                      data[index]["image"],
                                      fit: BoxFit.contain,
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
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
