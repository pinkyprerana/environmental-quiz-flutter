import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green_quest_app/core/constants/assets.dart';
import 'package:green_quest_app/core/styles/app_colors.dart';
import 'package:green_quest_app/core/utils/date_formatter.dart';
import 'package:green_quest_app/core/widget/app_button.dart';
import 'package:green_quest_app/features/auth/shared/providers.dart';
import 'package:green_quest_app/features/wallet/presentation/widgets/widgets.dart';
import 'package:green_quest_app/features/wallet/shared/provider.dart';
import 'package:green_quest_app/routes/app_router.gr.dart';

@RoutePage()
class MyWalletPage extends ConsumerStatefulWidget {
  const MyWalletPage({super.key});

  @override
  ConsumerState<MyWalletPage> createState() => _MyWalletPageState();
}

class _MyWalletPageState extends ConsumerState<MyWalletPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      final stateNotifier = ref.read(walletNotifierProvider.notifier);
      await stateNotifier.fetchPointsHistory();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(walletNotifierProvider);
    final pointsState = ref.watch(authNotifierProvider);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 1.sh,
            width: 1.sw,
            color: AppColors.mainBg,
          ),
          Container(
            height: 0.4.sh,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(195, 243, 201, 0.9),
                  AppColors.mainBg,
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  59.5.verticalSpace,
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          Assets.logo,
                          height: 31,
                          width: 134,
                        ),
                        30.verticalSpace,
                        Container(
                          height: 76,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromRGBO(216, 226, 209, 1),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(16),
                            color: AppColors.colorWhite,
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Image.asset(
                                      Assets.coinBg,
                                      width: 41,
                                      height: 41,
                                    ),
                                    Image.asset(
                                      Assets.coinHD,
                                      width: 25,
                                      height: 25,
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 12),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'Earned points',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                            color: AppColors.greyText,
                                          ),
                                    ),
                                    Text(
                                      pointsState.totalEarnedPoints?.data
                                              .toString() ??
                                          '',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                            color: const Color(0xFF20462E),
                                          ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                AppButton(
                                  text: 'Redeem',
                                  width: 103,
                                  height: 44,
                                  onPressed: () => context.pushRoute(
                                    const GiftCardsRoute(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 28),
                  Text(
                    'Points History',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  const SizedBox(height: 16),
                  Column(
                    children: List.generate(
                      state.pointHistoryList.length,
                      (index) => HistoryItem(
                        activityName:
                            state.pointHistoryList[index].taskDetails.name,
                        earnedPoints:
                            state.pointHistoryList[index].earnedPoints,
                        receivingDate: formatDateTimeToDDMMYY(
                            state.pointHistoryList[index].completedDate),
                      ),
                    ),
                  ),
                  100.verticalSpace,
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
