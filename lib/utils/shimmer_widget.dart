
import 'package:flutter/material.dart';

import 'package:shimmer/shimmer.dart';

import '../res/app_colors.dart';

Widget shimmerWidget({required Widget child}) {
  return Shimmer.fromColors(
      baseColor: AppColors.baseColor,
      highlightColor: AppColors.highlightColor,
      child: child);
}
