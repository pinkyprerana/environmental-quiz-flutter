import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green_quest_app/core/utils/app_constants.dart';
import 'package:green_quest_app/core/widget/app_button.dart';
import 'package:green_quest_app/core/widget/custom_input_field.dart';
import 'package:green_quest_app/features/auth/application/auth_notifier.dart';
import 'package:green_quest_app/features/auth/shared/providers.dart';

class ForgotPasswordWidget extends ConsumerWidget {
  final VoidCallback next;

  const ForgotPasswordWidget({
    super.key,
    required this.stateNotifier,
    required this.next,
  });

  final AuthNotifier stateNotifier;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceSize = MediaQuery.sizeOf(context);
    final state = ref.watch(authNotifierProvider);
    final stateNotifier = ref.watch(authNotifierProvider.notifier);
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          40.verticalSpace,
          const Text(
            AppConstants.FORGOT_PASSWORD,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          8.verticalSpace,
          SizedBox(
            width: deviceSize.width * 0.8,
            child: Text(
              AppConstants.IT_IS_A_LONG_ESTABLISHED_FACT,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                state.isLoading
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : CustomInputField(
                        controller: stateNotifier.forgotEmailTextController,
                        hintText: AppConstants.EMAIL_ADDRESS,
                        textInputType: TextInputType.emailAddress,
                        onCompleteEditingCallback: () =>
                            FocusManager.instance.primaryFocus?.unfocus(),
                      ),
                const SizedBox(height: 30),
                AppButton(
                  text: AppConstants.SEND,
                  onPressed: () {
                    stateNotifier.sendOTP(() {
                      next();
                      // stateNotifier.resetValues();
                    });
                  },
                ),
                40.verticalSpace,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
