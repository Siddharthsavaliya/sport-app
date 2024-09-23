import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';

class PlayerListPage extends StatelessWidget {
  final String matchStatus;

  const PlayerListPage({super.key, required this.matchStatus});

  @override
  Widget build(BuildContext context) {
    // Example player data with images and roles
    final List<Map<String, String>> players = [
      {
        'name': 'Player 1',
        'role': 'Batsman',
        'image':
            'https://via.placeholder.com/40', // Replace with actual image URLs
      },
      {
        'name': 'Player 2',
        'role': 'Bowler',
        'image': 'https://via.placeholder.com/40',
      },
      {
        'name': 'Player 3',
        'role': 'All-rounder',
        'image': 'https://via.placeholder.com/40',
      },
      {
        'name': 'Player 4',
        'role': 'Wicketkeeper',
        'image': 'https://via.placeholder.com/40',
      },
      {
        'name': 'Player 5',
        'role': 'Captain',
        'image': 'https://via.placeholder.com/40',
      },
    ];

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 241, 241),
      appBar: AppBar(
        title: Text(
          'Players',
          style: AppStyle.mediumBold.copyWith(
            color: AppColors.white,
            fontSize: 16.sp,
          ),
        ),
        backgroundColor: AppColors.primaryColor,
      ),
      body: ListView.builder(
        itemCount: players.length,
        padding: const EdgeInsetsDirectional.only(top: 10),
        itemBuilder: (context, index) {
          final player = players[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 4,
            child: Padding(
              padding: EdgeInsets.all(16.sp),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(player['image']!),
                    radius: 20, // Adjust size as needed
                  ),
                  SizedBox(width: 16.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          player['name']!,
                          style: AppStyle.mediumBold.copyWith(
                            fontSize: 16.sp,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          player['role']!,
                          style: AppStyle.normalText.copyWith(
                            color: Colors.grey,
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
