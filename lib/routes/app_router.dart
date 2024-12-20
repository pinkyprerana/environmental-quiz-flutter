import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          path: '/splash',
          initial: true,
        ),
        AutoRoute(page: SignInRoute.page, path: '/siginin'),
        AutoRoute(page: SignUpRoute.page, path: '/siginUp'),
        AutoRoute(page: ForgotpasswordRoute.page, path: '/forgotpassword'),
        // AutoRoute(page: VerifyOTPRoute.page, path: '/verifyOTP'),
        // AutoRoute(page: ResetPasswordRoute.page, path: '/resetPassword'),
        // AutoRoute(page: ChangePasswordRoute.page, path: '/changePassword'),
        AutoRoute(page: BaseRoute.page, path: '/base'),
        AutoRoute(page: EditProfileRoute.page, path: '/editProfile'),

        // AutoRoute(page: TermsAndCondition.page, path: '/termsAndCondition'),
        // AutoRoute(page: CompleteProfileRoute.page, path: '/CompleteProfile'),
        // AutoRoute(page: LongLoadingRoute.page, path: '/longLoading'),
        AutoRoute(page: MyWalletRoute.page, path: '/myWallet'),
        AutoRoute(page: MyTasksRoute.page, path: '/myTasks'),
        AutoRoute(page: AllTasksRoute.page, path: '/allTasks'),
        AutoRoute(page: TasksDetailsRoute.page, path: '/taskDetails'),
        AutoRoute(
            page: ActiveTaskDetailsRoute.page, path: '/activeTaskDetails'),
        AutoRoute(
            page: CompletedTasksDetailsRoute.page,
            path: '/completedTaskDetails'),
        AutoRoute(
            page: ActiveTaskDetailsRoute.page, path: '/activeTaskDetails'),
        // AutoRoute(page: UploadTaskRoute.page, path: '/uploadTask'),
        AutoRoute(
            page: SuccessfullyChangedRoute.page,
            path: '/successfullyChangedModal'),
        AutoRoute(page: OnboardingRoute.page, path: '/onboardingScreen'),
        AutoRoute(page: GiftCardsRoute.page, path: '/giftcard'),
        AutoRoute(page: HomeRoute.page, path: '/home'),
        AutoRoute(page: MyProfileRoute.page, path: '/myProfile'),
      ];
}
