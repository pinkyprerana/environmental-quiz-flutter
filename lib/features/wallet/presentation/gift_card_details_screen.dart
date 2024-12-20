import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:green_quest_app/core/constants/assets.dart';
import 'package:green_quest_app/core/styles/app_colors.dart';
import 'package:green_quest_app/core/widget/app_button.dart';
import 'package:green_quest_app/core/utils/custom_divider_horizontal.dart';
import 'package:green_quest_app/features/wallet/presentation/widgets/widgets.dart';

class GiftCardDetails extends StatelessWidget {
  final String asset;
  final String requiredPoints;

  const GiftCardDetails({
    super.key,
    required this.asset,
    required this.requiredPoints,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: SvgPicture.asset(Assets.closeCircle),
          ),
          20.verticalSpace,
          SizedBox(
            width: 0.8.sw,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(Assets.giftCouponBgOriBig),
                Positioned(
                    top: 60,
                    child: Column(
                      children: [
                        Image.asset(Assets.amazon),
                        16.verticalSpace,
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color(0xFFEAFDDE),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 4,
                          ),
                          child: Text(
                            '20 Points Needed',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(
                                  color: AppColors.pointsBg,
                                ),
                          ),
                        ),
                        12.verticalSpace,
                        Text(
                          'Remaining Points: 5',
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      ],
                    )),
                Positioned(
                  bottom: 30,
                  child: Column(
                    children: [
                      Text(
                        '25% Off',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      4.verticalSpace,
                      Text(
                        'On First Purchase',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: AppColors.descriptionText,
                            ),
                      ),
                      5.verticalSpace,
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.05,
                        height: MediaQuery.sizeOf(context).height * 0.003,
                        decoration: const BoxDecoration(
                          color: AppColors.dividerColor,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Expire on 15 May, 2024',
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              color: AppColors.descriptionText,
                            ),
                      ),
                      30.verticalSpace,
                      AppButton(
                        text: 'Reedem Voucher',
                        width: 0.6.sw,
                        height: 56,
                        onPressed: () {
                          Navigator.pop(context);

                          showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (context) {
                              return BackdropFilter(
                                filter: ImageFilter.blur(
                                  sigmaX: 20,
                                  sigmaY: 20,
                                ),
                                child: const SuccessfullyRedeemedPage(),
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: CustomPaint(
                    size: Size(0.60.sw, 2),
                    painter: DashedLinePainter(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
