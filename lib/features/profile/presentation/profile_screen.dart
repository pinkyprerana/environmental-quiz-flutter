import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green_quest_app/core/constants/assets.dart';
import 'package:green_quest_app/core/infrastructure/api_url.dart';
import 'package:green_quest_app/core/infrastructure/hive_database.dart';
import 'package:green_quest_app/core/shared/providers.dart';
import 'package:green_quest_app/core/styles/app_colors.dart';
import 'package:green_quest_app/features/auth/shared/providers.dart';
import 'package:green_quest_app/features/home/shared/provider.dart';
import 'package:green_quest_app/features/my_tasks/shared/provider.dart';
import 'package:green_quest_app/features/profile/presentation/widget/logout.dart';
import 'package:green_quest_app/features/profile/presentation/widget/widgets.dart';
import 'package:green_quest_app/routes/app_router.gr.dart';

import '../shared/provider.dart';

@RoutePage()
class MyProfilePage extends ConsumerStatefulWidget {
  const MyProfilePage({super.key});

  @override
  ConsumerState<MyProfilePage> createState() => MyProfilePageState();
}

class MyProfilePageState extends ConsumerState<MyProfilePage> {
  var hiveEmail = '';
  var hiveName = '';
  @override
  void initState() {
    super.initState();

    /// below code will be called after first frame has rendered
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      final profileStateNotifier = ref.read(profileNotifierProvider.notifier);
      await profileStateNotifier.getUserProfile();
      final hive = ref.read(hiveProvider);
      hiveEmail = await hive.box.get(AppPreferenceKeys.email);
      hiveName = await hive.box.get(AppPreferenceKeys.fullName);
    });

    // Future.microtask(() {
    //   ref.read(profileNotifierProvider.notifier).fetchUserDetailsFromHive();
    // });
  }

  @override
  Widget build(BuildContext context) {
    final profileState = ref.watch(profileNotifierProvider);
    final authState = ref.watch(authNotifierProvider);
    final assignedState = ref.watch(assignedTasksNotifierProvider);
    final completedState = ref.watch(myTasksProvider);
    // final profileStateNotifier = ref.watch(profileNotifierProvider.notifier);
    final userData = profileState.profileModel?.data;
    return MediaQuery.removePadding(
      removeTop: true,
      context: context,
      child: Scaffold(
        body: profileState.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SafeArea(
                child: Stack(
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
                    SingleChildScrollView(
                      physics: const ClampingScrollPhysics(),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          children: [
                            51.5.verticalSpace,
                            Row(
                              children: [
                                SizedBox(
                                  height: 31,
                                  width: 134,
                                  child: Image.asset(Assets.logo),
                                ),
                                const Spacer(),
                                InkWell(
                                  // behavior: HitTestBehavior.translucent,
                                  onTap: () {
                                    context.pushRoute(
                                      const EditProfileRoute(),
                                    );
                                  },
                                  child: Card(
                                    shape: const StadiumBorder(),
                                    elevation: 0.0,
                                    surfaceTintColor: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0,
                                        vertical: 10.0,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            Assets.edit,
                                            width: 20,
                                          ),
                                          5.horizontalSpace,
                                          Text(
                                            'Edit',
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium
                                                ?.copyWith(
                                                  color: AppColors.profileEdit,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            12.verticalSpace,
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: const Color.fromRGBO(
                                        183, 217, 187, 0.5),
                                    width: 6),
                              ),
                              width: 110,
                              height: 110,
                              child: ClipOval(
                                child: (userData?.profileImage != null &&
                                        userData!.profileImage!.isNotEmpty)
                                    ? Image.network(
                                        '${AppUrl.profileImageBase}${userData.profileImage}',
                                        fit: BoxFit.cover,
                                      )
                                    : Image.asset(
                                        Assets.noImg,
                                        fit: BoxFit.cover,
                                      ),
                              ),
                            ),
                            16.verticalSpace,
                            Column(
                              children: [
                                Text(
                                  userData?.fullName ?? '',
                                  // profileStateNotifier.fullName,
                                  // 'Terry Stanton',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                        color: AppColors.profileEdit,
                                        fontWeight: FontWeight.w700,
                                        // fontFamily: GoogleFonts.fredoka().fontFamily,
                                      ),
                                ),
                                4.verticalSpace,
                                Text(
                                  hiveEmail,
                                  // 'demomail@gmail.com',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                        color: AppColors.descriptionText,
                                      ),
                                ),
                                12.verticalSpace,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    TaskInfo(
                                      stat: completedState.completedTasks.length
                                          .toString(),
                                      statStatus: 'Completed',
                                    ),
                                    TaskInfo(
                                      stat: assignedState.assignedTasks.length
                                          .toString(),
                                      statStatus: 'Pending',
                                    ),
                                    TaskInfo(
                                      stat: authState.totalEarnedPoints?.data
                                              .toString() ??
                                          '',
                                      statStatus: 'Points',
                                    ),
                                  ],
                                ),
                                12.verticalSpace,
                                Container(
                                  decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color:
                                              Color.fromRGBO(11, 90, 17, 0.04),
                                          blurRadius: 46,
                                          spreadRadius: 0,
                                          offset: Offset(0, 24))
                                    ],
                                  ),
                                  child: Card(
                                    surfaceTintColor: Colors.white,
                                    elevation: 0,
                                    child: SizedBox(
                                      width: 1.sw,
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            4.verticalSpace,
                                            Text(
                                              'Personal Details',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge
                                                  ?.copyWith(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                    color:
                                                        AppColors.profileEdit,
                                                  ),
                                            ),
                                            18.verticalSpace,
                                            PersonalDetail(
                                              infoTitle: 'Mobile',
                                              info: userData?.phone ??
                                                  '', //'123456789',
                                            ),
                                            18.verticalSpace,
                                            PersonalDetail(
                                              infoTitle: 'City',
                                              info: userData?.city ??
                                                  '', //'City Name Here',
                                            ),
                                            18.verticalSpace,
                                            PersonalDetail(
                                              infoTitle: 'Zip',
                                              info: userData?.zipcode ??
                                                  '', //'123456',
                                            ),
                                            4.verticalSpace,
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                12.verticalSpace,
                                Container(
                                  decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromRGBO(11, 90, 17, 0.04),
                                        blurRadius: 46,
                                        spreadRadius: 0,
                                        offset: Offset(0, 24),
                                      ),
                                    ],
                                  ),
                                  child: Card(
                                    surfaceTintColor: Colors.white,
                                    elevation: 0,
                                    child: SizedBox(
                                      width: 1.sw,
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  // backgroundColor: Colors.transparent,
                                                  context: context,
                                                  builder: (context) {
                                                    return BackdropFilter(
                                                      filter: ImageFilter.blur(
                                                        sigmaX: 20,
                                                        sigmaY: 20,
                                                      ),
                                                      child:
                                                          const ChangePasswordWidget(),
                                                    );
                                                  },
                                                );
                                              },
                                              child: Row(
                                                children: [
                                                  Image.asset(
                                                    Assets.lock,
                                                    width: 20,
                                                  ),
                                                  10.horizontalSpace,
                                                  Text(
                                                    'Change Password',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodySmall
                                                        ?.copyWith(
                                                          color: AppColors
                                                              .profileEdit,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            20.verticalSpace,
                                            GestureDetector(
                                              onTap: () {
                                                showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  // backgroundColor: Colors.transparent,
                                                  context: context,
                                                  builder: (context) {
                                                    return BackdropFilter(
                                                      filter: ImageFilter.blur(
                                                        sigmaX: 20,
                                                        sigmaY: 20,
                                                      ),
                                                      child:
                                                          const DeleteAccountModal(),
                                                    );
                                                  },
                                                );
                                              },
                                              child: Row(
                                                children: [
                                                  Image.asset(
                                                    Assets.trash,
                                                    width: 20,
                                                  ),
                                                  10.horizontalSpace,
                                                  Text(
                                                    'Delete Account',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodySmall,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            20.verticalSpace,
                                            GestureDetector(
                                              onTap: () {
                                                showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  // backgroundColor: Colors.transparent,
                                                  context: context,
                                                  builder: (context) {
                                                    return BackdropFilter(
                                                      filter: ImageFilter.blur(
                                                        sigmaX: 20,
                                                        sigmaY: 20,
                                                      ),
                                                      child:
                                                          const LogoutWidget(),
                                                    );
                                                  },
                                                );
                                              },
                                              child: Row(
                                                children: [
                                                  Image.asset(
                                                    Assets.logout,
                                                    width: 20,
                                                  ),
                                                  10.horizontalSpace,
                                                  Text(
                                                    'Logout',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodySmall
                                                        ?.copyWith(
                                                          color: AppColors
                                                              .profileEdit,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                80.verticalSpace,
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
      ),
    );
  }
}

class PersonalDetail extends StatelessWidget {
  final String infoTitle;
  final String info;

  const PersonalDetail({
    super.key,
    required this.infoTitle,
    required this.info,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          infoTitle,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        4.verticalSpace,
        Text(
          info,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                color: AppColors.profileEdit,
              ),
        ),
      ],
    );
  }
}

class TaskInfo extends StatelessWidget {
  final String stat;
  final String statStatus;

  const TaskInfo({
    super.key,
    required this.stat,
    required this.statStatus,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      width: 0.27.sw,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            stat,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20.sp,
              color: AppColors.greenDarkText,
            ),
          ),
          4.verticalSpace,
          Text(
            statStatus,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ],
      ),
    );
  }
}
