import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sport_app/bloc/wishlist_bloc/wishlist_bloc.dart';
import 'package:sport_app/model/ground_model/ground_model.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/utils/helper.dart';
import 'package:sport_app/utils/status_dialog.dart';

class GroundListComponent extends StatefulWidget {
  final GroundModel groundData;
  final bool isFromBookingSummery;
  const GroundListComponent(
      {super.key, required this.groundData, this.isFromBookingSummery = false});

  @override
  State<GroundListComponent> createState() => _GroundListComponentState();
}

class _GroundListComponentState extends State<GroundListComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.only(bottom: 6),
      width: double.infinity,
      padding:
          EdgeInsetsDirectional.symmetric(horizontal: 0.015.sw, vertical: 5),
      decoration: boxDecorationDefault(color: Colors.white),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: widget.isFromBookingSummery
                ? CrossAxisAlignment.center
                : CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 6,
                child: widget.groundData.images!.isNotEmpty
                    ? Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.network(
                          widget.groundData.images![0]["imageUrl"],
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
                    padding: EdgeInsets.only(right: 0.01.sw),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            addVerticalSpacing(0.008),
                            SizedBox(
                              width: 0.3.sw,
                              child: Text(
                                widget.groundData.institutionName!,
                                style: AppStyle.mediumBold.copyWith(
                                    fontSize: 13.5.sp,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.black,
                                    letterSpacing: 0.8),
                              ),
                            ),
                            addVerticalSpacing(0.018),
                            Wrap(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 0.001.sh),
                                  child: Image.asset(
                                    AppAssets.footballIcon,
                                    height: 16,
                                  ),
                                ),
                                addHorizontalSpacing(0.004),
                                Text(
                                  "Rs. ${widget.groundData.price} Onwards",
                                  style: AppStyle.mediumBold.copyWith(
                                      fontSize: 13.5.sp,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.black,
                                      letterSpacing: 0.8),
                                ),
                              ],
                            )
                          ],
                        ),
                        if (!widget.isFromBookingSummery)
                          Column(
                            children: [
                              addVerticalSpacing(0.005),
                              if (widget.groundData.recommended!) ...[
                                Image.asset(
                                  AppAssets.recom,
                                  height: 0.035.sh,
                                ),
                                addVerticalSpacing(0.012),
                              ],
                              BlocConsumer<WishlistBloc, WishlistState>(
                                listener: (context, state) {
                                  if (state.isAdd || state.isRemove) {
                                    if (state.status.isInProgress) {
                                      showProgressDialogue(context);
                                    } else if (state.status.isLoaded) {
                                      Navigator.pop(context);
                                    } else if (state.status.isFailed) {
                                      Navigator.pop(context);
                                      showScafoldMessage(
                                          context: context,
                                          message: state.message);
                                    }
                                  }
                                },
                                builder: (context, state1) => GestureDetector(
                                  onTap: () {
                                    BlocProvider.of<WishlistBloc>(context).add(
                                        state1.grounds
                                                .contains(widget.groundData)
                                            ? RemoveToWishlistRequest(
                                                widget.groundData.id!)
                                            : AddToWishlistRequest(
                                                widget.groundData.id!));
                                  },
                                  child: Image.asset(
                                    state1.grounds.contains(widget.groundData)
                                        ? AppAssets.bookmark
                                        : AppAssets.bookmarkWhite,
                                    height: state1.grounds
                                            .contains(widget.groundData)
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
          if (!widget.isFromBookingSummery) ...{
            addVerticalSpacing(0.01),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.012.sw),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        AppAssets.star,
                        width: 20,
                      ),
                      addHorizontalSpacing(0.004),
                      Text(
                        widget.groundData.rating
                            .validate()
                            .toInt()
                            .toStringAsFixed(1),
                        style: AppStyle.normalText.copyWith(
                            fontSize: 15.sp,
                            color: AppColors.black,
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
                        "Surat",
                        style: AppStyle.normalText.copyWith(
                            fontSize: 15.sp,
                            color: AppColors.black,
                            letterSpacing: 0.8),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.orange,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 2, horizontal: 0.02.sw),
                      child: Center(
                        child: Text(
                          "BOOK YOUR SLOT NOW",
                          style: AppStyle.mediumText.copyWith(
                              fontSize: 15.sp,
                              color: AppColors.white,
                              letterSpacing: 0.2,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            addVerticalSpacing(0.009),
          },
        ],
      ),
    );
  }
}
