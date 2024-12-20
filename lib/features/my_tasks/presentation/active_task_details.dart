import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green_quest_app/core/utils/toast.dart';
import 'package:green_quest_app/features/home/shared/provider.dart';
import 'package:green_quest_app/features/my_tasks/presentation/widgets/custom_bottom_sheet.dart';

import '../../../core/constants/assets.dart';
import '../../../core/styles/app_colors.dart';
import '../../../core/utils/app.dart';
import '../../../core/utils/app_decoration.dart';
import '../../../core/widget/app_button.dart';
import '../../../core/widget/points_widget.dart';

@RoutePage()
class ActiveTaskDetailsPage extends ConsumerStatefulWidget {
  const ActiveTaskDetailsPage({
    super.key,
    required this.img,
    required this.title,
    required this.desc,
    required this.points,
    required this.date,
    required this.taskId,
    required this.inReview,
  });
  final String taskId;
  final String img;
  final String title;
  final String desc;
  final String points;
  final String date;
  final bool inReview;

  @override
  ConsumerState<ActiveTaskDetailsPage> createState() =>
      _ActiveTaskDetailsPageState();
}

class _ActiveTaskDetailsPageState extends ConsumerState<ActiveTaskDetailsPage> {
  late List<bool> taskReviewStatusList;
  bool isImageUploaded = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final assignedTaskState = ref.watch(assignedTasksNotifierProvider);

    final requiredTask = assignedTaskState.assignedTasks.firstWhere(
      (element) => element.id == widget.taskId,
    );
    isImageUploaded = requiredTask.assignedTaskList.inReview;

    // final state = ref.watch(assignedTasksNotifierProvider);
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light,
      child: PopScope(
        onPopInvoked: (didPop) async {
          final notifier = ref.read(assignedTasksNotifierProvider.notifier);
          await notifier
              .fetchAssignedTasks()
              .then((value) async => await context.maybePop());
        },
        child: Scaffold(
          body: Stack(
            children: [
              const Column(),
              Image.network(
                widget.img,
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
                        onTap: () async {
                          final notifier =
                              ref.read(assignedTasksNotifierProvider.notifier);
                          await notifier
                              .fetchAssignedTasks()
                              .then((value) async => await context.maybePop());
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
                                fontWeight: FontWeight.w700,
                              ),
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
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: size.height * 0.52,
                  ),
                  child: Container(
                    // height: size.height * 0.54,
                    width: size.width,
                    padding:
                        const EdgeInsets.symmetric(horizontal: AppConfigs.h20),
                    decoration:
                        AppDecoration.outlineOnPrimaryContainer.copyWith(
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
                      mainAxisSize: MainAxisSize.max,
                      // mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        50.verticalSpace,
                        Text(
                          widget.title,
                          style: const TextStyle(
                            fontSize: AppConfigs.FONT_SIZE_LARGE,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        16.verticalSpace,
                        Text(
                          widget.desc,
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
                              // width: size.width * 0.2,
                              padding: const EdgeInsets.only(
                                left: 20,
                                right: 30,
                                // top: 14,
                                // bottom: 14,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AppColors.colorWhite,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Points",
                                    style: TextStyle(
                                      color: AppColors.descriptionText,
                                      fontSize: AppConfigs.FONT_SIZE_SMALL,
                                    ),
                                  ),
                                  2.verticalSpace,
                                  Text(
                                    widget.points,
                                    style: const TextStyle(
                                      color: AppColors.colorLightBlack,
                                      fontSize:
                                          AppConfigs.FONT_SIZE_EXTRA_LARGE,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            16.horizontalSpace,
                            Container(
                              height: 66,
                              // width: size.width * 0.6,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AppColors.colorWhite,
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text("Start Date & Time",
                                        style: TextStyle(
                                          color: AppColors.descriptionText,
                                          fontSize: AppConfigs.FONT_SIZE_SMALL,
                                        )),
                                    2.verticalSpace,
                                    Text(widget.date,
                                        style: const TextStyle(
                                          color: AppColors.colorLightBlack,
                                          fontSize: AppConfigs.FONT_SIZE_LARGE,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        size.height < 700
                            ? 80.verticalSpace
                            : 120.verticalSpace,
                        AppButton(
                          text: widget.inReview || isImageUploaded
                              ? "Under Review"
                              : "Task Update",
                          textColor: widget.inReview || isImageUploaded
                              ? AppColors.colorPrimary
                              : null,
                          color: widget.inReview || isImageUploaded
                              ? AppColors.colorPrimary2.withOpacity(0.4)
                              : null,
                          height: 56,
                          onPressed: () => widget.inReview || isImageUploaded
                              ? showToastMessage("This task is under review")
                              : _openBottomDrawer(context, 1, () {
                                  setState(() {});
                                }, widget.taskId),
                        ),
                        20.verticalSpace,
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _openBottomDrawer(
      BuildContext context, int index, VoidCallback? voidCallback, String id) {
    // var size = MediaQuery.of(context).size;
    showModalBottomSheet(
      barrierColor: const Color.fromRGBO(0, 13, 5, 0.5),
      context: context,
      builder: (BuildContext context) {
        // final state = ref.watch(myTasksProvider);
        return KBottomSheet(id: widget.taskId);
      },
    );
  }
}
