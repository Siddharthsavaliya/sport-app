import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/bloc/ground_bloc/ground_bloc.dart'; // assuming Ground is your model class
import 'package:sport_app/bloc/wishlist_bloc/wishlist_bloc.dart';
import 'package:sport_app/model/ground_model/ground_model.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
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
    BlocProvider.of<GroundBloc>(context).add(GetGroundRequest());
  }

  void _filterGrounds(String query) {
    setState(() {
      _filteredGrounds = BlocProvider.of<GroundBloc>(context)
          .state
          .grounds
          .where((ground) =>
              ground.name!.toLowerCase().contains(query.toLowerCase()))
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
            return RefreshIndicator(
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
                        onChanged: _filterGrounds,
                      ),
                    ),
                    const SizedBox(height: 10),
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
                                : state.grounds.length,
                            itemBuilder: (BuildContext context, int index) {
                              final ground = _filteredGrounds.isNotEmpty
                                  ? _filteredGrounds[index]
                                  : state.grounds[index];
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
                                  margin: const EdgeInsets.only(bottom: 6),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
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
                                            child: Image.network(
                                              state.grounds[index].image!,
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
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        addVerticalSpacing(
                                                            0.008),
                                                        Text(
                                                          state.grounds[index]
                                                              .name!,
                                                          style: AppStyle
                                                              .mediumBold
                                                              .copyWith(
                                                                  fontSize:
                                                                      13.5.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color:
                                                                      AppColors
                                                                          .black,
                                                                  letterSpacing:
                                                                      0.8),
                                                        ),
                                                        addVerticalSpacing(
                                                            0.018),
                                                        Wrap(
                                                          children: [
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 0.001
                                                                          .sh),
                                                              child:
                                                                  Image.asset(
                                                                AppAssets
                                                                    .footballIcon,
                                                                height: 16,
                                                              ),
                                                            ),
                                                            addHorizontalSpacing(
                                                                0.004),
                                                            Text(
                                                              "Rs. ${state.grounds[index].price!} Onwards",
                                                              style: AppStyle.mediumBold.copyWith(
                                                                  fontSize:
                                                                      13.5.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color:
                                                                      AppColors
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
                                                        if (state.grounds[index]
                                                            .recommended!) ...[
                                                          Image.asset(
                                                            AppAssets.recom,
                                                            height: 0.035.sh,
                                                          ),
                                                          addVerticalSpacing(
                                                              0.012),
                                                        ],
                                                        BlocConsumer<
                                                            WishlistBloc,
                                                            WishlistState>(
                                                          listener:
                                                              (context, state) {
                                                            if (state.status
                                                                .isInProgress) {
                                                              showProgressDialogue(
                                                                  context);
                                                            } else if (state
                                                                .status
                                                                .isLoaded) {
                                                              Navigator.pop(
                                                                  context);
                                                              showScafoldMessage(
                                                                  message: state
                                                                          .isRemove
                                                                      ? "Ground removed successfully from your favorite list"
                                                                      : "Ground added successfully in your favorite list",
                                                                  context:
                                                                      context);
                                                            } else if (state
                                                                .status
                                                                .isFailed) {
                                                              Navigator.pop(
                                                                  context);
                                                              showScafoldMessage(
                                                                  context:
                                                                      context,
                                                                  message: state
                                                                      .message);
                                                            }
                                                          },
                                                          builder: (context,
                                                                  state1) =>
                                                              GestureDetector(
                                                            onTap: () {
                                                              BlocProvider.of<WishlistBloc>(context).add(state1
                                                                      .grounds
                                                                      .contains(
                                                                          state.grounds[
                                                                              index])
                                                                  ? RemoveToWishlistRequest(state
                                                                      .grounds[
                                                                          index]
                                                                      .id!)
                                                                  : AddToWishlistRequest(state
                                                                      .grounds[
                                                                          index]
                                                                      .id!));
                                                            },
                                                            child: Image.asset(
                                                              state1.grounds.contains(
                                                                      state.grounds[
                                                                          index])
                                                                  ? AppAssets
                                                                      .bookmark
                                                                  : AppAssets
                                                                      .bookmarkWhite,
                                                              height: state1
                                                                      .grounds
                                                                      
                                                                      .contains(
                                                                          state.grounds[
                                                                              index])
                                                                  ? 0.035.sh
                                                                  : 0.025.sh,
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
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  AppAssets.star,
                                                  width: 20,
                                                ),
                                                addHorizontalSpacing(0.004),
                                                Text(
                                                  state.grounds[index].rating!
                                                      .toInt()
                                                      .toStringAsFixed(1),
                                                  style: AppStyle.normalText
                                                      .copyWith(
                                                          fontSize: 15.sp,
                                                          color:
                                                              AppColors.black,
                                                          letterSpacing: 0.8),
                                                ),
                                                addHorizontalSpacing(0.01),
                                                Container(
                                                  width: 2,
                                                  height: 20,
                                                  color: AppColors.borderColor,
                                                ),
                                                addHorizontalSpacing(0.01),
                                                Image.asset(
                                                  AppAssets.location,
                                                  width: 12,
                                                ),
                                                addHorizontalSpacing(0.004),
                                                Text(
                                                  state
                                                      .grounds[index].location!,
                                                  style: AppStyle.normalText
                                                      .copyWith(
                                                          fontSize: 15.sp,
                                                          color:
                                                              AppColors.black,
                                                          letterSpacing: 0.8),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: AppColors.orange,
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 2,
                                                    horizontal: 0.02.sw),
                                                child: Center(
                                                  child: Text(
                                                    "BOOK YOUR SLOT NOW",
                                                    style: AppStyle.mediumText
                                                        .copyWith(
                                                            fontSize: 15.sp,
                                                            color:
                                                                AppColors.white,
                                                            letterSpacing: 0.2,
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
