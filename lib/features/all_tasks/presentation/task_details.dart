import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green_quest_app/core/widget/app_button.dart';
import 'package:green_quest_app/core/widget/custom_detail_screen.dart';
import 'package:green_quest_app/features/all_tasks/shared/provider.dart';
import 'package:green_quest_app/features/base/shared/providers.dart';
import 'package:green_quest_app/features/home/shared/provider.dart';
import 'package:intl/intl.dart';

import '../../../core/styles/app_colors.dart';
import '../../../core/utils/app.dart';

@RoutePage()
class TasksDetailsPage extends ConsumerStatefulWidget {
  final Task task;
  const TasksDetailsPage({super.key, required this.task});

  @override
  ConsumerState<TasksDetailsPage> createState() => _TasksDetailsPageState();
}

class _TasksDetailsPageState extends ConsumerState<TasksDetailsPage> {
  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime.parse(widget.task.end_date);
    DateFormat formatter = DateFormat('dd MMM, yyyy');
    String formattedDate = formatter.format(dateTime);

    final stateNotifier = ref.read(baseNotifierProvider.notifier);
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: CustomDetailScreen(
          image:
              "https://green-quest-admin.dedicateddevelopers.us/uploads/task/${widget.task.image}",
          title: widget.task.name, //AppConstants.PLANTING_A_TREE,
          description: widget.task.description, //AppConstants.TASK_DESCRIPTION,
          columnInfo1: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Assigned point",
                  style: TextStyle(
                    color: AppColors.descriptionText,
                    fontSize: AppConfigs.FONT_SIZE_SMALL,
                  ),
                ),
                2.verticalSpace,
                Text(
                  widget.task.point,
                  // "5",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          columnInfo2: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Task End Date",
                    style: TextStyle(
                      color: AppColors.descriptionText,
                      fontSize: AppConfigs.FONT_SIZE_SMALL,
                    )),
                2.verticalSpace,
                Text(formattedDate,
                    // "22 Apr, 2024",
                    style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
          ),
          button: AppButton(
            text: "Accept Task",
            onPressed: () async {
              final notifier = ref.read(allTasksNotifierProvider.notifier);
              await notifier.acceptTask(); // pass task ID
              final homeNotifier =
                  ref.read(assignedTasksNotifierProvider.notifier);
              await homeNotifier.fetchAssignedTasks();
              context.maybePop();
              stateNotifier.tapBottomNavIndex(2);
            },
          ),
        ),
      ),
    );
  }
}

class Task {
  final String image;
  final String name;
  final String description;
  final String end_date;
  final String point;

  Task(
      {required this.image,
      required this.name,
      required this.description,
      required this.end_date,
      required this.point});
}
