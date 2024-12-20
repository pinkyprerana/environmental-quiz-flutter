import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green_quest_app/core/widget/home_top_widgets.dart';
import 'package:green_quest_app/features/all_tasks/presentation/task_details.dart';

import '../../../core/constants/assets.dart';
import '../../../core/styles/app_colors.dart';
import '../../../core/utils/app.dart';
import '../../../routes/app_router.gr.dart';
import '../../all_tasks/domain/all_tasks_model.dart';
import '../shared/provider.dart';

@RoutePage()
class AllTasksPage extends ConsumerStatefulWidget {
  const AllTasksPage({super.key});

  @override
  ConsumerState<AllTasksPage> createState() => _AllTasksPageState();
}

class _AllTasksPageState extends ConsumerState<AllTasksPage> {
  ViewType _viewType = ViewType.Grid;
  int selectedCategoryIndex = -1;
  final TextEditingController _searchController = TextEditingController();
  List<DataOfAllTasks>? filteredTasks;
  List<String> categoryList = [];

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      final allTaskNotifier = ref.read(allTasksNotifierProvider.notifier);
      await allTaskNotifier.filteredAllTasks().then((_) {
        filteredTasks = ref.read(allTasksNotifierProvider).tasks;
        final allTaskState = ref.watch(allTasksNotifierProvider);
        final tasksList = allTaskState.tasks;
        categoryList =
            tasksList.map((task) => task.categoriesDetails.name).toList();
        filteredTasks = _filterTasksByCategoryAndSearch(
            tasksList, categoryList, _searchController.text);
      });
    });
    // Future.microtask(() async {
    //   final allTaskNotifier = ref.read(allTasksNotifierProvider.notifier);
    //   await allTaskNotifier.filteredAllTasks().then((_) {
    //     filteredTasks = ref.read(allTasksNotifierProvider).tasks;
    //     final allTaskState = ref.watch(allTasksNotifierProvider);
    //     final tasksList = allTaskState.tasks;
    //     categoryList =
    //         tasksList.map((task) => task.categoriesDetails.name).toList();
    //     filteredTasks = _filterTasksByCategoryAndSearch(
    //         tasksList, categoryList, _searchController.text);
    //   });
    // }
    // );

    super.initState();
  }

  // @override
  // void didChangeDependencies() async {
  //   final assignedTasksState = ref.read(assignedTasksNotifierProvider);
  //   final completedTaskState = ref.read(myTasksProvider);
  //   final allTaskNotifier = ref.read(allTasksNotifierProvider.notifier);
  //   await allTaskNotifier.filteredAllTasks(
  //       assignedTasksState.assignedTasks, completedTaskState.completedTasks);
  //   super.didChangeDependencies();
  // }

  @override
  Widget build(BuildContext context) {
    final allTaskState = ref.watch(allTasksNotifierProvider);
    final tasksList = allTaskState.tasks;

    return Scaffold(
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Stack(
          children: [
            Container(
              height: 1.sh,
              width: 1.sw,
              color: AppColors.bgColor,
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
              color: Colors.transparent,
              child: Column(
                children: [
                  CustomHomeTopWidget(
                    onCategorySelected: (index) {
                      setState(() {
                        selectedCategoryIndex = index;
                        filteredTasks = _filterTasksByCategoryAndSearch(
                            tasksList, categoryList, '');
                      });
                    },
                    tasksList: tasksList,
                    assignedTasksList: const [],
                    searchController: _searchController,
                    onSearchQueryChanged: (query) {
                      setState(() {
                        _searchController.text = query;
                        filteredTasks = _filterTasksByCategoryAndSearch(
                            tasksList, categoryList, query);
                      });
                    },
                  ),
                  16.verticalSpace,
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24.0,
                      right: 24.0,
                      bottom: 4.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Task List",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontWeight: FontWeight.w700),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              iconSize: 30,
                              onPressed: () {
                                setState(() {
                                  _viewType = ViewType.Grid;
                                });
                              },
                              icon: ImageIcon(
                                const AssetImage(Assets.taskGridIcon),
                                color: _viewType == ViewType.Grid
                                    ? AppColors.colorBlack
                                    : AppColors.colorGrey,
                              ),
                            ),
                            // 5.horizontalSpace,
                            IconButton(
                              iconSize: 30,
                              onPressed: () {
                                setState(() {
                                  _viewType = ViewType.List;
                                });
                              },
                              icon: ImageIcon(
                                const AssetImage(Assets.taskListIcon),
                                color: _viewType == ViewType.List
                                    ? AppColors.colorBlack
                                    : AppColors.colorGrey,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  filteredTasks == null
                      ? const Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 20.0),
                            child: CircularProgressIndicator(
                              color: AppColors.colorPrimary,
                            ),
                          ),
                        )
                      : allTaskState.isLoading
                          ? const Center(
                              child: Padding(
                                padding: EdgeInsets.only(top: 20.0),
                                child: CircularProgressIndicator(
                                  color: AppColors.colorPrimary,
                                ),
                              ),
                            )
                          : filteredTasks!.isEmpty
                              ? const Text('No task found matching this search')
                              : _buildTaskBody(),
                  50.verticalSpace
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTaskBody() {
    final allTaskState = ref.watch(allTasksNotifierProvider);
    final tasksList = allTaskState.tasks;
    var size = MediaQuery.of(context).size;

    if (_viewType == ViewType.List) {
      return Container(
        color: AppColors.bgColor,
        margin: const EdgeInsets.only(bottom: 10),
        // height: MediaQuery.of(context).size.height,
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: filteredTasks!.length,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
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
                        Radius.circular(AppConfigs.RADIUS_SIZE_LARGE),
                      ),
                    ),
                    // margin: const EdgeInsets.all(AppConfigs.h5),
                    // shadowColor: Colors.black,
                    child: InkWell(
                      onTap: () {
                        final task = Task(
                          image: tasksList[index].image,
                          name: tasksList[index].name,
                          description: tasksList[index].description,
                          end_date: tasksList[index].endDate.toString(),
                          point: tasksList[index].point.toString(),
                        );
                        context.pushRoute(
                          TasksDetailsRoute(task: task),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.only(right: 30),
                        height: 125,
                        decoration: BoxDecoration(
                            // boxShadow: const [BoxShadow(color: Colors.black, blurRadius: AppConfigs.RADIUS_SIZE_DEFAULT,),],
                            color: AppColors.colorWhite,
                            borderRadius: BorderRadius.circular(
                                AppConfigs.RADIUS_SIZE_LARGE)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                                  borderRadius: BorderRadius.circular(
                                      AppConfigs.RADIUS_SIZE_LARGE),
                                  child: Image.network(
                                    "${"https://green-quest-admin.dedicateddevelopers.us/uploads/task/"}${filteredTasks![index].image}",
                                    // scale: 2.6,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              // flex:1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        filteredTasks![index].name,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(
                                                color: AppColors.headingText,
                                                fontWeight: FontWeight.w700),
                                      ),
                                      const SizedBox(height: AppConfigs.h5),
                                      Text(
                                        filteredTasks![index].description,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(
                                              fontSize: 12,
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
      );
    } else {
      return Container(
        color: AppColors.bgColor,
        // height: MediaQuery.of(context).size.height,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: size.height > 700 ? 0.75 : 0.8,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8),
          physics: const NeverScrollableScrollPhysics(),
          padding:
              EdgeInsets.only(left: 20, right: 20, bottom: size.height * 0.05),
          itemCount: filteredTasks!.length,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              // width: 0.42.sw,
              // height: 250,
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(11, 90, 17, 0.04),
                    blurRadius: 46,
                    spreadRadius: 0,
                    offset: Offset(0, 24))
              ]),
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: InkWell(
                  onTap: () {
                    final notifier =
                        ref.read(allTasksNotifierProvider.notifier);
                    notifier.selectedTask(tasksList[index]);
                    final task = Task(
                      image: filteredTasks![index].image,
                      name: filteredTasks![index].name,
                      description: filteredTasks![index].description,
                      end_date: filteredTasks![index].endDate.toString(),
                      point: filteredTasks![index].point.toString(),
                    );
                    context.pushRoute(
                      TasksDetailsRoute(task: task),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    // width: 180,
                    // height: 330,
                    decoration: BoxDecoration(
                      color: AppColors.colorWhite,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: SingleChildScrollView(
                      physics: const NeverScrollableScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: size.height * 0.1,
                            width: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.network(
                                "${"https://green-quest-admin.dedicateddevelopers.us/uploads/task/"}${filteredTasks![index].image}",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          // const SizedBox(height: AppConfigs.h5),
                          12.verticalSpace,
                          Text(
                            filteredTasks![index].name,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                    color: AppColors.headingText,
                                    fontWeight: FontWeight.w700),
                          ),
                          // const SizedBox(height: AppConfigs.h5),
                          8.verticalSpace,
                          Text(
                            filteredTasks![index].description,
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      fontSize: 12,
                                      height: 1.3,
                                    ),
                            maxLines: 3,
                          ),
                          12.verticalSpace,
                          GestureDetector(
                            onTap: () {
                              final task = Task(
                                image: filteredTasks![index].image,
                                name: filteredTasks![index].name,
                                description: filteredTasks![index].description,
                                end_date:
                                    filteredTasks![index].endDate.toString(),
                                point: filteredTasks![index].point.toString(),
                              );
                              context.pushRoute(
                                TasksDetailsRoute(task: task),
                              );
                            },
                            child: Text(
                              "View More",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.selectedGreen),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      );
    }
  }

  List<DataOfAllTasks> _filterTasksByCategoryAndSearch(
      List<DataOfAllTasks> tasks, List<String> categoryList, String query) {
    List<DataOfAllTasks> filteredTasks = [];
    if (selectedCategoryIndex == -1) {
      filteredTasks = tasks;
    } else {
      String selectedCategoryName = categoryList[selectedCategoryIndex];
      filteredTasks = tasks
          .where((task) => task.categoriesDetails.name == selectedCategoryName)
          .toList();
    }
    if (query.isNotEmpty) {
      filteredTasks = filteredTasks
          .where(
              (task) => task.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    return filteredTasks;
  }
}

enum ViewType {
  List,
  Grid,
}
