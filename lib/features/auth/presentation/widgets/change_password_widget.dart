import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green_quest_app/core/utils/app_constants.dart';
import 'package:green_quest_app/core/widget/app_button.dart';
import 'package:green_quest_app/core/widget/custom_input_field.dart';
import 'package:green_quest_app/features/auth/shared/providers.dart';

class ChangePasswordWidget extends ConsumerWidget {
  final VoidCallback next;

  const ChangePasswordWidget({
    super.key,
    required this.next,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authNotifierProvider);
    final stateNotifier = ref.watch(authNotifierProvider.notifier);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 40),
        Text(
          'Change Password',
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.w700,
              ),
        ),
        8.verticalSpace,
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.8,
          child: Text(
            AppConstants.IT_IS_A_LONG_ESTABLISHED_FACT_3,
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              state.isLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Column(
                      children: [
                        CustomInputField(
                          controller: stateNotifier.newPasswordTextController,
                          hintText: 'New Password',
                          isPassword: true,
                          onCompleteEditingCallback: () =>
                              FocusManager.instance.primaryFocus?.unfocus(),
                        ),
                        12.verticalSpace,
                        CustomInputField(
                          controller:
                              stateNotifier.confirmPasswordTextController,
                          hintText: 'Confirm Password',
                          isPassword: true,
                          onCompleteEditingCallback: () =>
                              FocusManager.instance.primaryFocus?.unfocus(),
                        ),
                      ],
                    ),
              20.verticalSpace,
              AppButton(
                text: 'Submit',
                width: 0.8.sw,
                onPressed: () => stateNotifier.changePassword(() {
                  next();
                }),
              ),
              40.verticalSpace,
            ],
          ),
        ),
      ],
    );
  }
}
