import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_quest_app/core/infrastructure/api_url.dart';
import 'package:green_quest_app/core/utils/date_formatter.dart';
import 'package:green_quest_app/features/my_tasks/domain/completed_tasks_model.dart';
import '../../../core/constants/assets.dart';
import '../../../core/styles/app_colors.dart';
import '../../../core/utils/app.dart';
import '../../auth/shared/providers.dart';

@RoutePage()
class CompletedTasksDetailsPage extends ConsumerStatefulWidget {
  final CompletedTasks completedTasks;

  const CompletedTasksDetailsPage({required this.completedTasks, super.key});

  @override
  ConsumerState<CompletedTasksDetailsPage> createState() =>
      _CompletedTasksDetailsPageState();
}

class _CompletedTasksDetailsPageState
    extends ConsumerState<CompletedTasksDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authNotifierProvider);
    final totalPoints = authState.totalEarnedPoints?.data.toString() ?? '';

    var size = MediaQuery.sizeOf(context);
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Stack(
          children: [
            const Column(),
            Image.network(
              "${AppUrl.taskBaseImageUrl}${widget.completedTasks.image}",
              width: size.width,
              height: 0.55.sh,
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
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 57,
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          Assets.backArrow,
                          colorFilter: const ColorFilter.mode(
                            Colors.white,
                            BlendMode.srcIn,
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'Back',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: AppConfigs.FONT_SIZE_DEFAULT,
                            fontWeight: FontWeight.w700,
                          ),
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
                            Assets.coinActual,
                            width: 25,
                            height: 25,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            totalPoints,
                            // '25',
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
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
            ),
            Positioned(
              bottom: 0,
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: size.height * 0.52),
                child: Container(
                  width: size.width,
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    bottom: 20,
                    top: 50,
                  ),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(225, 255, 231, 1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.completedTasks.name,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      12.verticalSpace,
                      Text(
                        widget.completedTasks.description,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontSize: 14,
                              height: 1.3,
                            ),
                      ),
                      20.verticalSpace,
                      Row(
                        children: [
                          Container(
                            padding:
                                const EdgeInsets.only(left: 16.0, right: 24),
                            height: 66,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColors.colorWhite,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Earned Points",
                                  style: TextStyle(
                                    color: AppColors.descriptionText,
                                    fontSize: AppConfigs.FONT_SIZE_SMALL,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  widget
                                      .completedTasks.assignedTasks.earnedPoints
                                      .toString(),
                                  style: const TextStyle(
                                    color: AppColors.colorLightBlack,
                                    fontSize: AppConfigs.FONT_SIZE_EXTRA_LARGE,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          16.horizontalSpace,
                          Container(
                            padding:
                                const EdgeInsets.only(left: 16.0, right: 24),
                            height: 66,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColors.colorWhite,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Completed Date",
                                    style: TextStyle(
                                      color: AppColors.descriptionText,
                                      fontSize: AppConfigs.FONT_SIZE_SMALL,
                                    )),
                                const SizedBox(height: 2),
                                Text(
                                  formatDateTimeToDDMMYY(widget.completedTasks
                                      .assignedTasks.completedDate),
                                  style: const TextStyle(
                                    color: AppColors.colorLightBlack,
                                    fontSize: AppConfigs.FONT_SIZE_EXTRA_LARGE,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      size.height < 700 ? 80.verticalSpace : 60.verticalSpace,
                      Text(
                        'Uploaded  Images',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      16.verticalSpace,
                      Row(
                        children: List.generate(
                          widget.completedTasks.assignedTasks.media.length,
                          (index) => Container(
                            height: size.height < 700 ? 80 : 100,
                            width: size.height < 700 ? 80 : 100,
                            margin: const EdgeInsets.only(right: 10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.network(
                                "${AppUrl.userImageUploadedBaseUrl}${widget.completedTasks.assignedTasks.media[index]}",
                                fit: BoxFit.cover,
                              ),
                              // Image.asset(
                              //   Assets.taskFour,
                              //   fit: BoxFit.cover,
                              // ),
                            ),
                          ),
                        ),
                        // children: [
                        //   SizedBox(
                        //     height: size.height < 700 ? 80 : 100,
                        //     width: size.height < 700 ? 80 : 100,
                        //     child: ClipRRect(
                        //       borderRadius: BorderRadius.circular(12),
                        //       child: Image.asset(
                        //         Assets.taskFour,
                        //         fit: BoxFit.cover,
                        //       ),
                        //     ),
                        //   ),
                        //   20.horizontalSpace,
                        //   SizedBox(
                        //     height: size.height < 700 ? 80 : 100,
                        //     width: size.height < 700 ? 80 : 100,
                        //     child: ClipRRect(
                        //       borderRadius: BorderRadius.circular(12),
                        //       child: Image.asset(
                        //         Assets.taskTwo,
                        //         fit: BoxFit.cover,
                        //       ),
                        //     ),
                        //   ),
                        // ],
                      ),
                      10.verticalSpace,
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
