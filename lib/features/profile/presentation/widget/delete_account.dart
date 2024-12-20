import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green_quest_app/core/constants/assets.dart';
import 'package:green_quest_app/core/styles/app_colors.dart';
import 'package:green_quest_app/core/utils/app_decoration.dart';
import 'package:green_quest_app/core/widget/app_button.dart';
import 'package:green_quest_app/features/auth/shared/providers.dart';
import 'package:green_quest_app/routes/app_router.gr.dart';

class DeleteAccountModal extends ConsumerWidget {
  const DeleteAccountModal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceSize = MediaQuery.sizeOf(context);
    final stateNotifier = ref.watch(authNotifierProvider.notifier);
    final state = ref.watch(authNotifierProvider);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          const Spacer(),
          Container(
            width: deviceSize.width,
            decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder75Top,
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                40.verticalSpace,
                Image.asset(
                  Assets.trashNew,
                  height: 45,
                ),
                20.verticalSpace,
                state.isLoading
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : Column(
                        children: [
                          Text(
                            'Are You Sure?',
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          10.verticalSpace,
                          SizedBox(
                            width: deviceSize.width * 0.8,
                            child: Text(
                              'It is a long established fact that a reader will be distracted by the readable',
                              style: Theme.of(context).textTheme.bodySmall,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                30.verticalSpace,
                SizedBox(
                  width: deviceSize.width * 0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      AppButton(
                        text: 'Yes',
                        color: AppColors.greenLightText,
                        width: 0.37.sw,
                        height: 56,
                        textColor: AppColors.greenDarkText,
                        onPressed: () => stateNotifier.deleteAccount(() {
                          context.replaceRoute(const SignInRoute());
                        }),
                      ),
                      AppButton(
                        text: 'No',
                        width: 0.37.sw,
                        height: 56,
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
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
