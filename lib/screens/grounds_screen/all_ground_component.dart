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

class AllGroundComponent extends StatefulWidget {
  const AllGroundComponent({super.key, this.removedPending = false});
  final bool removedPending;
  @override
  State<AllGroundComponent> createState() => _AllGroundComponentState();
}

class _AllGroundComponentState extends State<AllGroundComponent> {
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
                    height: 0.29.sh,
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
                    List<String> allSports = [];
                    if (ground.school!.sportsgrounds!.isNotEmpty) {
                      for (String sports in ground.school!.sportsgrounds!) {
                        allSports.addAll(sports.split(','));
                      }
                    }
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
                        clipBehavior: Clip.hardEdge,
                        margin: widget.removedPending
                            ? null
                            : EdgeInsets.only(left: 0.03.sw, right: 0.03.sw),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              width: 1,
                              color: AppColors.borderColor,
                            )),
                        child: Column(
                          children: [
                            Container(
                              decoration: boxDecorationWithRoundedCorners(
                                borderRadius: radius(),
                              ),
                              width: context.width(),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                    height: 140,
                                    width: context.width(),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Container(
                                          decoration:
                                              boxDecorationWithRoundedCorners(
                                            borderRadius: radiusOnly(
                                                topLeft: 8.0, topRight: 8.0),
                                            backgroundColor: context.cardColor,
                                            decorationImage: DecorationImage(
                                                image: NetworkImage(
                                                  ground.images![0]["imageUrl"],
                                                ),
                                                fit: BoxFit.cover),
                                            border: Border.all(
                                                color: context.dividerColor),
                                          ),
                                          width: context.width(),
                                        ),
                                        Positioned(
                                          top: 8,
                                          left: 9,
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 4, vertical: 2),
                                            constraints: BoxConstraints(
                                                maxWidth:
                                                    context.width() * 0.3),
                                            decoration: boxDecorationWithShadow(
                                              backgroundColor: context.cardColor
                                                  .withOpacity(0.9),
                                              borderRadius: radius(),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                  ground.rating
                                                      .validate()
                                                      .toInt()
                                                      .toStringAsFixed(1),
                                                  style: AppStyle.normalText
                                                      .copyWith(
                                                          fontSize: 15.sp,
                                                          color:
                                                              AppColors.black,
                                                          letterSpacing: 0.8),
                                                ),
                                                addHorizontalSpacing(0.004),
                                                const Icon(
                                                  Icons.star,
                                                  color: black,
                                                  size: 15,
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 0,
                                          right: 5,
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 2, vertical: 2),
                                            constraints: BoxConstraints(
                                                maxWidth:
                                                    context.width() * 0.3),
                                            decoration: boxDecorationWithShadow(
                                              backgroundColor:
                                                  Colors.transparent,
                                            ),
                                            child: Column(
                                              children: [
                                                addVerticalSpacing(0.005),
                                                if (ground.recommended!) ...[
                                                  const Icon(
                                                    Icons.star,
                                                    color: Colors.amber,
                                                  ),
                                                  addVerticalSpacing(0.012),
                                                ],
                                                BlocConsumer<WishlistBloc,
                                                    WishlistState>(
                                                  listener: (context, state) {
                                                    if (state.isAdd) {
                                                      if (state.status
                                                          .isInProgress) {
                                                        showProgressDialogue(
                                                            context);
                                                      } else if (state
                                                          .status.isLoaded) {
                                                        Navigator.pop(context);
                                                        // showScafoldMessage(
                                                        //     message: state
                                                        //             .isRemove
                                                        //         ? "Ground removed successfully from your favorite list"
                                                        //         : "Ground added successfully in your favorite list",
                                                        //     context: context);
                                                      } else if (state
                                                          .status.isFailed) {
                                                        Navigator.pop(context);
                                                        showScafoldMessage(
                                                            context: context,
                                                            message:
                                                                state.message);
                                                      }
                                                    }
                                                  },
                                                  builder: (context, state1) =>
                                                      GestureDetector(
                                                    onTap: () {
                                                      BlocProvider.of<
                                                                  WishlistBloc>(
                                                              context)
                                                          .add(state1.grounds
                                                                  .contains(
                                                                      ground)
                                                              ? RemoveToWishlistRequest(
                                                                  ground.id!)
                                                              : AddToWishlistRequest(
                                                                  ground.id!));
                                                    },
                                                    child: Icon(
                                                      state1.grounds
                                                              .contains(ground)
                                                          ? Icons.favorite
                                                          : Icons
                                                              .favorite_border_outlined,
                                                      color: state1.grounds
                                                              .contains(ground)
                                                          ? Colors.red
                                                          : Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 4),
                                        child: Text(
                                            "₹ ${ground.price} / Hour / Player",
                                            style: boldTextStyle()),
                                      ),
                                      10.height,
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 4),
                                                child: Marquee(
                                                  directionMarguee:
                                                      DirectionMarguee
                                                          .oneDirection,
                                                  child: Text(
                                                      "${ground.institutionName}",
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: boldTextStyle()),
                                                ),
                                              ),
                                              1.height,
                                              Row(
                                                children: [
                                                  const Icon(Icons
                                                      .location_on_outlined),
                                                  Text(
                                                    ground.location ?? "Surat",
                                                    style: secondaryTextStyle(
                                                        size: 12,
                                                        color:
                                                            textPrimaryColor),
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      // 12.height,
                                      // Row(
                                      //   children: [
                                      //     GestureDetector(
                                      //       onTap: () {
                                      //         Navigator.push(
                                      //             context,
                                      //             CupertinoPageRoute(
                                      //               builder: (context) =>
                                      //                   SlotSelectionScreen(
                                      //                       groundData: ground),
                                      //             ));
                                      //       },
                                      //       child: Container(
                                      //         padding: const EdgeInsets.all(10),
                                      //         decoration:
                                      //             boxDecorationWithShadow(
                                      //                 backgroundColor:
                                      //                     AppColors.black,
                                      //                 borderRadius: radius(20),
                                      //                 border: Border.all()),
                                      //         child: Center(
                                      //           child: Text(
                                      //             'Book now',
                                      //             style: primaryTextStyle(
                                      //                 color: white),
                                      //           ),
                                      //         ),
                                      //       ),
                                      //     ).flexible(),
                                      //     16.width,
                                      //     Container(
                                      //       padding: const EdgeInsets.all(10),
                                      //       decoration: boxDecorationWithShadow(
                                      //           backgroundColor: context
                                      //               .cardColor
                                      //               .withOpacity(0.9),
                                      //           borderRadius: radius(20),
                                      //           border: Border.all()),
                                      //       child: Center(
                                      //         child: Text(
                                      //           'More detail',
                                      //           style: primaryTextStyle(),
                                      //         ),
                                      //       ),
                                      //     ).flexible(),
                                      //   ],
                                      // ).paddingSymmetric(horizontal: 8),
                                      11.height,
                                    ],
                                  ).paddingSymmetric(horizontal: 10),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList());
        }
        if (state.status.isInProgress) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CarouselSlider(
                options: CarouselOptions(
                  onPageChanged: (index, reason) {},
                  height: 0.25.sh,
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
                        margin: const EdgeInsetsDirectional.symmetric(
                            horizontal: 10),
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
