import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green_quest_app/core/infrastructure/api_url.dart';
import 'package:green_quest_app/core/utils/date_formatter.dart';
import 'package:green_quest_app/core/widget/app_button.dart';
import 'package:green_quest_app/features/home/shared/provider.dart';
import 'package:green_quest_app/features/my_tasks/presentation/widgets/custom_bottom_sheet.dart';
import 'package:green_quest_app/features/my_tasks/shared/provider.dart';
// import 'package:image_picker/image_picker.dart';

import '../../../core/constants/assets.dart';
import '../../../core/styles/app_colors.dart';
import '../../../core/utils/app.dart';
import '../../../core/utils/toast.dart';
import '../../../routes/app_router.gr.dart';
import '../../auth/shared/providers.dart';

@RoutePage()
class MyTasksPage extends ConsumerStatefulWidget {
  const MyTasksPage({super.key});

  @override
  ConsumerState<MyTasksPage> createState() => _MyTasksPageState();
}

class _MyTasksPageState extends ConsumerState<MyTasksPage> {
  late List<bool> taskReviewStatusList;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      final stateNotifier = ref.read(myTasksProvider.notifier);
      await stateNotifier.fetchCompletedTasks();
      final assignedNotifier = ref.read(assignedTasksNotifierProvider.notifier);
      await assignedNotifier.fetchAssignedTasks();
      final state = ref.read(assignedTasksNotifierProvider);
      taskReviewStatusList =
          List<bool>.filled(state.assignedTasks.length, false);
    });
  }

  @override
  void didChangeDependencies() async {
    final assignedNotifier = ref.read(assignedTasksNotifierProvider.notifier);
    await assignedNotifier.fetchAssignedTasks();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authNotifierProvider);
    final totalPoints = authState.totalEarnedPoints?.data.toString() ?? '';

    var size = MediaQuery.of(context).size;
    final state = ref.watch(assignedTasksNotifierProvider);
    final myTaskState = ref.watch(myTasksProvider);
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
        Container(
          height: size.height,
          width: size.width,
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          decoration: const BoxDecoration(color: Colors.transparent),
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                54.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        height: 31,
                        width: 134,
                        child: Image.asset(
                          Assets.logo,
                        )),
                    Container(
                      height: 43,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: AppColors.colorWhite,
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            Assets.coinHD,
                            width: 25,
                          ),
                          8.horizontalSpace,
                          Text(
                            totalPoints,
                            // "25",
                            style: const TextStyle(
                                color: AppColors.colorPrimary,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                20.verticalSpace,
                Text(
                  "Active Tasks",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                ),
                15.verticalSpace,
                SizedBox(
                  height: size.height > 800
                      ? 0.42.sh
                      : size.height > 700
                          ? 0.436.sh
                          : 0.48.sh,
                  child: myTaskState.isLoading
                      ? const Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 20.0),
                            child: CircularProgressIndicator(
                              color: AppColors.colorPrimary,
                            ),
                          ),
                        )
                      : state.assignedTasks.isEmpty
                          ? Center(
                              child: Text(
                                "No active task present yet",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(fontWeight: FontWeight.w500),
                              ),
                            )
                          : ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: state.assignedTasks.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  width: size.width * 0.61,
                                  margin: const EdgeInsets.only(right: 5),
                                  child: Card(
                                    elevation: 0,
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: InkWell(
                                      onTap: () => context
                                          .pushRoute(ActiveTaskDetailsRoute(
                                        img:
                                            '${"https://green-quest-admin.dedicateddevelopers.us/uploads/task/"}${state.assignedTasks[index].image}',
                                        title: state.assignedTasks[index].name,
                                        taskId: state.assignedTasks[index]
                                            .assignedTaskList.taskId,
                                        desc: state
                                            .assignedTasks[index].description,
                                        points: state.assignedTasks[index].point
                                            .toString(),
                                        date:
                                            '${formatDateTimeToDDMMYY(state.assignedTasks[index].assignedTaskList.createdAt)} at ${formatTime(state.assignedTasks[index].assignedTaskList.createdAt)}',
                                        inReview: state.assignedTasks[index]
                                            .assignedTaskList.inReview,
                                      )),
                                      child: Padding(
                                        padding: const EdgeInsets.all(15),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Stack(
                                              children: [
                                                SizedBox(
                                                  height: size.height * 0.15,
                                                  width: double.infinity,
                                                  child: ClipRRect(
                                                    borderRadius: BorderRadius
                                                        .circular(AppConfigs
                                                            .RADIUS_SIZE_DEFAULT),
                                                    child: Image.network(
                                                      '${"https://green-quest-admin.dedicateddevelopers.us/uploads/task/"}${state.assignedTasks[index].image}',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  right: 8,
                                                  bottom: 8,
                                                  child: Container(
                                                    // height: size.height * 0.03,
                                                    // width: size.width * 0.12,
                                                    padding: EdgeInsets.all(
                                                        size.width * 0.007),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              24),
                                                      color:
                                                          AppColors.colorWhite,
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Container(
                                                          decoration:
                                                              const BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                            color: AppColors
                                                                .colorWhite,
                                                          ),
                                                          child: CircleAvatar(
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            backgroundImage:
                                                                const AssetImage(
                                                                    Assets
                                                                        .points),
                                                            radius: size.width *
                                                                0.02,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                            width: size.width *
                                                                0.01),
                                                        Text(
                                                          "${state.assignedTasks[index].point}P",
                                                          style: TextStyle(
                                                            color: AppColors
                                                                .colorPrimary,
                                                            fontSize:
                                                                size.width *
                                                                    0.035,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                                height: size.height * 0.02),
                                            Text(
                                              state.assignedTasks[index].name,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall
                                                  ?.copyWith(
                                                    color:
                                                        AppColors.headingText,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                            ),
                                            SizedBox(
                                                height: size.height * 0.01),
                                            Text(
                                              state.assignedTasks[index]
                                                  .description,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelMedium,
                                              maxLines: 2,
                                            ),
                                            SizedBox(
                                                height: size.height * 0.023),
                                            const Spacer(),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  height: size.height * 0.038,
                                                  width: 1.7,
                                                  color: AppColors.colorPrimary,
                                                ),
                                                SizedBox(
                                                    width: size.width * 0.02),
                                                Container(
                                                  // height: size.height < 700
                                                  //     ? size.height * 0.05
                                                  //     : size.height * 0.038,
                                                  // width: size.width * 0.35,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius
                                                        .circular(AppConfigs
                                                            .RADIUS_SIZE_DEFAULT),
                                                    color: AppColors.colorWhite,
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Start Date & Time",
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodySmall
                                                            ?.copyWith(
                                                                fontSize: 10),
                                                      ),
                                                      SizedBox(
                                                          height: size.height *
                                                              0.005),
                                                      Text(
                                                        '${formatDateTimeToDDMMYY(state.assignedTasks[index].assignedTaskList.createdAt)} at ${formatTime(state.assignedTasks[index].assignedTaskList.createdAt)}',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodySmall
                                                            ?.copyWith(
                                                              color: AppColors
                                                                  .colorPrimary,
                                                              fontSize: 12,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                                height: size.height * 0.016),
                                            AppButton(
                                              onPressed: () {
                                                if (!state
                                                    .assignedTasks[index]
                                                    .assignedTaskList
                                                    .inReview) {
                                                  _openBottomDrawer(
                                                      context,
                                                      index,
                                                      () {},
                                                      state.assignedTasks[index]
                                                          .id);
                                                } else {
                                                  showToastMessage(
                                                      "This task is under review");
                                                }
                                              },
                                              // height: size.height < 700
                                              //     ? 35
                                              //     : size.height > 850
                                              //         ? 44
                                              //         : 40,
                                              height: 42,
                                              text: state.assignedTasks[index]
                                                      .assignedTaskList.inReview
                                                  ? "Under Review"
                                                  : "Task Update",
                                              textColor: state
                                                      .assignedTasks[index]
                                                      .assignedTaskList
                                                      .inReview
                                                  ? AppColors.colorPrimary
                                                  : null,
                                              color: state.assignedTasks[index]
                                                      .assignedTaskList.inReview
                                                  ? AppColors.colorPrimary2
                                                      .withOpacity(0.4)
                                                  : null,
                                            ),
                                            // 10.verticalSpace,
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                ),
                size.height < 700 ? 20.verticalSpace : 10.verticalSpace,
                Text(
                  "Completed Tasks",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                ),
                10.verticalSpace,
                myTaskState.isLoading
                    ? const Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 20.0),
                          child: CircularProgressIndicator(
                            color: AppColors.colorPrimary,
                          ),
                        ),
                      )
                    : myTaskState.completedTasks.isEmpty
                        ? SizedBox(
                            height: 0.1.sh,
                            child: Center(
                              child: Text(
                                "No completed task present yet",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(fontWeight: FontWeight.w500),
                              ),
                            ),
                          )
                        : ListView.builder(
                            shrinkWrap: true,
                            itemCount: myTaskState.completedTasks.length,
                            physics: const NeverScrollableScrollPhysics(),
                            padding: const EdgeInsets.only(bottom: 20),
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                margin: const EdgeInsets.only(bottom: 10),
                                decoration: const BoxDecoration(boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(11, 90, 17, 0.04),
                                      blurRadius: 46,
                                      spreadRadius: 0,
                                      offset: Offset(0, 24))
                                ]),
                                child: Card(
                                    elevation: 0,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                            AppConfigs.RADIUS_SIZE_LARGE),
                                      ),
                                    ),
                                    // margin: const EdgeInsets.all(AppConfigs.h5),
                                    // shadowColor: Colors.black,
                                    child: InkWell(
                                      onTap: () {
                                        context.pushRoute(
                                          CompletedTasksDetailsRoute(
                                            completedTasks: myTaskState
                                                .completedTasks[index],
                                          ),
                                        );
                                      },
                                      child: Container(
                                        padding:
                                            const EdgeInsets.only(right: 30),
                                        height: 125,
                                        decoration: BoxDecoration(
                                            // boxShadow: const [BoxShadow(color: Colors.black, blurRadius: AppConfigs.RADIUS_SIZE_DEFAULT,),],
                                            color: AppColors.colorWhite,
                                            borderRadius: BorderRadius.circular(
                                                AppConfigs.RADIUS_SIZE_LARGE)),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 16.0,
                                                right: 16,
                                              ),
                                              child: SizedBox(
                                                height: 93,
                                                width: 107,
                                                child: ClipRRect(
                                                  borderRadius: BorderRadius
                                                      .circular(AppConfigs
                                                          .RADIUS_SIZE_LARGE),
                                                  child: Image.network(
                                                    "${AppUrl.taskBaseImageUrl}${myTaskState.completedTasks[index].image}",
                                                    // scale: 2.6,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              // flex:1,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        myTaskState
                                                            .completedTasks[
                                                                index]
                                                            .name,
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodySmall
                                                            ?.copyWith(
                                                                color: AppColors
                                                                    .headingText,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700),
                                                      ),
                                                      const SizedBox(
                                                          height:
                                                              AppConfigs.h5),
                                                      Text(
                                                        myTaskState
                                                            .completedTasks[
                                                                index]
                                                            .description,
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodySmall
                                                            ?.copyWith(
                                                              fontSize:
                                                                  size.height >
                                                                          700
                                                                      ? 12
                                                                      : 11,
                                                              height: 1.5,
                                                            ),
                                                        maxLines: 2,
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )),
                              );
                            }),
                70.verticalSpace,
              ],
            ),
          ),
        ),
      ],
    ));
  }

  // void _openBottomDrawer(BuildContext context, int index) {
  //   var size = MediaQuery.of(context).size;
  //   showModalBottomSheet(
  //     barrierColor: const Color.fromRGBO(0, 13, 5, 0.5),
  //     context: context,
  //     builder: (BuildContext context) {
  //       return BackdropFilter(
  //         filter: ImageFilter.blur(
  //           sigmaX: 20,
  //           sigmaY: 20,
  //         ),
  //         child: SizedBox(
  //           // height: size.height * 0.55,
  //           width: size.width,
  //           child: Column(
  //             crossAxisAlignment: CrossAxisAlignment.center,
  //             mainAxisAlignment: MainAxisAlignment.end,
  //             children: [
  //               IconButton(
  //                 icon: Image.asset(
  //                   "assets/icon/close-circle.png",
  //                 ),
  //                 onPressed: () {
  //                   Navigator.of(context).pop();
  //                 },
  //               ),
  //               20.verticalSpace,
  //               Container(
  //                 // height: size.height * 0.40,
  //                 // width: size.width,
  //                 padding: const EdgeInsets.all(20),
  //                 decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(
  //                   borderRadius: BorderRadiusStyle.roundedBorder75Top,
  //                   color: Colors.white,
  //                 ),
  //                 child: Column(
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: [
  //                     // 20.verticalSpace,
  //                     Padding(
  //                       padding:
  //                           EdgeInsets.only(left: 20, top: size.height * 0.05),
  //                       child: Text(AppConstants.PLANTING_A_TREE,
  //                           style: Theme.of(context)
  //                               .textTheme
  //                               .bodyMedium
  //                               ?.copyWith(fontWeight: FontWeight.w700)),
  //                     ),
  //                     20.verticalSpace,
  //                     Container(
  //                       // height: 150,
  //                       width: size.width,
  //                       padding: const EdgeInsets.only(bottom: 20),
  //                       child: Center(
  //                         child: Row(
  //                           mainAxisSize: MainAxisSize.max,
  //                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                           children: [
  //                             for (int i = 0; i < _selectedImages.length; i++)
  //                               GestureDetector(
  //                                 onTap: () {
  //                                   _getImage(i).then((value) => null);
  //                                 },
  //                                 child: Stack(
  //                                   children: [
  //                                     Container(
  //                                       height: size.width * 0.25, //100,
  //                                       width: size.width * 0.25, //100,
  //                                       decoration: BoxDecoration(
  //                                           borderRadius: BorderRadius.circular(
  //                                               AppConfigs
  //                                                   .RADIUS_SIZE_DEFAULT)),
  //                                       // margin: EdgeInsets.symmetric(
  //                                       //     horizontal: size.width * 0.02),
  //                                       child: ClipRect(
  //                                         child: _selectedImages[i] != null
  //                                             ? Image.file(
  //                                                 File(
  //                                                     _selectedImages[i]!.path),
  //                                                 fit: BoxFit.cover,
  //                                               )
  //                                             : Image.asset(
  //                                                 "assets/icon/document-upload.png"),
  //                                       ),
  //                                     ),
  //                                     if (_selectedImages[i] != null)
  //                                       Positioned(
  //                                         top: 0,
  //                                         right: 0,
  //                                         child: GestureDetector(
  //                                           child: Padding(
  //                                             padding:
  //                                                 const EdgeInsets.all(4.0),
  //                                             child: Image.asset(
  //                                               "assets/icon/close-circle.png",
  //                                               scale: 2,
  //                                             ),
  //                                           ),
  //                                           onTap: () {
  //                                             setState(() {
  //                                               _selectedImages[i] = null;
  //                                             });
  //                                           },
  //                                         ),
  //                                       ),
  //                                   ],
  //                                 ),
  //                               ),
  //                           ],
  //                         ),
  //                       ),
  //                     ),
  //                     Padding(
  //                       padding: const EdgeInsets.symmetric(horizontal: 20),
  //                       child: AppButton(
  //                           height: size.height * 0.06,
  //                           text: "Request Task Review",
  //                           onPressed: () {
  //                             Navigator.pop(context);
  //                             setState(() {
  //                               taskReviewStatusList[index] = true;
  //                             });
  //                           }),
  //                     ),
  //                     // 16.verticalSpace
  //                   ],
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }

  Future<void> _openBottomDrawer(BuildContext context, int index,
      VoidCallback? voidCallback, String id) async {
    // final size = MediaQuery.of(context).size;
    showModalBottomSheet(
      barrierColor: const Color.fromRGBO(0, 13, 5, 0.5),
      context: context,
      builder: (BuildContext context) {
        // final state = ref.watch(myTasksProvider);
        return KBottomSheet(id: id);
      },
    );
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() {});
  }

  // final List<XFile?> _selectedImages = List<XFile?>.filled(3, null);

  // Future<void> _getImage(int index) async {
  //   final imagePicker = ImagePicker();
  //   final XFile? image =
  //       await imagePicker.pickImage(source: ImageSource.gallery);
  //   if (image != null) {
  //     setState(() {
  //       _selectedImages[index] = image;
  //     });
  //   }
  // }
}
