import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_quest_app/core/constants/assets.dart';
import 'package:green_quest_app/core/utils/app_decoration.dart';
import 'package:green_quest_app/features/auth/presentation/widgets/widgets.dart';
import 'package:green_quest_app/features/auth/shared/providers.dart';

@RoutePage()
class ForgotpasswordPage extends ConsumerStatefulWidget {
  const ForgotpasswordPage({super.key});

  @override
  ConsumerState<ForgotpasswordPage> createState() => ForgotpasswordPageState();
}

class ForgotpasswordPageState extends ConsumerState<ForgotpasswordPage> {
  int _changePasswordState = 0;

  void _goToNextForgotPasswordState() {
    setState(() {
      _changePasswordState++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // final bottomInsets = MediaQuery.of(context).viewInsets.bottom;
    // bool isKeyboardOpen = bottomInsets != 0;
    final deviceSize = MediaQuery.sizeOf(context);
    final double keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    final stateNotifier = ref.watch(authNotifierProvider.notifier);
    return Scaffold(
      backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        primary: true,
        child: SizedBox(
          height: deviceSize.height,
          width: deviceSize.width,
          child: Column(
            children: [
              const Spacer(),
              _changePasswordState != 3
                  ? GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: SvgPicture.asset(Assets.closeCircle),
                    )
                  : const SizedBox(),
              30.verticalSpace,
              Container(
                // height: _changePasswordState != 3
                //     ? _changePasswordState == 2
                //         ? 0.48.sh
                //         : MediaQuery.sizeOf(context).height * 0.4
                //     : MediaQuery.sizeOf(context).height * 0.42,
                padding: const EdgeInsets.only(top: 20),
                width: deviceSize.width,
                decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder75Top,
                  color: Colors.white,
                ),
                child: _changePasswordState == 0
                    ? ForgotPasswordWidget(
                        stateNotifier: stateNotifier,
                        next: _goToNextForgotPasswordState,
                      )
                    : _changePasswordState == 1
                        ? VerificationCodeWidget(
                            next: _goToNextForgotPasswordState,
                          )
                        : _changePasswordState == 2
                            ? ChangePasswordWidget(
                                next: _goToNextForgotPasswordState,
                              )
                            : const SuccessfullyChangedPage(),
              ),
              // isKeyboardOpen ? const Spacer() : const SizedBox.shrink(),
              keyboardHeight != 0
                  ? SizedBox(height: keyboardHeight)
                  : const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}

// showModalBottomSheet(
//                     isScrollControlled: true,
//                     // backgroundColor: Colors.transparent,
//                     context: context,
//                     builder: (context) {
//                       return BackdropFilter(
//                         filter: ImageFilter.blur(
//                           sigmaX: 20,
//                           sigmaY: 20,
//                         ),
//                         child: const VerifyOTPPage(),
//                       );
//                     }),