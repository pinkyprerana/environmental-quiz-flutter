import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green_quest_app/core/constants/assets.dart';
import 'package:green_quest_app/core/styles/app_colors.dart';

import '../../features/auth/shared/providers.dart';

class PointsWidget extends ConsumerStatefulWidget {
  const PointsWidget({super.key});

  @override
  _PointsWidgetState createState() => _PointsWidgetState();
}

class _PointsWidgetState extends ConsumerState<PointsWidget>{

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async{
      final authStateNotifier = ref.read(authNotifierProvider.notifier);
      await authStateNotifier.getTotalEarnedPoints();
    });
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authNotifierProvider);
    final totalPoints = authState.totalEarnedPoints?.data.toString() ?? '';
    return Container(
      height: 43,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: AppColors.colorWhite,
      ),
      child: Row(
        children: [
          Image.asset(
            Assets.coinHD,
            width: 25,
          ),
          8.horizontalSpace,
           Text(
            totalPoints,
            // "25",
            style: const TextStyle(
                color: AppColors.colorPrimary, fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}
