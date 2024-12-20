import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green_quest_app/core/constants/assets.dart';
import 'package:green_quest_app/core/styles/app_colors.dart';
import 'package:green_quest_app/core/utils/app_decoration.dart';
import 'package:green_quest_app/core/widget/onboarding_button.dart';
import 'package:green_quest_app/features/auth/shared/providers.dart';
import 'package:green_quest_app/routes/app_router.gr.dart';

import '../../../core/utils/app_constants.dart';

@RoutePage()
class OnboardingPage extends ConsumerStatefulWidget {
  const OnboardingPage({super.key});

  @override
  ConsumerState<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends ConsumerState<OnboardingPage> {
  int _onboardingScreenIndex = 0;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.sizeOf(context);
    final stateNotifier = ref.watch(authNotifierProvider.notifier);
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: Stack(
          children: [
            const Column(),
            Image.asset(
              screenDetails[_onboardingScreenIndex]["imagePath"],
              width: deviceSize.width,
              fit: BoxFit.fill,
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: deviceSize.height * 0.488,
                width: deviceSize.width,
                decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder75Top,
                  color: Colors.white,
                  boxShadow: [
                    const BoxShadow(color: Colors.white),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    70.verticalSpace,
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(width: 40),
                        _indicator(0),
                        _indicator(1),
                        _indicator(2),
                      ],
                    ),
                    28.verticalSpace,
                    Center(
                      child: SizedBox(
                        width: deviceSize.width * 0.8,
                        child: Text(
                          screenDetails[_onboardingScreenIndex]["titleText"],
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Center(
                      child: SizedBox(
                        width: deviceSize.width * 0.8,
                        child: Text(
                          screenDetails[_onboardingScreenIndex]["messageText"],
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: AppColors.descriptionText,
                                    height: 1.6,
                                  ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(
                            bottom: 16, left: 20.w, right: 35.w),
                        child: Row(
                          children: [
                            TextButton(
                              child: const Text(
                                AppConstants.SKIP,
                                style: TextStyle(
                                  color: AppColors.colorSecondary,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              onPressed: () {
                                stateNotifier.onboardUser();
                                context.pushRoute(const SignInRoute());
                              },
                            ),
                            const Spacer(),
                            OnboardingButton(
                              onPressed: () =>
                                  _goToNextOnboardingScreenContent(ref),
                              color: AppColors.selectedGreen,
                              icon: Image.asset(
                                Assets.arrowRight,
                                scale: 2,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    deviceSize.height < 700
                        ? const SizedBox.shrink()
                        : 24.verticalSpace,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _indicator(int indicatorIndex) {
    return Container(
      width: _onboardingScreenIndex == indicatorIndex ? 30 : 20,
      height: 5,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color: _onboardingScreenIndex == indicatorIndex
            ? const Color(0xFF20462E)
            : const Color.fromARGB(255, 214, 210, 210),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  List screenDetails = [
    {
      "imagePath": "assets/images/onboarding_screen_images/ob_img_one.png",
      "titleText": "Lorem Ipsum is simply dummy text sum 1",
      "messageText":
          "It is a long established fact that a reader will be distracted by the readable 1",
    },
    {
      "imagePath": "assets/images/onboarding_screen_images/ob_img_two.png",
      "titleText": "Lorem Ipsum is simply dummy text sum 2",
      "messageText":
          "It is a long established fact that a reader will be distracted by the readable 2",
    },
    {
      "imagePath": "assets/images/onboarding_screen_images/ob_img_three.png",
      "titleText": "Lorem Ipsum is simply dummy text sum 3",
      "messageText":
          "It is a long established fact that a reader will be distracted by the readable 3",
    },
  ];

  void _goToNextOnboardingScreenContent(WidgetRef ref) {
    if (_onboardingScreenIndex >= screenDetails.length - 1) {
      ref.read(authNotifierProvider.notifier).onboardUser();
      context.pushRoute(const SignInRoute());
      return;
    }
    setState(() {
      _onboardingScreenIndex++;
    });
  }
}
