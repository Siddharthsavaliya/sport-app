import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sport_app/bloc/ground_bloc/ground_bloc.dart';
import 'package:sport_app/bloc/wishlist_bloc/wishlist_bloc.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/screens/booking/sloat_selection_screen.dart';
import 'package:sport_app/utils/helper.dart';
import 'package:sport_app/utils/shimmer_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sport_app/utils/status_dialog.dart';

import 'ground_detail_screen.dart';

class AllBannersGroundComponent extends StatefulWidget {
  const AllBannersGroundComponent({
    super.key,
  });

  @override
  State<AllBannersGroundComponent> createState() =>
      _AllBannersGroundComponentState();
}

class _AllBannersGroundComponentState extends State<AllBannersGroundComponent> {
  @override
  void initState() {
    BlocProvider.of<GroundBloc>(context).add(GetAllGroundRequest());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroundBloc, GroundState>(
      builder: (context, state) {
        if (state.status.isLoaded) {
          return state.allGroundsData.isEmpty
              ? const SizedBox.shrink()
              : CarouselSlider(
                  options: CarouselOptions(
                    onPageChanged: (index, reason) {},
                    height: 0.2.sh,
                    animateToClosest: true,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlay: true,
                    enlargeCenterPage: false,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    pageSnapping: true,
                    viewportFraction: 1,
                  ),
                  items: state.allGroundsData.map((ground) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => GroundDetailScreen(
                                groundModel: ground,
                              ),
                            ),
                          );
                        },
                        child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 0.025.sw),
                            clipBehavior: Clip.hardEdge,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.transparent,
                            ),
                            child: loadNetworkImage(
                                url: ground.images![0]["imageUrl"])));
                  }).toList());
        }
        if (state.status.isInProgress) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CarouselSlider(
                options: CarouselOptions(
                  onPageChanged: (index, reason) {},
                  height: 0.2.sh,
                  animateToClosest: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlay: true,
                  enlargeCenterPage: false,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  pageSnapping: true,
                  viewportFraction: 1,
                ),
                items: [1, 2, 3, 4].map(
                  (e) {
                    return shimmerWidget(
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.black,
                          border: Border.all(
                            width: 1,
                            color: AppColors.borderColor,
                          ),
                        ),
                      ),
                    );
                  },
                ).toList()),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
