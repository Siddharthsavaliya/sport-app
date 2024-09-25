import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/bloc/tournament_bloc/tournament_bloc.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:sport_app/widget/empty_place_holder.dart';

class PlayerListPage extends StatefulWidget {
  final String id;

  const PlayerListPage({
    super.key,
    required this.id,
  });

  @override
  State<PlayerListPage> createState() => _PlayerListPageState();
}

class _PlayerListPageState extends State<PlayerListPage> {
  late List<bool> _isExpandedList; // Track expansion state for each team

  @override
  void initState() {
    super.initState();
    BlocProvider.of<TournamentBloc>(context).add(GetTeamRequest(widget.id));
    _isExpandedList = []; // Initialize empty list
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 243, 243),
      appBar: AppBar(
        title: Text(
          'Players',
          style: AppStyle.mediumBold.copyWith(
            color: AppColors.white,
            fontSize: 18.sp,
          ),
        ),
        backgroundColor: AppColors.primaryColor,
        elevation: 2,
        shadowColor: AppColors.gray,
      ),
      body: BlocBuilder<TournamentBloc, TournamentState>(
        builder: (context, state) {
          if (state.status.isLoaded) {
            if (_isExpandedList.isEmpty) {
              _isExpandedList = List.generate(
                state.teamList.length,
                (index) => index == 0, // Expand the first team by default
              );
            }

            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.03.sw),
              child: ListView.builder(
                itemCount: state.teamList.length,
                padding: const EdgeInsets.only(top: 10),
                itemBuilder: (context, teamIndex) {
                  final team = state.teamList[teamIndex];
                  final teamName = team.name ?? '';
                  final capitalizedTeamName = teamName.isNotEmpty
                      ? teamName[0].toUpperCase() + teamName.substring(1)
                      : '';

                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.h),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius:
                            BorderRadius.circular(12), // Rounded corners
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 8,
                            offset: const Offset(0, 3), // Shadow position
                          ),
                        ],
                      ),
                      child: Theme(
                        data: ThemeData()
                            .copyWith(dividerColor: Colors.transparent),
                        child: ExpansionTile(
                          initiallyExpanded: _isExpandedList[
                              teamIndex], // Manage initial expansion
                          onExpansionChanged: (expanded) {
                            setState(() {
                              _isExpandedList[teamIndex] = expanded;
                            });
                          },
                          title: Text(
                            capitalizedTeamName,
                            style: AppStyle.mediumBold.copyWith(
                              fontSize: 18.sp,
                            ),
                          ),
                          backgroundColor: Colors
                              .transparent, // No color change on expansion
                          collapsedBackgroundColor: Colors.transparent,
                          textColor: AppColors.primaryColor,
                          iconColor: AppColors.primaryColor,
                          children: List.generate(
                            team.players.length,
                            (playerIndex) {
                              final player = team.players[playerIndex];
                              return Container(
                                margin: EdgeInsets.only(
                                    left: 16.w,
                                    right: 16.w,
                                    top: 8.h,
                                    bottom:
                                        playerIndex == team.players.length - 1
                                            ? 15.h
                                            : 6.h),
                                padding: EdgeInsets.all(16.sp),
                                decoration: BoxDecoration(
                                  color:
                                      AppColors.primaryColor.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(12),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      spreadRadius: 1,
                                      blurRadius: 8,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      backgroundImage:
                                          CachedNetworkImageProvider(
                                              player.image ??
                                                  AppAssets.profile),
                                      radius: 35, // Larger image size
                                      backgroundColor: AppColors.white,
                                    ),
                                    SizedBox(width: 16.w),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            player.name ?? "N/A",
                                            style: AppStyle.mediumBold.copyWith(
                                              fontSize: 18.sp,
                                              color: AppColors.black,
                                            ),
                                          ),
                                          SizedBox(height: 4.h),
                                          Text(
                                            player.role ?? "Role: N/A",
                                            style: AppStyle.normalText.copyWith(
                                              color: AppColors.black,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                          SizedBox(height: 8.h),
                                          Text(
                                            'Age: ${player.age}',
                                            style: AppStyle.normalText.copyWith(
                                              color: AppColors.black,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                          SizedBox(height: 4.h),
                                          Text(
                                            'Phone: ${player.phoneNumber ?? "N/A"}',
                                            style: AppStyle.normalText.copyWith(
                                              color: AppColors.black,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                          SizedBox(height: 4.h),
                                          Text(
                                            'Email: ${player.email ?? "N/A"}',
                                            style: AppStyle.normalText.copyWith(
                                              color: AppColors.black,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          }

          if (state.status.isInProgress) {
            return const Center(
              child: CircularProgressIndicator(
                color: AppColors.primaryColor,
              ),
            );
          }

          if (state.status.isFailed) {
            return const EmptyPlaceHolder(
              title: "Oops",
              subTitle: "Something went wrong",
              imagePath: AppAssets.error,
            );
          }

          return const SizedBox();
        },
      ),
    );
  }
}
