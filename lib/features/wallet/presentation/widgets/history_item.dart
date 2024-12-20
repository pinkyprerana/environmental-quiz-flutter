import 'package:flutter/material.dart';
import 'package:green_quest_app/core/constants/assets.dart';
import 'package:green_quest_app/core/styles/app_colors.dart';

class HistoryItem extends StatelessWidget {
  final String activityName;
  final int earnedPoints;
  final String receivingDate;

  const HistoryItem({
    required this.activityName,
    super.key,
    required this.earnedPoints,
    required this.receivingDate,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(228, 242, 214, 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Image.asset(
                  Assets.historyIcon,
                  width: 20,
                ),
              ),
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  activityName,
                  style: const TextStyle(
                    color: Color(0xFF22293D),
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  receivingDate,
                  style: const TextStyle(
                    color: Color(0xFF22293D),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Text(
              '+${earnedPoints.toString()}',
              style: const TextStyle(
                color: AppColors.gray600,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
