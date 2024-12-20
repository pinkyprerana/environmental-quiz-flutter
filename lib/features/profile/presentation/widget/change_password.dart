import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_quest_app/core/constants/assets.dart';
import 'package:green_quest_app/core/utils/app_constants.dart';
import 'package:green_quest_app/core/utils/app_decoration.dart';
import 'package:green_quest_app/core/widget/app_button.dart';
import 'package:green_quest_app/core/widget/custom_input_field.dart';
import 'package:green_quest_app/features/profile/shared/provider.dart';

class ChangePasswordWidget extends ConsumerWidget {
  const ChangePasswordWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    final stateNotifier = ref.watch(profileNotifierProvider.notifier);
    final state = ref.watch(profileNotifierProvider);
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Column(
        children: [
          const Spacer(),
          if (keyboardHeight == 0) ...[
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: SvgPicture.asset(Assets.closeCircle),
            ),
            20.verticalSpace,
          ],
          Container(
            // height: 0.7.sh,
            decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder75Top,
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                40.verticalSpace,
                Text(
                  'Change Password?',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const SizedBox(height: 5),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.8,
                  child: Text(
                    AppConstants.IT_IS_A_LONG_ESTABLISHED_FACT_3,
                    style: Theme.of(context).textTheme.bodySmall,
                    textAlign: TextAlign.center,
                  ),
                ),
                30.verticalSpace,
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
                                  hintText: 'Old password',
                                  isPassword: true,
                                  controller:
                                      stateNotifier.oldPasswordController,
                                  onCompleteEditingCallback: () => FocusManager
                                      .instance.primaryFocus
                                      ?.unfocus(),
                                ),
                                10.verticalSpace,
                                CustomInputField(
                                  hintText: 'New password',
                                  isPassword: true,
                                  controller:
                                      stateNotifier.newPasswordController,
                                  onCompleteEditingCallback: () => FocusManager
                                      .instance.primaryFocus
                                      ?.unfocus(),
                                ),
                                10.verticalSpace,
                                CustomInputField(
                                  hintText: 'Confirm password',
                                  isPassword: true,
                                  controller:
                                      stateNotifier.confirmPasswordController,
                                  onCompleteEditingCallback: () => FocusManager
                                      .instance.primaryFocus
                                      ?.unfocus(),
                                ),
                              ],
                            ),
                    ],
                  ),
                ),
                25.verticalSpace,
                AppButton(
                  text: 'Submit',
                  width: 0.8.sw,
                  onPressed: () {
                    final isInputValid =
                        stateNotifier.validateChangePasswordFields();

                    if (isInputValid) {
                      stateNotifier.changePassword(() {
                        Navigator.pop(context);
                      });
                    }
                  },
                ),
                40.verticalSpace,
              ],
            ),
          ),
          keyboardHeight == 0
              ? const SizedBox.shrink()
              : SizedBox(height: keyboardHeight),
        ],
      ),
    );
  }
}
