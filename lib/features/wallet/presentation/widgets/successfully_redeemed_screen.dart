import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_quest_app/core/constants/assets.dart';
import 'package:green_quest_app/core/utils/app_decoration.dart';

class SuccessfullyRedeemedPage extends StatelessWidget {
  const SuccessfullyRedeemedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          const Spacer(),
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: SvgPicture.asset(
              Assets.closeCircle,
              width: 35,
            ),
          ),
          25.verticalSpace,
          Container(
            height: MediaQuery.sizeOf(context).height * 0.3,
            width: MediaQuery.sizeOf(context).width,
            decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder75Top,
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                50.verticalSpace,
                Image.asset(
                  Assets.redeemSuccessful,
                  height: 45,
                ),
                10.verticalSpace,
                Text(
                  'Awesome',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.8,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text:
                          'We have successfully send the gift voucher to the ',
                      style: Theme.of(context).textTheme.bodySmall,
                      children: [
                        TextSpan(
                          text: 'demomail@gmail.com',
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    fontWeight: FontWeight.w700,
                                  ),
                        ),
                      ],
                    ),
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
