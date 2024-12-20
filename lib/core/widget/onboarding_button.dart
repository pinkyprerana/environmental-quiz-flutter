import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/app_colors.dart';
import '../utils/common_util.dart';

class OnboardingButton extends StatelessWidget {
  final void Function()? onPressed;
  final Widget icon;
  final Widget? child;
  final Color? color;
  final Color? iconColor;
  final bool loading;
  final bool disable;
  final double? width;
  final double? height;

  const OnboardingButton({
    super.key,
    this.onPressed,
    required this.icon,
    this.loading = false,
    this.disable = false,
    this.child,
    this.color,
    this.iconColor,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // hoverColor: Colors.transparent,
      // focusColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onPressed,
      child: Container(
          width: width ?? 85.sp,
          height: height ?? 56.sp,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1000),
            color: color,
            gradient: color == null
                ? const LinearGradient(
                    begin: Alignment(1.00, -0.03),
                    end: Alignment(-1, 0.03),
                    colors: [AppColors.colorPrimary1, AppColors.colorPrimary1],
                  )
                : null,
          ),
          alignment: Alignment.center,
          child: loading
              ? buttonLoader(
                  color: AppColors.colorPrimary,
                )
              : child ?? icon),
    );
  }
}
