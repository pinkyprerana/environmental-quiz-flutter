import 'dart:ui';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_quest_app/core/constants/assets.dart';
import 'package:green_quest_app/core/styles/app_colors.dart';
import 'package:green_quest_app/core/utils/custom_divider.dart';
import 'package:green_quest_app/features/wallet/presentation/gift_card_details_screen.dart';
import 'package:green_quest_app/features/wallet/presentation/widgets/widgets.dart';

import '../../../core/utils/app.dart';

@RoutePage()
class GiftCardsPage extends StatelessWidget {
  const GiftCardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 1.sh,
            width: 1.sw,
            color: AppColors.mainBg,
          ),
          Container(
            height: 0.4.sh,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(195, 243, 201, 0.9),
                  AppColors.mainBg,
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 58),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Row(
                          children: [
                            SvgPicture.asset(Assets.backArrow),
                            const SizedBox(width: 8),
                            const Text(
                              'Back',
                              style: TextStyle(
                                  color: AppColors.colorBlack1,
                                  fontSize: AppConfigs.FONT_SIZE_DEFAULT,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Card(
                        shape: const StadiumBorder(),
                        elevation: 0.0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8.0,
                            horizontal: 12.0,
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                Assets.coinHD,
                                width: 25,
                                height: 25,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                '25',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                      color: AppColors.greenText,
                                      fontWeight: FontWeight.bold,
                                    ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 29),
                  Text(
                    'Available Virtual Gift Cards',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppColors.headingText,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const SizedBox(height: 29),
                  const GiftCoupon(
                    asset: Assets.amazon,
                    requiredPoints: '20 Points Needed',
                  ),
                  const GiftCoupon(
                    asset: Assets.adidas,
                    requiredPoints: '25 Points Needed',
                  ),
                  const GiftCoupon(
                    asset: Assets.amazon,
                    requiredPoints: '15 Points Needed',
                  ),
                  const GiftCoupon(
                    asset: Assets.nike,
                    requiredPoints: '20 Points Needed',
                  ),
                  100.verticalSpace,
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class GiftCoupon extends StatelessWidget {
  final String asset;
  final String requiredPoints;

  const GiftCoupon({
    super.key,
    required this.asset,
    required this.requiredPoints,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
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
              child: GiftCardDetails(
                asset: asset,
                requiredPoints: requiredPoints,
              ),
            );
          },
        );
      },
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(Assets.giftCouponBgOri),
              Positioned(
                top: 30,
                left: 35,
                child: GiftingCompanyWidget(
                  asset: asset,
                  requiredPoints: requiredPoints,
                  assetHeight: 30,
                  assetWidth: 90,
                ),
              ),
              Positioned(
                top: 30,
                right: 35,
                child: GiftingDetailsWidget(
                  discountTextStyle:
                      Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                  discountDetailsTextStyle:
                      Theme.of(context).textTheme.labelMedium,
                  discountExpiryTextStyle:
                      Theme.of(context).textTheme.labelSmall,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 23.0, left: 4),
                  child: CustomPaint(
                    size: const Size(1, 80),
                    painter: DashedLineVerticalPainter(),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
