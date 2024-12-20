import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green_quest_app/core/widget/app_button.dart';
import 'package:green_quest_app/features/auth/shared/providers.dart';
import 'package:pinput/pinput.dart';

import '../../../../core/styles/app_colors.dart';
import '../../../../core/utils/app_constants.dart';

class VerificationCodeWidget extends ConsumerWidget {
  final VoidCallback next;

  const VerificationCodeWidget({
    super.key,
    required this.next,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceSize = MediaQuery.sizeOf(context);
    final state = ref.watch(authNotifierProvider);
    final stateNotifier = ref.watch(authNotifierProvider.notifier);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 40),
        Text(
          AppConstants.ENTER_VERIFICATION_CODE,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.w700,
              ),
        ),
        8.verticalSpace,
        SizedBox(
          width: deviceSize.width * 0.76,
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '${AppConstants.IT_IS_A_LONG_ESTABLISHED_FACT_2} ',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextSpan(
                  text: stateNotifier.forgotEmailTextController.text,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 30),
        state.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SizedBox(
                width: deviceSize.width * 0.77,
                child: Pinput(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  autofocus: false,
                  closeKeyboardWhenCompleted: true,
                  keyboardType: TextInputType.number,
                  controller: stateNotifier.otpTextController,
                  defaultPinTheme: PinTheme(
                    width: 63,
                    height: 56,
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Varela Round',
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.colorPrimary,
                      borderRadius: BorderRadius.circular(16),
                      // border: Border.all(
                      //     color: ColorSchemes.primaryColorScheme.primary),
                    ),
                  ),
                  followingPinTheme: PinTheme(
                    width: 63,
                    height: 56,
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Varela Round',
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.grey),
                    ),
                  ),
                  focusedPinTheme: PinTheme(
                    width: 63,
                    height: 56,
                    textStyle: const TextStyle(
                      color: AppColors.colorPrimary,
                      fontSize: 18,
                      fontFamily: 'Varela Round',
                    ),
                    decoration: BoxDecoration(
                      // color: ColorSchemes.primaryColorScheme.primary,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: AppColors.colorPrimary,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
        const SizedBox(height: 30),
        AppButton(
          text: AppConstants.SUBMIT,
          onPressed: () {
            stateNotifier.verifyOTP(() {
              next();
            });
          },
          width: deviceSize.width * 0.75,
        ),
        40.verticalSpace,
      ],
    );
  }
}
