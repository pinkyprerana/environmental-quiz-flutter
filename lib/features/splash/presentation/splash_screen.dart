import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:green_quest_app/core/constants/assets.dart';
import 'package:green_quest_app/core/infrastructure/hive_database.dart';
import 'package:green_quest_app/core/shared/providers.dart';

import '../../../routes/app_router.gr.dart';

@RoutePage()
class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), navigate);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              Assets.splashBackGroundImg,
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Image.asset(
              Assets.logo,
              width: MediaQuery.of(context).size.width * 0.5,
            ),
          )
        ],
      ),
    );
  }

  Future<void> navigate() async {
    final hive = ref.read(hiveProvider);
    final token = await hive.box.get(AppPreferenceKeys.token);
    final hasOnboarded =
        await hive.box.get(AppPreferenceKeys.hasOnboarded) ?? 'false';
    final id = await hive.box.get(AppPreferenceKeys.id);

    if (mounted) {
      if (token != null && token.toString().isNotEmpty && id != null) {
        AutoRouter.of(context)
            .pushAndPopUntil(const BaseRoute(), predicate: (_) => false);
      } else if (hasOnboarded == 'true') {
        AutoRouter.of(context)
            .pushAndPopUntil(const SignInRoute(), predicate: (_) => false);
      } else {
        AutoRouter.of(context)
            .pushAndPopUntil(const OnboardingRoute(), predicate: (_) => false);
      }
    }
  }
}
