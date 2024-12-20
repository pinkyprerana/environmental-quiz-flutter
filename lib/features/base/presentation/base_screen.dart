import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../all_tasks/presentation/all_tasks_screen.dart';
import '../../home/presentation/home_screen.dart';
import '../../my_tasks/presentation/my_tasks_screen.dart';
import '../../wallet/presentation/wallet_screen.dart';
import '../../profile/presentation/profile_screen.dart';
import '../shared/providers.dart';
import 'bottom_navigation.dart';

@RoutePage()
class BasePage extends ConsumerStatefulWidget {
  const BasePage({super.key});

  @override
  ConsumerState<BasePage> createState() => BasePageState();
}

class BasePageState extends ConsumerState<BasePage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(baseNotifierProvider);
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        extendBody: true,
        bottomNavigationBar: const BottomNavigation(),
        // appBar: AppBar(
        //   systemOverlayStyle: state.bottomNavIndex == 2
        //       ? SystemUiOverlayStyle.dark
        //       : SystemUiOverlayStyle.light,
        //   backgroundColor: AppColors.colorTransparent,
        //   elevation: 0,
        //   automaticallyImplyLeading: false,
        // ),
        body: Stack(
          children: [
            Offstage(
              offstage: (state.bottomNavIndex != 0),
              child: const HomePage(),
            ),
            widgetView(state.bottomNavIndex),
          ],
        ),
      ),
    );
  }

  Widget widgetView(int index) {
    switch (index) {
      case 0:
        return const HomePage();
      case 1:
        return const AllTasksPage();
      case 2:
        return const MyTasksPage();
      case 3:
        return const MyWalletPage();
      case 4:
        return const MyProfilePage();
      default:
        return Container();
    }
  }
}
