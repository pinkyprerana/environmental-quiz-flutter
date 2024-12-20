import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/styles/app_colors.dart';
import '../../../core/styles/app_text_styles.dart';

class BottomItem extends StatelessWidget {
  final String icon;
  final String text;
  final bool active;
  const BottomItem(
      {super.key,
      required this.icon,
      required this.text,
      required this.active});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 56,
      alignment: Alignment.center,
      color: AppColors.colorTransparent,
      child: icon.isEmpty
          ? Container()
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (active)
                  Container(
                    height: 3,
                    width: 34,
                    color: AppColors.selectedGreen,
                  ),
                active ? 6.verticalSpace : 9.verticalSpace,
                Image.asset(
                  icon,
                  scale: 2,
                ),
                4.verticalSpace,
                Text(
                  text,
                  style: AppTextStyles.textStyleFredokaRegular.copyWith(
                    color: active
                        ? AppColors.selectedGreen
                        : AppColors.unselectedBlack,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
    );
  }
}
