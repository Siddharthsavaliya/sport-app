import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/bloc/common_bloc/common_bloc.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/widget/app_expantation_tile.dart';
import 'package:sport_app/widget/empty_place_holder.dart';
import 'package:sport_app/widget/shimmer_widget.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({super.key});

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  @override
  void initState() {
    BlocProvider.of<CommonBloc>(context).add(const GetFaqEvent());
    super.initState();
  }

  File? file;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
          elevation: 0,
          foregroundColor: AppColors.white,
          title: Text(
            "Faq's",
            style: AppStyle.mediumText.copyWith(
                fontSize: 24.sp, color: AppColors.white, letterSpacing: 0.5),
          ),
        ),
        body: BlocConsumer<CommonBloc, CommonState>(
          listener: (context, state) async {},
          builder: (context, state) {
            if (state.status.isLoaded) {
              return ListView.builder(
                itemCount: state.faqList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      AppExpansionTile(
                        removePadding: true,
                        title: state.faqList[index].question!,
                        style: AppStyle.mediumBold.copyWith(
                            fontSize: 16.sp,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w500,
                            color: AppColors.black.withOpacity(0.9)),
                        children: [
                          Markdown(
                            padding: EdgeInsets.only(
                              top: 0,
                              left: 0.042.sw,
                              right: 0.042.sw,
                            ),
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            data: state.faqList[index].answer!,
                          )
                        ],
                      ),
                      const Divider()
                    ],
                  );
                },
              );
            } else if (state.status.isFailed) {
              return const EmptyPlaceHolder(
                title: "Opps",
                subTitle: "Something went wrong",
                imagePath: AppAssets.error,
              );
            } else if (state.status.isInProgress) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return shimmerWidget(
                      child: Container(
                        height: 0.1.sh,
                        width: double.infinity,
                        margin: const EdgeInsets.only(bottom: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColors.black,
                        ),
                      ),
                    );
                  },
                ),
              );
            }
            return Container();
          },
        ));
  }
}
