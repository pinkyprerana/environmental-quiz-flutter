import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green_quest_app/core/widget/ad_widget.dart';
import 'package:green_quest_app/core/widget/points_widget.dart';
import 'package:green_quest_app/core/widget/secondary_text_input_field.dart';
import 'package:green_quest_app/features/base/shared/providers.dart';

import '../../../core/styles/app_colors.dart';
import '../../../core/utils/app.dart';
import '../../../core/utils/app_constants.dart';
import '../constants/assets.dart';

class CustomHomeTopWidget extends ConsumerStatefulWidget {
  final List<dynamic> tasksList;
  final List<dynamic> assignedTasksList;
  final void Function(int)? onCategorySelected;
  final void Function(String)? onSearchQueryChanged;
  const CustomHomeTopWidget(
      {super.key,
      required this.onCategorySelected,
      required this.tasksList,
      required this.assignedTasksList,
      required TextEditingController searchController,
      required this.onSearchQueryChanged});

  @override
  CustomHomeTopWidgetState createState() => CustomHomeTopWidgetState();
}

class CustomHomeTopWidgetState extends ConsumerState<CustomHomeTopWidget> {
  List<bool> isSelected = [];
  final TextEditingController _searchController = TextEditingController();
  int selectedCategoryIndex = -1;

  @override
  Widget build(BuildContext context) {
    final List<dynamic> categoryList = getCategoryList();
    isSelected = List.generate(categoryList.length,
        (index) => isSelected.length > index ? isSelected[index] : false);

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Container(
        color: Colors.transparent,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 57, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          height: 31,
                          width: 134,
                          child: Image.asset(
                            Assets.logo,
                          )),
                      const PointsWidget()
                    ],
                  ),
                  const SizedBox(height: 30),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      AppConstants.SEARCH_TASK,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColors.headingText),
                    ),
                  ),
                  16.verticalSpace,
                  SecondaryTextInputField(
                    height: 54,
                    enabled: true,
                    controller:
                        _searchController, //stateNotifier.searchTextController,
                    hintWithoutEnter: 'Search here...',
                    onCompleteEditingCallback: () {
                      FocusScope.of(context).unfocus();
                      _filterTasksBySearch(_searchController.text);
                      widget.onSearchQueryChanged?.call(_searchController.text);
                    },
                    onSearchPressed: (searchQuery) {
                      FocusScope.of(context).unfocus();
                      _filterTasksBySearch(searchQuery);
                      widget.onSearchQueryChanged?.call(searchQuery);
                    },
                  ),
                  16.verticalSpace,
                  categoryList.isEmpty
                      ? const SizedBox(
                          height: 48,
                        )
                      : SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              for (int i = 0; i < categoryList.length; i++) ...[
                                ElevatedButton(
                                  onPressed: () {
                                    if (selectedCategoryIndex == i) {
                                      setState(() {
                                        isSelected = List.generate(
                                            categoryList.length,
                                            (index) => false);
                                        selectedCategoryIndex = -1;
                                      });
                                    } else {
                                      setState(() {
                                        isSelected = List.generate(
                                            categoryList.length,
                                            (index) => index == i);
                                        selectedCategoryIndex = i;
                                      });
                                    }
                                    if (widget.onCategorySelected != null) {
                                      widget.onCategorySelected!(
                                          selectedCategoryIndex);
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: isSelected[i]
                                        ? AppColors.colorWhite
                                        : AppColors.colorBlack,
                                    backgroundColor: isSelected[i]
                                        ? AppColors.colorPrimary
                                        : AppColors.colorWhite,
                                    elevation: 0,
                                  ),
                                  child: Text(
                                    categoryList[i],
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                          color: isSelected[i]
                                              ? AppColors.colorWhite
                                              : AppColors.headingText,
                                        ),
                                  ),
                                ),
                                8.horizontalSpace,
                              ]
                            ],
                          ),
                        ),
                  const SizedBox(height: AppConfigs.h10),
                  // Container(
                  //     height: 280,
                  //     width: double.infinity,
                  //     padding: EdgeInsets.symmetric(
                  //         horizontal: MediaQuery.of(context).size.width * 0.01),
                  //     decoration: const BoxDecoration(
                  //       shape: BoxShape.circle,
                  //     ),
                  //     child: Image.asset(
                  //       Assets.googleAds,
                  //       fit: BoxFit.fill,
                  //     )
                  // ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 280,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: const Material(
                        elevation: 4,
                        child: GoogleNativeAd(),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<dynamic> getCategoryList() {
    final int currentNavIndex = ref.read(baseNotifierProvider).bottomNavIndex;

    if (currentNavIndex == 0) {
      final Set<dynamic> uniqueCategories = widget.assignedTasksList
          .map((task) => task.categoriesDetails.name)
          .toSet();
      return uniqueCategories.toList();
    } else {
      final Set<dynamic> uniqueCategories =
          widget.tasksList.map((task) => task.categoriesDetails.name).toSet();
      return uniqueCategories.toList();
    }
  }

  List<dynamic> searchTasksList = [];
  List<dynamic> _filterTasksBySearch(String query) {
    final int currentNavIndex = ref.read(baseNotifierProvider).bottomNavIndex;
    List<dynamic> tasksList = [];

    if (currentNavIndex == 0) {
      tasksList = widget.assignedTasksList;
    } else {
      tasksList = widget.tasksList;
    }
    debugPrint(query);
    if (query.isEmpty) {
      setState(() {
        searchTasksList = tasksList;
      });
    } else {
      setState(() {
        searchTasksList = tasksList
            .where(
                (task) => task.name.toLowerCase().contains(query.toLowerCase()))
            .toList();
      });
    }

    return searchTasksList;
  }
}
