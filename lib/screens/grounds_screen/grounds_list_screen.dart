import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sport_app/bloc/ground_bloc/ground_bloc.dart'; // assuming Ground is your model class
import 'package:sport_app/bloc/wishlist_bloc/wishlist_bloc.dart';
import 'package:sport_app/model/ground_model/ground_model.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/screens/booking/sloat_selection_screen.dart';
import 'package:sport_app/screens/grounds_screen/ground_detail_screen.dart';
import 'package:sport_app/utils/helper.dart';
import 'package:sport_app/utils/status_dialog.dart';
import 'package:sport_app/widget/app_text_field.dart';
import 'package:sport_app/widget/empty_place_holder.dart';
import 'package:sport_app/widget/shimmer_widget.dart';

class GroundsListScreen extends StatefulWidget {
  const GroundsListScreen({super.key, required this.name});
  final String name;
  @override
  State<GroundsListScreen> createState() => _GroundsListScreenState();
}

class _GroundsListScreenState extends State<GroundsListScreen> {
  late TextEditingController _searchController;

  List<GroundModel> _filteredGrounds = [];

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    onRefresh();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Future<void> onRefresh() async {
    String? sport;
    BlocProvider.of<GroundBloc>(context).add(
        GetGroundRequest(widget.name == "All Ground" ? sport : widget.name));
  }

  void _filterGrounds(String query) {
    print(BlocProvider.of<GroundBloc>(context).state.groundsData.length);
    setState(() {
      _filteredGrounds = BlocProvider.of<GroundBloc>(context)
          .state
          .groundsData
          .where((ground) => ground.institutionName!
              .toLowerCase()
              .contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: AppColors.black,
        backgroundColor: Colors.grey.shade300,
        title: Text(
          "${widget.name} Grounds",
          style: AppStyle.mediumText.copyWith(
              fontSize: 20.sp, color: AppColors.black, letterSpacing: 0.8),
        ),
        elevation: 0,
      ),
      body: BlocBuilder<GroundBloc, GroundState>(
        builder: (context, state) {
          if (state.status.isLoaded) {
            return state.groundsData.isEmpty
                ? const EmptyPlaceHolder(
                    pending: 0.1,
                    title: "No ground available for football yet",
                    subTitle: "Coming soon...",
                    imagePath: AppAssets.error)
                : RefreshIndicator(
                    onRefresh: onRefresh,
                    color: AppColors.black,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 0.045.sw, vertical: 20),
                            child: AppTextfield(
                              controller: _searchController,
                              radius: 8,
                              height: 40,
                              prefixIcon: Icons.search_rounded,
                              hint: "Search ground here",
                              onChanged: (p0) {
                                _filterGrounds(p0);
                              },
                            ),
                          ),
                          const SizedBox(height: 10),
                          /*
                          _filteredGrounds.isEmpty &&
                                  _searchController.text.isNotEmpty
                              ? const EmptyPlaceHolder(
                                  title: "No Ground Found",
                                  subTitle: "Try to search different",
                                  imagePath: AppAssets.error)
                              : ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: _filteredGrounds.isNotEmpty
                                      ? _filteredGrounds.length
                                      : state.groundsData.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    final ground = _filteredGrounds.isNotEmpty
                                        ? _filteredGrounds[index]
                                        : state.groundsData[index];

                                    return GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          CupertinoPageRoute(
                                            builder: (context) =>
                                                GroundDetailScreen(
                                              groundModel: ground,
                                            ),
                                          ),
                                        );
                                      },
                                      // child: GroundListComponent(groundData: ground),
                                      child: Container(
                                        clipBehavior: Clip.hardEdge,
                                        padding: EdgeInsetsDirectional.only(
                                            start: 0.015.sw,
                                            top: 5,
                                            bottom: 5,
                                            end: 0.01.sw),
                                        margin: EdgeInsets.only(
                                            bottom: 6,
                                            left: 0.02.sw,
                                            right: 0.02.sw),
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(
                                              width: 1,
                                              color: AppColors.borderColor,
                                            )),
                                        child: Column(
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  flex: 6,
                                                  child: state
                                                          .groundsData[index]
                                                          .images!
                                                          .isNotEmpty
                                                      ? Container(
                                                          clipBehavior:
                                                              Clip.hardEdge,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                          ),
                                                          child: Image.network(
                                                            state
                                                                    .groundsData[
                                                                        index]
                                                                    .images![0]
                                                                ["imageUrl"],
                                                            height: 100,
                                                            fit: BoxFit.fill,
                                                          ),
                                                        )
                                                      : Image.asset(
                                                          AppAssets.ground,
                                                          height: 100,
                                                          fit: BoxFit.fill,
                                                        ),
                                                ),
                                                addHorizontalSpacing(0.01),
                                                Expanded(
                                                    flex: 6,
                                                    child: Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 0.01.sw),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              addVerticalSpacing(
                                                                  0.008),
                                                              SizedBox(
                                                                width: 0.3.sw,
                                                                child: Text(
                                                                  state
                                                                      .groundsData[
                                                                          index]
                                                                      .institutionName!,
                                                                  style: AppStyle.mediumBold.copyWith(
                                                                      fontSize:
                                                                          13.5
                                                                              .sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      color: AppColors
                                                                          .black,
                                                                      letterSpacing:
                                                                          0.8),
                                                                ),
                                                              ),
                                                              addVerticalSpacing(
                                                                  0.018),
                                                              Wrap(
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsets.only(
                                                                        top: 0.001
                                                                            .sh),
                                                                    child: Image
                                                                        .asset(
                                                                      AppAssets
                                                                          .footballIcon,
                                                                      height:
                                                                          16,
                                                                    ),
                                                                  ),
                                                                  addHorizontalSpacing(
                                                                      0.004),
                                                                  Text(
                                                                    "Rs. ${state.groundsData.validate()[index].price} Onwards",
                                                                    style: AppStyle.mediumBold.copyWith(
                                                                        fontSize:
                                                                            13.5
                                                                                .sp,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: AppColors
                                                                            .black,
                                                                        letterSpacing:
                                                                            0.8),
                                                                  ),
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                          Column(
                                                            children: [
                                                              addVerticalSpacing(
                                                                  0.005),
                                                              if (state
                                                                  .groundsData
                                                                  .validate()[
                                                                      index]
                                                                  .recommended!) ...[
                                                                Image.asset(
                                                                  AppAssets
                                                                      .recom,
                                                                  height:
                                                                      0.035.sh,
                                                                ),
                                                                addVerticalSpacing(
                                                                    0.012),
                                                              ],
                                                              BlocConsumer<
                                                                  WishlistBloc,
                                                                  WishlistState>(
                                                                listener:
                                                                    (context,
                                                                        state) {
                                                                  if (state
                                                                      .status
                                                                      .isInProgress) {
                                                                    showProgressDialogue(
                                                                        context);
                                                                  } else if (state
                                                                      .status
                                                                      .isLoaded) {
                                                                    Navigator.pop(
                                                                        context);
                                                                    // showScafoldMessage(
                                                                    //     message: state
                                                                    //             .isRemove
                                                                    //         ? "Ground removed successfully from your favorite list"
                                                                    //         : "Ground added successfully in your favorite list",
                                                                    //     context: context);
                                                                  } else if (state
                                                                      .status
                                                                      .isFailed) {
                                                                    Navigator.pop(
                                                                        context);
                                                                    showScafoldMessage(
                                                                        context:
                                                                            context,
                                                                        message:
                                                                            state.message);
                                                                  }
                                                                },
                                                                builder: (context,
                                                                        state1) =>
                                                                    GestureDetector(
                                                                  onTap: () {
                                                                    BlocProvider.of<WishlistBloc>(context).add(state1.grounds.contains(state.groundsData[
                                                                            index])
                                                                        ? RemoveToWishlistRequest(state
                                                                            .groundsData
                                                                            .validate()[
                                                                                index]
                                                                            .id!)
                                                                        : AddToWishlistRequest(state
                                                                            .groundsData[index]
                                                                            .id!));
                                                                  },
                                                                  child: Image
                                                                      .asset(
                                                                    state1.grounds.contains(state.groundsData[
                                                                            index])
                                                                        ? AppAssets
                                                                            .bookmark
                                                                        : AppAssets
                                                                            .bookmarkWhite,
                                                                    height: state1
                                                                            .grounds
                                                                            .contains(state.groundsData.validate()[
                                                                                index])
                                                                        ? 0.035
                                                                            .sh
                                                                        : 0.025
                                                                            .sh,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ))
                                              ],
                                            ),
                                            addVerticalSpacing(0.01),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 0.012.sw),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Image.asset(
                                                        AppAssets.star,
                                                        width: 20,
                                                      ),
                                                      addHorizontalSpacing(
                                                          0.004),
                                                      Text(
                                                        state.groundsData
                                                            .validate()[index]
                                                            .rating
                                                            .validate()
                                                            .toInt()
                                                            .toStringAsFixed(1),
                                                        style: AppStyle
                                                            .normalText
                                                            .copyWith(
                                                                fontSize: 15.sp,
                                                                color: AppColors
                                                                    .black,
                                                                letterSpacing:
                                                                    0.8),
                                                      ),
                                                      addHorizontalSpacing(
                                                          0.01),
                                                      Container(
                                                        width: 2,
                                                        height: 20,
                                                        color: AppColors
                                                            .borderColor,
                                                      ),
                                                      addHorizontalSpacing(
                                                          0.01),
                                                      Image.asset(
                                                        AppAssets.location,
                                                        width: 12,
                                                      ),
                                                      addHorizontalSpacing(
                                                          0.004),
                                                      Text(
                                                        state.groundsData
                                                                .validate()[
                                                                    index]
                                                                .location ??
                                                            "Surat",
                                                        style: AppStyle
                                                            .normalText
                                                            .copyWith(
                                                                fontSize: 15.sp,
                                                                color: AppColors
                                                                    .black,
                                                                letterSpacing:
                                                                    0.8),
                                                      ),
                                                    ],
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                      color: AppColors.orange,
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 2,
                                                              horizontal:
                                                                  0.02.sw),
                                                      child: Center(
                                                        child: Text(
                                                          "BOOK YOUR SLOT NOW",
                                                          style: AppStyle
                                                              .mediumText
                                                              .copyWith(
                                                                  fontSize:
                                                                      15.sp,
                                                                  color: AppColors
                                                                      .white,
                                                                  letterSpacing:
                                                                      0.2,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            addVerticalSpacing(0.009),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                */
                          _filteredGrounds.isEmpty &&
                                  _searchController.text.isNotEmpty
                              ? const EmptyPlaceHolder(
                                  title: "No Ground Found",
                                  subTitle: "Try to search different",
                                  imagePath: AppAssets.error)
                              : ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: _filteredGrounds.isNotEmpty
                                      ? _filteredGrounds.length
                                      : state.groundsData.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    final ground = _filteredGrounds.isNotEmpty
                                        ? _filteredGrounds[index]
                                        : state.groundsData[index];

                                    List<String> allSports = [];
                                    if (ground
                                        .school!.sportsgrounds!.isNotEmpty) {
                                      for (String sports
                                          in ground.school!.sportsgrounds!) {
                                        allSports.addAll(sports.split(','));
                                      }
                                    }

                                    return GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          CupertinoPageRoute(
                                            builder: (context) =>
                                                GroundDetailScreen(
                                              groundModel: ground,
                                            ),
                                          ),
                                        );
                                      },
                                      // child: GroundListComponent(groundData: ground),
                                      child: Container(
                                        clipBehavior: Clip.hardEdge,
                                        // padding: EdgeInsetsDirectional.only(
                                        //     start: 0.015.sw,
                                        //     top: 5,
                                        //     bottom: 5,
                                        //     end: 0.01.sw),
                                        margin: EdgeInsets.only(
                                            bottom: 15,
                                            left: 0.03.sw,
                                            right: 0.03.sw),
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(
                                              width: 1,
                                              color: AppColors.borderColor,
                                            )),
                                        child: Column(
                                          children: [
                                            Container(
                                              decoration:
                                                  boxDecorationWithRoundedCorners(
                                                borderRadius: radius(),
                                              ),
                                              width: context.width(),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
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
                                                            borderRadius:
                                                                radiusOnly(
                                                                    topLeft:
                                                                        8.0,
                                                                    topRight:
                                                                        8.0),
                                                            backgroundColor:
                                                                context
                                                                    .cardColor,
                                                            decorationImage:
                                                                DecorationImage(
                                                                    image:
                                                                        NetworkImage(
                                                                      state
                                                                          .groundsData[
                                                                              index]
                                                                          .images![0]["imageUrl"],
                                                                    ),
                                                                    fit: BoxFit
                                                                        .cover),
                                                            border: Border.all(
                                                                color: context
                                                                    .dividerColor),
                                                          ),
                                                          width:
                                                              context.width(),
                                                        ),
                                                        Positioned(
                                                          top: 8,
                                                          left: 9,
                                                          child: Container(
                                                            padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        4,
                                                                    vertical:
                                                                        2),
                                                            constraints:
                                                                BoxConstraints(
                                                                    maxWidth:
                                                                        context.width() *
                                                                            0.3),
                                                            decoration:
                                                                boxDecorationWithShadow(
                                                              backgroundColor:
                                                                  context
                                                                      .cardColor
                                                                      .withOpacity(
                                                                          0.9),
                                                              borderRadius:
                                                                  radius(),
                                                            ),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Text(
                                                                  state
                                                                      .groundsData
                                                                      .validate()[
                                                                          index]
                                                                      .rating
                                                                      .validate()
                                                                      .toInt()
                                                                      .toStringAsFixed(
                                                                          1),
                                                                  style: AppStyle.normalText.copyWith(
                                                                      fontSize:
                                                                          15.sp,
                                                                      color: AppColors
                                                                          .black,
                                                                      letterSpacing:
                                                                          0.8),
                                                                ),
                                                                addHorizontalSpacing(
                                                                    0.004),
                                                                const Icon(
                                                                  Icons.star,
                                                                  color: black,
                                                                  size: 15,
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        // Positioned(
                                                        //   top: 12,
                                                        //   left: 12,
                                                        //   child: Container(
                                                        //     padding:
                                                        //         const EdgeInsets
                                                        //             .symmetric(
                                                        //             horizontal:
                                                        //                 2,
                                                        //             vertical:
                                                        //                 2),
                                                        //     constraints:
                                                        //         BoxConstraints(
                                                        //             maxWidth:
                                                        //                 context.width() *
                                                        //                     0.3),
                                                        //     decoration:
                                                        //         boxDecorationWithShadow(
                                                        //       backgroundColor:
                                                        //           context
                                                        //               .cardColor
                                                        //               .withOpacity(
                                                        //                   0.9),
                                                        //       borderRadius:
                                                        //           radius(),
                                                        //     ),
                                                        //     child: Marquee(
                                                        //       directionMarguee:
                                                        //           DirectionMarguee
                                                        //               .oneDirection,
                                                        //       child: Text(
                                                        //         "% Upto 10% off"
                                                        //             .toUpperCase(),
                                                        //         style: boldTextStyle(
                                                        //             color: AppColors
                                                        //                 .black,
                                                        //             size: 12),
                                                        //       ).paddingSymmetric(
                                                        //           horizontal: 8,
                                                        //           vertical: 4),
                                                        //     ),
                                                        //   ),
                                                        // ),
                                                        Positioned(
                                                          top: 0,
                                                          right: 5,
                                                          child: Container(
                                                            padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        2,
                                                                    vertical:
                                                                        2),
                                                            constraints:
                                                                BoxConstraints(
                                                                    maxWidth:
                                                                        context.width() *
                                                                            0.3),
                                                            decoration:
                                                                boxDecorationWithShadow(
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                            ),
                                                            child: Column(
                                                              children: [
                                                                addVerticalSpacing(
                                                                    0.005),
                                                                if (state
                                                                    .groundsData
                                                                    .validate()[
                                                                        index]
                                                                    .recommended!) ...[
                                                                  const Icon(
                                                                    Icons.star,
                                                                    color: Colors
                                                                        .amber,
                                                                  ),
                                                                  addVerticalSpacing(
                                                                      0.012),
                                                                ],
                                                                BlocConsumer<
                                                                    WishlistBloc,
                                                                    WishlistState>(
                                                                  listener:
                                                                      (context,
                                                                          state) {
                                                                    if (state
                                                                        .status
                                                                        .isInProgress) {
                                                                      showProgressDialogue(
                                                                          context);
                                                                    } else if (state
                                                                        .status
                                                                        .isLoaded) {
                                                                      Navigator.pop(
                                                                          context);
                                                                      // showScafoldMessage(
                                                                      //     message: state
                                                                      //             .isRemove
                                                                      //         ? "Ground removed successfully from your favorite list"
                                                                      //         : "Ground added successfully in your favorite list",
                                                                      //     context: context);
                                                                    } else if (state
                                                                        .status
                                                                        .isFailed) {
                                                                      Navigator.pop(
                                                                          context);
                                                                      showScafoldMessage(
                                                                          context:
                                                                              context,
                                                                          message:
                                                                              state.message);
                                                                    }
                                                                  },
                                                                  builder: (context,
                                                                          state1) =>
                                                                      GestureDetector(
                                                                    onTap: () {
                                                                      BlocProvider.of<WishlistBloc>(context).add(state1.grounds.contains(state.groundsData[
                                                                              index])
                                                                          ? RemoveToWishlistRequest(state
                                                                              .groundsData
                                                                              .validate()[
                                                                                  index]
                                                                              .id!)
                                                                          : AddToWishlistRequest(state
                                                                              .groundsData[index]
                                                                              .id!));
                                                                    },
                                                                    child: Icon(
                                                                      state1.grounds.contains(state.groundsData[
                                                                              index])
                                                                          ? Icons
                                                                              .favorite
                                                                          : Icons
                                                                              .favorite_border_outlined,
                                                                      color: state1.grounds.contains(state.groundsData[
                                                                              index])
                                                                          ? Colors
                                                                              .red
                                                                          : Colors
                                                                              .white,
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
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      10.height,
                                                      HorizontalList(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(0),
                                                        itemCount:
                                                            allSports.length,
                                                        itemBuilder:
                                                            (context, index) {
                                                          if (index == 2) {
                                                            return Container(
                                                              decoration: boxDecorationWithShadow(
                                                                  backgroundColor: context
                                                                      .cardColor
                                                                      .withOpacity(
                                                                          0.9),
                                                                  borderRadius:
                                                                      radius(
                                                                          20),
                                                                  border: Border
                                                                      .all()),
                                                              child: Row(
                                                                children: [
                                                                  const Icon(
                                                                    Icons.add,
                                                                    size: 18,
                                                                  ),
                                                                  4.width,
                                                                  const Text(
                                                                      "3"),
                                                                ],
                                                              ).paddingSymmetric(
                                                                  horizontal: 8,
                                                                  vertical: 4),
                                                            );
                                                          }
                                                          if (index >= 3) {
                                                            return const Offstage();
                                                          }

                                                          return Container(
                                                            decoration: boxDecorationWithShadow(
                                                                backgroundColor:
                                                                    context
                                                                        .cardColor
                                                                        .withOpacity(
                                                                            0.9),
                                                                borderRadius:
                                                                    radius(20),
                                                                border: Border
                                                                    .all()),
                                                            child: Row(
                                                              children: [
                                                                const Icon(
                                                                  Icons
                                                                      .sports_cricket,
                                                                  size: 18,
                                                                ),
                                                                4.width,
                                                                Text(allSports[
                                                                    index]),
                                                              ],
                                                            ).paddingSymmetric(
                                                                horizontal: 8,
                                                                vertical: 4),
                                                          );
                                                        },
                                                      ),
                                                      13.height,
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        left:
                                                                            4),
                                                                child: Marquee(
                                                                  directionMarguee:
                                                                      DirectionMarguee
                                                                          .oneDirection,
                                                                  child: Text(
                                                                      "${state.groundsData[index].institutionName}",
                                                                      style:
                                                                          boldTextStyle()),
                                                                ),
                                                              ),
                                                              1.height,
                                                              Row(
                                                                children: [
                                                                  const Icon(Icons
                                                                      .location_on_outlined),
                                                                  Text(
                                                                    ground.location ??
                                                                        "Surat",
                                                                    style: secondaryTextStyle(
                                                                        size:
                                                                            12,
                                                                        color:
                                                                            textPrimaryColor),
                                                                    maxLines: 2,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                  )
                                                                ],
                                                              ),
                                                              // Text(
                                                              //   "Monday to Friday: ${ground.school!.schoolSchedule!.weekdayfromtime}",
                                                              //   style: AppStyle
                                                              //       .mediumBold
                                                              //       .copyWith(
                                                              //     fontSize:
                                                              //         12.sp,
                                                              //     fontWeight:
                                                              //         FontWeight
                                                              //             .w400,
                                                              //     color:
                                                              //         AppColors
                                                              //             .black,
                                                              //     letterSpacing:
                                                              //         0.2,
                                                              //   ),
                                                              // ),
                                                              // Text(
                                                              //   "Saturday to Sunday: ${ground.school!.schoolSchedule!.weekdaytotime}",
                                                              //   style: AppStyle
                                                              //       .mediumBold
                                                              //       .copyWith(
                                                              //     fontSize:
                                                              //         12.sp,
                                                              //     fontWeight:
                                                              //         FontWeight
                                                              //             .w400,
                                                              //     color:
                                                              //         AppColors
                                                              //             .black,
                                                              //     letterSpacing:
                                                              //         0.2,
                                                              //   ),
                                                              // ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      13.height,
                                                      Row(
                                                        children: [
                                                          GestureDetector(
                                                            onTap: () {
                                                              Navigator.push(
                                                                  context,
                                                                  CupertinoPageRoute(
                                                                    builder: (context) =>
                                                                        SlotSelectionScreen(
                                                                            groundData:
                                                                                ground),
                                                                  ));
                                                            },
                                                            child: Container(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(10),
                                                              decoration: boxDecorationWithShadow(
                                                                  backgroundColor:
                                                                      AppColors
                                                                          .black,
                                                                  borderRadius:
                                                                      radius(
                                                                          20),
                                                                  border: Border
                                                                      .all()),
                                                              child: Center(
                                                                child: Text(
                                                                  'Book now',
                                                                  style: primaryTextStyle(
                                                                      color:
                                                                          white),
                                                                ),
                                                              ),
                                                            ),
                                                          ).flexible(),
                                                          16.width,
                                                          Container(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(10),
                                                            decoration: boxDecorationWithShadow(
                                                                backgroundColor:
                                                                    context
                                                                        .cardColor
                                                                        .withOpacity(
                                                                            0.9),
                                                                borderRadius:
                                                                    radius(20),
                                                                border: Border
                                                                    .all()),
                                                            child: Center(
                                                              child: Text(
                                                                'More detail',
                                                                style:
                                                                    primaryTextStyle(),
                                                              ),
                                                            ),
                                                          ).flexible(),
                                                        ],
                                                      ).paddingSymmetric(
                                                          horizontal: 8),
                                                      8.height,
                                                    ],
                                                  ).paddingSymmetric(
                                                      horizontal: 10),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                        ],
                      ),
                    ),
                  );
          }
          if (state.status.isInProgress) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return shimmerWidget(
                    child: Container(
                      height: 0.15.sh,
                      margin: const EdgeInsets.only(bottom: 15),
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
              ),
            );
          }
          return EmptyPlaceHolder(
            title: "Oops",
            buttonText: "Try Again",
            onTap: () {
              onRefresh();
            },
            subTitle: "Something went wrong",
            imagePath: AppAssets.error,
          );
        },
      ),
    );
  }
}
