import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green_quest_app/core/constants/assets.dart';
import 'package:green_quest_app/core/utils/app_decoration.dart';
import 'package:green_quest_app/core/widget/app_button.dart';
import 'package:green_quest_app/features/auth/presentation/forgot_password_screen.dart';
import 'package:green_quest_app/routes/app_router.gr.dart';

import '../../../core/styles/app_colors.dart';
import '../../../core/styles/app_text_styles.dart';
import '../../../core/utils/app_constants.dart';
import '../../../core/widget/custom_input_field.dart';
import '../shared/providers.dart';

@RoutePage()
class SignInPage extends ConsumerStatefulWidget {
  const SignInPage({super.key});

  @override
  ConsumerState<SignInPage> createState() => SignInPageState();
}

class SignInPageState extends ConsumerState<SignInPage> {
  @override
  void initState() {
    Future.microtask(() {
      ref.watch(authNotifierProvider.notifier).resetValues();
      ref.watch(authNotifierProvider.notifier).checksavedUser();
    });
    super.initState();
  }

  final passFN = FocusNode();
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.sizeOf(context);
    final state = ref.watch(authNotifierProvider);
    final signinStateNotifier = ref.watch(authNotifierProvider.notifier);
    // final hiveDatabase = ref.watch(hiveProvider);
    // final double keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                Assets.loginBg,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(0, 187, 236, 193),
                    Color.fromARGB(255, 197, 225, 200),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              primary: true,
              physics: const ClampingScrollPhysics(),
              child: SizedBox(
                width: double.infinity,
                height: deviceSize.height,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: deviceSize.height * 0.2,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          40.verticalSpace,
                          Image.asset(
                            Assets.logo,
                            width: deviceSize.width * 0.5,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: deviceSize.height * 0.8,
                      width: deviceSize.width,
                      decoration:
                          AppDecoration.outlineOnPrimaryContainer.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder75Top,
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          60.verticalSpace,
                          Text(
                            AppConstants.LOGIN,
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                          10.verticalSpace,
                          SizedBox(
                            width: deviceSize.width * 0.8,
                            child: Text(
                              "It is a long established fact that",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(color: AppColors.descriptionText),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          30.verticalSpace,
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CustomInputField(
                                  onCompleteEditingCallback: () =>
                                      FocusScope.of(context)
                                          .requestFocus(passFN),
                                  hintText: AppConstants.EMAIL_ADDRESS,
                                  controller: signinStateNotifier
                                      .loginEmailTextController,
                                ),
                                20.verticalSpace,
                                CustomInputField(
                                  focusNode: passFN,
                                  onCompleteEditingCallback: () => FocusManager
                                      .instance.primaryFocus
                                      ?.unfocus(),
                                  hintText: AppConstants.PASSWORD,
                                  isPassword: true,
                                  controller: signinStateNotifier
                                      .loginPasswordTextController,
                                ),
                                20.verticalSpace,
                                SizedBox(
                                  child: Row(
                                    children: [
                                      Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () => signinStateNotifier
                                                .rememberUser(),
                                            child: SizedBox(
                                              height: 24,
                                              width: 24,
                                              child: state.rememberMe
                                                  ? Image.asset(Assets.check)
                                                  : Image.asset(
                                                      Assets.radioUnselected),
                                            ),
                                          ),
                                          6.horizontalSpace,
                                          Text(
                                            AppConstants.REMEMBER_ME,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall
                                                ?.copyWith(
                                                    color: const Color(
                                                        0xff595F71)),
                                          ),
                                        ],
                                      ),
                                      const Spacer(),
                                      InkWell(
                                        onTap: () {
                                          signinStateNotifier.resetValues();

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
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      FocusScope.of(context)
                                                          .unfocus();
                                                    },
                                                    child:
                                                        const ForgotpasswordPage(),
                                                  ),
                                                );
                                              });
                                        },
                                        child: Text(
                                          AppConstants.FORGOT_PASSWORD,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall
                                              ?.copyWith(
                                                color: AppColors.colorSecondary,
                                                // shadows: [
                                                //   const Shadow(
                                                //     color:
                                                //         AppColors.colorSecondary,
                                                //     offset: Offset(0, -1.4),
                                                //   ),
                                                // ],
                                                decoration:
                                                    TextDecoration.underline,
                                                decorationColor:
                                                    AppColors.colorSecondary,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                30.verticalSpace,
                                AppButton(
                                  onPressed: () {
                                    signinStateNotifier.signIn(() {
                                      FocusManager.instance.primaryFocus
                                          ?.unfocus();
                                      AutoRouter.of(context).pushAndPopUntil(
                                          const BaseRoute(),
                                          predicate: (_) => false);
                                    });
                                  },
                                  text: AppConstants.LOGIN,
                                ),
                              ],
                            ),
                          ),
                          // keyboardHeight == 0 ? const Spacer() : 10.verticalSpace,
                          const Spacer(),
                          GestureDetector(
                            onTap: () => context.pushRoute(
                              const SignUpRoute(),
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: AppConstants.DONT_HAVE_AN_ACCOUNT,
                                    style: AppTextStyles.textStyleFredokaRegular
                                        .copyWith(
                                      color: const Color(0xFF595F71),
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const TextSpan(
                                    text: " ",
                                  ),
                                  TextSpan(
                                    text: AppConstants.SIGNUP,
                                    style: AppTextStyles.textStyleFredokaRegular
                                        .copyWith(
                                      color: const Color(0xFF996D57),
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            state.isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
