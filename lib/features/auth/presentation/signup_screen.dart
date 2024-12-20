import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green_quest_app/core/utils/app_decoration.dart';
import 'package:green_quest_app/core/widget/app_button.dart';
import 'package:green_quest_app/core/widget/custom_input_field.dart';

import '../../../core/constants/assets.dart';
// import '../../../core/shared/providers.dart';
import '../../../core/styles/app_colors.dart';
import '../../../core/styles/app_text_styles.dart';
import '../../../core/utils/app_constants.dart';
import '../../../routes/app_router.gr.dart';
import '../shared/providers.dart';

@RoutePage()
class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({super.key});

  @override
  ConsumerState<SignUpPage> createState() => SigininPagUptate();
}

class SigininPagUptate extends ConsumerState<SignUpPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
        () => ref.watch(authNotifierProvider.notifier).resetValues());
  }

  final firstNameFN = FocusNode();
  final lastNameFN = FocusNode();
  final emailFN = FocusNode();
  final mobileFN = FocusNode();
  final cityFN = FocusNode();
  final zipFN = FocusNode();
  final pass1FN = FocusNode();
  final pass2FN = FocusNode();

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.sizeOf(context);
    final state = ref.watch(authNotifierProvider);
    final signupStateNotifier = ref.watch(authNotifierProvider.notifier);
    // final hiveDatabase = ref.watch(hiveProvider);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                Assets.signUpBg,
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
            SizedBox(
              height: deviceSize.height * 1.412,
              width: deviceSize.width,
              child: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // top part
                    SizedBox(
                      width: double.infinity,
                      height: deviceSize.height * 0.185,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // const Spacer(),
                          70.verticalSpace,
                          Image.asset(
                            Assets.logo,
                            width: deviceSize.width * 0.5,
                          ),
                          40.verticalSpace,
                          // const Spacer(),
                        ],
                      ),
                    ),

                    Container(
                      decoration:
                          AppDecoration.outlineOnPrimaryContainer.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder75Top,
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 40),
                          Text(
                            AppConstants.SIGNUP,
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(fontWeight: FontWeight.w700),
                          ),
                          10.verticalSpace,
                          SizedBox(
                            width: deviceSize.width * 0.8,
                            child: Text(
                              'It is a long established fact that',
                              style: Theme.of(context).textTheme.bodySmall,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 40),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CustomInputField(
                                  focusNode: firstNameFN,
                                  onCompleteEditingCallback: () =>
                                      FocusScope.of(context)
                                          .requestFocus(lastNameFN),
                                  textInputType: TextInputType.text,
                                  hintText: AppConstants.FIRST_NAME,
                                  controller: signupStateNotifier
                                      .signupFirstNameTextController,
                                ),
                                const SizedBox(height: 12),
                                CustomInputField(
                                  focusNode: lastNameFN,
                                  onCompleteEditingCallback: () =>
                                      FocusScope.of(context)
                                          .requestFocus(emailFN),
                                  textInputType: TextInputType.text,
                                  hintText: AppConstants.LAST_NAME,
                                  controller: signupStateNotifier
                                      .signupLastNameTextController,
                                ),
                                const SizedBox(height: 12),
                                CustomInputField(
                                  focusNode: emailFN,
                                  onCompleteEditingCallback: () =>
                                      FocusScope.of(context)
                                          .requestFocus(mobileFN),
                                  textInputType: TextInputType.emailAddress,
                                  hintText: AppConstants.EMAIL_ADDRESS,
                                  controller: signupStateNotifier
                                      .signupEmailTextController,
                                ),
                                const SizedBox(height: 12),
                                CustomInputField(
                                  focusNode: mobileFN,
                                  onCompleteEditingCallback: () =>
                                      FocusScope.of(context)
                                          .requestFocus(cityFN),
                                  textInputType: TextInputType.phone,
                                  hintText: AppConstants.MOBILE_NUMBER,
                                  controller: signupStateNotifier
                                      .signupMobileTextController,
                                ),
                                const SizedBox(height: 12),
                                CustomInputField(
                                  focusNode: cityFN,
                                  onCompleteEditingCallback: () =>
                                      FocusScope.of(context)
                                          .requestFocus(zipFN),
                                  hintText: AppConstants.CITY,
                                  controller: signupStateNotifier
                                      .signupCityTextController,
                                ),
                                const SizedBox(height: 12),
                                CustomInputField(
                                  focusNode: zipFN,
                                  maxLength: 6,
                                  onCompleteEditingCallback: () =>
                                      FocusScope.of(context)
                                          .requestFocus(pass1FN),
                                  hintText: AppConstants.ZIP_CODE,
                                  controller: signupStateNotifier
                                      .signupZipCodeTextController,
                                ),
                                const SizedBox(height: 12),
                                CustomInputField(
                                  focusNode: pass1FN,
                                  isPassword: true,
                                  hintText: 'Password',
                                  onCompleteEditingCallback: () =>
                                      FocusScope.of(context)
                                          .requestFocus(pass2FN),
                                  controller: signupStateNotifier
                                      .signupPasswordTextController,
                                ),
                                const SizedBox(height: 12),
                                CustomInputField(
                                  focusNode: pass2FN,
                                  onCompleteEditingCallback: () => FocusManager
                                      .instance.primaryFocus
                                      ?.unfocus(),
                                  isPassword: true,
                                  hintText: AppConstants.CONFIRM_PASSWORD,
                                  controller: signupStateNotifier
                                      .signupConfirmPasswordTextController,
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      onTap: () =>
                                          signupStateNotifier.acceptTAC(),
                                      child: SizedBox(
                                        height: 24,
                                        width: 24,
                                        child: state.checked
                                            ? Image.asset(Assets.check)
                                            : Image.asset(
                                                Assets.radioUnselected),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Column(
                                      children: [
                                        2.verticalSpace,
                                        SizedBox(
                                          width: deviceSize.width * 0.65,
                                          child: RichText(
                                            text: TextSpan(
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall
                                                  ?.copyWith(
                                                    fontSize: 14,
                                                    color:
                                                        const Color(0xFF595F71),
                                                    height: 1.5,
                                                  ),
                                              children: [
                                                const TextSpan(
                                                  text: 'Lorem Ipsum is simply',
                                                  style: TextStyle(
                                                    color: Colors.transparent,
                                                    shadows: [
                                                      Shadow(
                                                        color:
                                                            Color(0xFF595F71),
                                                        offset: Offset(0, -1.5),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const TextSpan(
                                                  text: " ",
                                                ),
                                                TextSpan(
                                                  text: 'dummy text',
                                                  style: const TextStyle(
                                                    shadows: [
                                                      Shadow(
                                                        color: AppColors
                                                            .colorSecondary,
                                                        offset: Offset(0, -1.5),
                                                      ),
                                                    ],
                                                    // decorationThickness: 2.0,

                                                    decoration: TextDecoration
                                                        .underline,
                                                    color: Colors.transparent,
                                                    // fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                    decorationColor: AppColors
                                                        .colorSecondary,
                                                  ),
                                                  recognizer:
                                                      TapGestureRecognizer()
                                                        ..onTap = () {
                                                          showAdaptiveDialog(
                                                              context: context,
                                                              builder:
                                                                  (context) {
                                                                return AlertDialog(
                                                                  title:
                                                                      const Text(
                                                                    'dummy text',
                                                                  ),
                                                                  content:
                                                                      const Text(
                                                                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry printer took.'),
                                                                  actions: [
                                                                    TextButton(
                                                                      onPressed:
                                                                          () =>
                                                                              Navigator.pop(context),
                                                                      child: const Text(
                                                                          'close'),
                                                                    ),
                                                                  ],
                                                                );
                                                              });
                                                        },
                                                ),
                                                const TextSpan(
                                                  text: " ",
                                                ),
                                                const TextSpan(
                                                  text:
                                                      'of the printing and typesetting.',
                                                  style: TextStyle(
                                                    color: Colors.transparent,
                                                    shadows: [
                                                      Shadow(
                                                        color:
                                                            Color(0xFF595F71),
                                                        offset: Offset(0, -1.5),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 30),
                                AppButton(
                                  text: AppConstants.SUBMIT,
                                  onPressed: () =>
                                      signupStateNotifier.signUp(() {
                                    FocusManager.instance.primaryFocus
                                        ?.unfocus();
                                    context.pushRoute(const SignInRoute());
                                  }),
                                ),
                                const SizedBox(height: 30),
                                GestureDetector(
                                    onTap: () => Navigator.pop(context),
                                    child: RichText(
                                      text: TextSpan(
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(
                                                fontSize: 14,
                                                color: const Color(0xFF595F71)),
                                        children: [
                                          TextSpan(
                                            text: AppConstants
                                                .ALREADY_HAVE_AN_ACCOUNT,
                                            style: AppTextStyles
                                                .textStyleFredokaRegular
                                                .copyWith(
                                              color: const Color(0xFF595F71),
                                              fontSize: 12.sp,
                                            ),
                                          ),
                                          const TextSpan(
                                            text: " ",
                                          ),
                                          TextSpan(
                                            text: AppConstants.SIGNIN,
                                            style: AppTextStyles
                                                .textStyleFredokaRegular
                                                .copyWith(
                                              color: const Color(0xFF996D57),
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          )
                                        ],
                                      ),
                                      textAlign: TextAlign.left,
                                    )),
                                const SizedBox(height: 30),
                              ],
                            ),
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
