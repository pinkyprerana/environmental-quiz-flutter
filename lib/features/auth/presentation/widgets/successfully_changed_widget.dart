import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green_quest_app/core/utils/app_constants.dart';

@RoutePage()
class SuccessfullyChangedPage extends ConsumerWidget {
  const SuccessfullyChangedPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        // const Spacer(),
        SizedBox(
          // height: MediaQuery.sizeOf(context).height * 0.4,
          width: MediaQuery.sizeOf(context).width,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              50.verticalSpace,
              Image.asset('assets/images/others/successful_badge.png'),
              const SizedBox(height: 30),
              Text(
                'Successfully Changed',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              ),
              10.verticalSpace,
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.8,
                child: Text(
                  AppConstants.IT_IS_A_LONG_ESTABLISHED_FACT_3,
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 30),
              TextButton(
                onPressed: () => context.maybePop(),
                child: const Text(
                  'Back to Login',
                  style: TextStyle(
                    shadows: [
                      Shadow(
                        color: Color.fromARGB(240, 153, 109, 87),
                        offset: Offset(0, -1),
                      ),
                    ],
                    fontFamily: 'Fredoka',
                    fontWeight: FontWeight.w600,
                    color: Colors.transparent,
                    decoration: TextDecoration.underline,
                    decorationColor: Color.fromARGB(240, 153, 109, 87),
                    decorationThickness: 1,
                    // decorationStyle: TextDecorationStyle.,
                  ),
                ),
              ),
              40.verticalSpace,
            ],
          ),
        ),
      ],
    );
  }
}
