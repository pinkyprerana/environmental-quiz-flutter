import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:green_quest_app/core/utils/date_formatter.dart';
import 'package:green_quest_app/core/widget/home_top_widgets.dart';
import 'package:green_quest_app/features/my_tasks/shared/provider.dart';
import 'package:green_quest_app/routes/app_router.gr.dart';
import '../../../core/infrastructure/ad_helper.dart';
import '../../../core/styles/app_colors.dart';
import '../../../core/utils/app.dart';
import '../domain/assignedTasks_model.dart';
import '../shared/provider.dart';

@RoutePage()
class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  int selectedCategoryIndex = -1;
  final TextEditingController _searchController = TextEditingController();
  List<DataOfAssignedTasks> filteredTasks = [];

  @override
  void initState() {
    super.initState();
    loadNativeAd();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      filteredTasks = ref.read(assignedTasksNotifierProvider).assignedTasks;
      final stateNotifier = ref.read(myTasksProvider.notifier);
      await stateNotifier.fetchCompletedTasks();
    });
  }

  NativeAd? _nativeAd;
  bool _isAdLoaded = false;
  void loadNativeAd() {
    final nativeAdOptions = NativeAdOptions(
      mediaAspectRatio: MediaAspectRatio.landscape,
      requestCustomMuteThisAd: true,
      shouldRequestMultipleImages: false,
      shouldReturnUrlsForImageAssets: false,
    );

    _nativeAd = NativeAd(
      adUnitId: AdHelper.nativeAdUnitId,
      nativeTemplateStyle: NativeTemplateStyle(
        templateType: TemplateType.medium,
        mainBackgroundColor: Colors.white12,
        callToActionTextStyle: NativeTemplateTextStyle(
          size: 16.0,
        ),
      ),
      request: const AdRequest(),
      listener: NativeAdListener(
        onAdLoaded: (ad) {
          setState(() {
            _nativeAd = ad as NativeAd;
            _isAdLoaded = true;
          });
        },
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          print('$NativeAd failedToLoad: $error');
          ad.dispose();
        },
        onAdOpened: (Ad ad) => print('$NativeAd onAdOpened.'),
        onAdClosed: (Ad ad) => print('$NativeAd onAdClosed.'),
      ),
      nativeAdOptions: nativeAdOptions,
    )..load();
  }

  @override
  void didChangeDependencies() async {
    final stateNotifier = ref.read(myTasksProvider.notifier);
    await stateNotifier.fetchCompletedTasks();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final assignedTaskState = ref.watch(assignedTasksNotifierProvider);
    final assignedTasksList = assignedTaskState.assignedTasks;
    final categoryList =
        assignedTasksList.map((task) => task.categoriesDetails.name).toList();
    filteredTasks = _filterTasksByCategoryAndSearch(
        assignedTasksList, categoryList, _searchController.text);
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
                            assignedTasksList, categoryList, '');
                      });
                    },
                    tasksList: const [],
                    assignedTasksList: assignedTasksList,
                    searchController: _searchController,
                    onSearchQueryChanged: (query) {
                      setState(() {
                        _searchController.text = query;
                        filteredTasks = _filterTasksByCategoryAndSearch(
                            assignedTasksList, categoryList, query);
                      });
                    },
                  ),
                  16.verticalSpace,
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24.0, vertical: 10.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Assigned Tasks",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  10.verticalSpace,
                  Container(
                    color: AppColors.bgColor,
                    child: assignedTaskState.isLoading
                        ? const Center(
                            child: Padding(
                              padding: EdgeInsets.only(top: 20.0),
                              child: CircularProgressIndicator(
                                  color: AppColors.colorPrimary),
                            ),
                          )
                        : filteredTasks.isEmpty
                            ? SizedBox(
                                height: 0.1.sh,
                                child: Text(
                                  assignedTasksList.isEmpty
                                      ? "No assigned task present yet"
                                      : "No assigned task found matching this search",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(fontWeight: FontWeight.w500),
                                ),
                              )
                            : ListView.builder(
                                shrinkWrap: true,
                                itemCount: filteredTasks.length,
                                physics: const NeverScrollableScrollPhysics(),
                                padding:
                                    const EdgeInsets.fromLTRB(20, 0, 20, 20),
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    margin: const EdgeInsets.only(bottom: 10),
                                    decoration: const BoxDecoration(boxShadow: [
                                      BoxShadow(
                                          color:
                                              Color.fromRGBO(11, 90, 17, 0.04),
                                          blurRadius: 46,
                                          spreadRadius: 0,
                                          offset: Offset(0, 24))
                                    ]),
                                    child: Card(
                                        elevation: 0,
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(16),
                                          ),
                                        ),
                                        // margin: const EdgeInsets.all(AppConfigs.h5),
                                        // shadowColor: Colors.black,
                                        child: GestureDetector(
                                          onTap: () {
                                            //Task Details
                                            context.pushRoute(ActiveTaskDetailsRoute(
                                                img:
                                                    '${"https://green-quest-admin.dedicateddevelopers.us/uploads/task/"}${filteredTasks[index].image}',
                                                title:
                                                    filteredTasks[index].name,
                                                taskId: filteredTasks[index]
                                                    .assignedTaskList
                                                    .taskId,
                                                desc: filteredTasks[index]
                                                    .description,
                                                points: filteredTasks[index]
                                                    .point
                                                    .toString(),
                                                date:
                                                    '${formatDateTimeToDDMMYY(filteredTasks[index].assignedTaskList.createdAt)} at ${formatTime(filteredTasks[index].assignedTaskList.createdAt)}',
                                                inReview: filteredTasks[index]
                                                    .assignedTaskList
                                                    .inReview));
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                right: 30),
                                            height: 125,
                                            decoration: BoxDecoration(
                                                // boxShadow: const [BoxShadow(color: Colors.black, blurRadius: AppConfigs.RADIUS_SIZE_DEFAULT,),],
                                                color: AppColors.colorWhite,
                                                borderRadius: BorderRadius
                                                    .circular(AppConfigs
                                                        .RADIUS_SIZE_LARGE)),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
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
                                                        '${"https://green-quest-admin.dedicateddevelopers.us/uploads/task/"}${filteredTasks[index].image}',
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
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            filteredTasks[index]
                                                                .name,
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodySmall
                                                                ?.copyWith(
                                                                    color: AppColors
                                                                        .headingText,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700),
                                                          ),
                                                          8.verticalSpace,
                                                          Text(
                                                            filteredTasks[index]
                                                                .description,
                                                            style: Theme.of(
                                                                    context)
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
                  ),
                  60.verticalSpace
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<DataOfAssignedTasks> _filterTasksByCategoryAndSearch(
      List<DataOfAssignedTasks> assignedTasks,
      List<String> categoryList,
      String query) {
    List<DataOfAssignedTasks> filteredTasks = [];
    if (selectedCategoryIndex == -1) {
      filteredTasks = assignedTasks;
    } else {
      String selectedCategoryName = categoryList[selectedCategoryIndex];
      filteredTasks = assignedTasks
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
