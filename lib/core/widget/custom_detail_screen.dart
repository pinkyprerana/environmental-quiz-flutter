import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green_quest_app/core/constants/assets.dart';
import 'package:green_quest_app/core/styles/app_colors.dart';
import 'package:green_quest_app/core/utils/app.dart';
import 'package:green_quest_app/core/utils/app_decoration.dart';
import 'package:green_quest_app/core/widget/points_widget.dart';

class CustomDetailScreen extends StatelessWidget {
  final String? image;
  final String? title;
  final String? description;
  final Widget? columnInfo1;
  final Widget? columnInfo2;
  final Widget? container;
  final Widget? button;
  final void Function()? onPressed;

  const CustomDetailScreen(
      {super.key,
      this.image,
      this.description,
      this.title,
      this.columnInfo1,
      this.columnInfo2,
      this.container,
      this.button,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        const Column(),
        Image.network(
          image ?? "", //Assets.taskDetailImage,
          width: size.width,
          fit: BoxFit.fill,
        ),
        Container(
          width: size.width,
          height: size.height / 1.5,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [0.0, 0.22, 0.53],
              colors: [
                AppColors.gradientColor1,
                AppColors.gradientColor2.withOpacity(0.2),
                AppColors.gradientColor3.withOpacity(0.0),
              ],
            ),
          ),
        ),
        Positioned(
          top: size.height * 0.07,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        Assets.arrowLeft,
                        height: 24,
                        width: 24,
                      ),
                      4.horizontalSpace,
                      const Text(
                        "Back",
                        style: TextStyle(
                            color: AppColors.colorWhite,
                            fontSize: AppConfigs.FONT_SIZE_DEFAULT,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                const PointsWidget()
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: size.height < 700 ? size.height * 0.58 : size.height * 0.54,
            width: size.width,
            padding: const EdgeInsets.symmetric(horizontal: AppConfigs.h20),
            decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
                bottomLeft: Radius.zero,
                bottomRight: Radius.zero,
              ),
              color: const Color.fromRGBO(225, 255, 231, 0.6),
              boxShadow: [
                const BoxShadow(color: Colors.white),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                40.verticalSpace,
                Text(title ?? "",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontWeight: FontWeight.w600)),
                16.verticalSpace,
                Text(
                  description ?? "",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(fontSize: 14, height: 1.3),
                ),
                20.verticalSpace,
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 66,
                      // width: size.width * 0.4,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.colorWhite,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: columnInfo1,
                      ),
                    ),
                    16.horizontalSpace,
                    Container(
                      height: 66,
                      // width: size.width * 0.4,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.colorWhite,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: columnInfo2,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: size.height * 0.05,
          left: 30,
          right: 30,
          child: button ?? const SizedBox(),
        ),
        Positioned(
          bottom: size.height < 700 ? -size.height * 0.18 : -size.height * 0.2,
          left: 30,
          right: 30,
          child: container ?? const SizedBox(),
        ),
      ],
    );
  }
}
