import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green_quest_app/core/styles/app_colors.dart';

class GiftingDetailsWidget extends StatelessWidget {
  final TextStyle? discountTextStyle;
  final TextStyle? discountDetailsTextStyle;
  final TextStyle? discountExpiryTextStyle;

  const GiftingDetailsWidget({
    super.key,
    this.discountTextStyle,
    this.discountDetailsTextStyle,
    this.discountExpiryTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '25% Off',
          style: discountTextStyle,
        ),
        Text(
          'On First Purchase',
          style: discountDetailsTextStyle,
        ),
        10.verticalSpace,
        Container(
          width: MediaQuery.sizeOf(context).width * 0.05,
          height: 1,
          decoration: const BoxDecoration(
            color: AppColors.dividerColor,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Expire on 15 May, 2024',
          style: discountExpiryTextStyle,
        ),
      ],
    );
  }
}
