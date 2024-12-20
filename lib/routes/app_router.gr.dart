// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i18;
import 'package:flutter/material.dart' as _i19;
import 'package:green_quest_app/features/all_tasks/presentation/all_tasks_screen.dart'
    as _i2;
import 'package:green_quest_app/features/all_tasks/presentation/task_details.dart'
    as _i17;
import 'package:green_quest_app/features/auth/presentation/forgot_password_screen.dart'
    as _i6;
import 'package:green_quest_app/features/auth/presentation/signin_screen.dart'
    as _i13;
import 'package:green_quest_app/features/auth/presentation/signup_screen.dart'
    as _i14;
import 'package:green_quest_app/features/auth/presentation/widgets/successfully_changed_widget.dart'
    as _i16;
import 'package:green_quest_app/features/base/presentation/base_screen.dart'
    as _i3;
import 'package:green_quest_app/features/home/presentation/home_screen.dart'
    as _i8;
import 'package:green_quest_app/features/my_tasks/domain/completed_tasks_model.dart'
    as _i20;
import 'package:green_quest_app/features/my_tasks/presentation/active_task_details.dart'
    as _i1;
import 'package:green_quest_app/features/my_tasks/presentation/completed_task_details.dart'
    as _i4;
import 'package:green_quest_app/features/my_tasks/presentation/my_tasks_screen.dart'
    as _i10;
import 'package:green_quest_app/features/onboarding/presentation/onboarding_screen.dart'
    as _i12;
import 'package:green_quest_app/features/profile/presentation/edit_profile_screen.dart'
    as _i5;
import 'package:green_quest_app/features/profile/presentation/profile_screen.dart'
    as _i9;
import 'package:green_quest_app/features/splash/presentation/splash_screen.dart'
    as _i15;
import 'package:green_quest_app/features/wallet/presentation/gift_cards_screen.dart'
    as _i7;
import 'package:green_quest_app/features/wallet/presentation/wallet_screen.dart'
    as _i11;

abstract class $AppRouter extends _i18.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i18.PageFactory> pagesMap = {
    ActiveTaskDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ActiveTaskDetailsRouteArgs>();
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.ActiveTaskDetailsPage(
          key: args.key,
          img: args.img,
          title: args.title,
          desc: args.desc,
          points: args.points,
          date: args.date,
          taskId: args.taskId,
          inReview: args.inReview,
        ),
      );
    },
    AllTasksRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AllTasksPage(),
      );
    },
    BaseRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.BasePage(),
      );
    },
    CompletedTasksDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<CompletedTasksDetailsRouteArgs>();
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.CompletedTasksDetailsPage(
          completedTasks: args.completedTasks,
          key: args.key,
        ),
      );
    },
    EditProfileRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.EditProfilePage(),
      );
    },
    ForgotpasswordRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ForgotpasswordPage(),
      );
    },
    GiftCardsRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.GiftCardsPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.HomePage(),
      );
    },
    MyProfileRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.MyProfilePage(),
      );
    },
    MyTasksRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.MyTasksPage(),
      );
    },
    MyWalletRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.MyWalletPage(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.OnboardingPage(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.SignInPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.SignUpPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.SplashPage(),
      );
    },
    SuccessfullyChangedRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.SuccessfullyChangedPage(),
      );
    },
    TasksDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<TasksDetailsRouteArgs>();
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i17.TasksDetailsPage(
          key: args.key,
          task: args.task,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.ActiveTaskDetailsPage]
class ActiveTaskDetailsRoute
    extends _i18.PageRouteInfo<ActiveTaskDetailsRouteArgs> {
  ActiveTaskDetailsRoute({
    _i19.Key? key,
    required String img,
    required String title,
    required String desc,
    required String points,
    required String date,
    required String taskId,
    required bool inReview,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          ActiveTaskDetailsRoute.name,
          args: ActiveTaskDetailsRouteArgs(
            key: key,
            img: img,
            title: title,
            desc: desc,
            points: points,
            date: date,
            taskId: taskId,
            inReview: inReview,
          ),
          initialChildren: children,
        );

  static const String name = 'ActiveTaskDetailsRoute';

  static const _i18.PageInfo<ActiveTaskDetailsRouteArgs> page =
      _i18.PageInfo<ActiveTaskDetailsRouteArgs>(name);
}

class ActiveTaskDetailsRouteArgs {
  const ActiveTaskDetailsRouteArgs({
    this.key,
    required this.img,
    required this.title,
    required this.desc,
    required this.points,
    required this.date,
    required this.taskId,
    required this.inReview,
  });

  final _i19.Key? key;

  final String img;

  final String title;

  final String desc;

  final String points;

  final String date;

  final String taskId;

  final bool inReview;

  @override
  String toString() {
    return 'ActiveTaskDetailsRouteArgs{key: $key, img: $img, title: $title, desc: $desc, points: $points, date: $date, taskId: $taskId, inReview: $inReview}';
  }
}

/// generated route for
/// [_i2.AllTasksPage]
class AllTasksRoute extends _i18.PageRouteInfo<void> {
  const AllTasksRoute({List<_i18.PageRouteInfo>? children})
      : super(
          AllTasksRoute.name,
          initialChildren: children,
        );

  static const String name = 'AllTasksRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i3.BasePage]
class BaseRoute extends _i18.PageRouteInfo<void> {
  const BaseRoute({List<_i18.PageRouteInfo>? children})
      : super(
          BaseRoute.name,
          initialChildren: children,
        );

  static const String name = 'BaseRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i4.CompletedTasksDetailsPage]
class CompletedTasksDetailsRoute
    extends _i18.PageRouteInfo<CompletedTasksDetailsRouteArgs> {
  CompletedTasksDetailsRoute({
    required _i20.CompletedTasks completedTasks,
    _i19.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          CompletedTasksDetailsRoute.name,
          args: CompletedTasksDetailsRouteArgs(
            completedTasks: completedTasks,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'CompletedTasksDetailsRoute';

  static const _i18.PageInfo<CompletedTasksDetailsRouteArgs> page =
      _i18.PageInfo<CompletedTasksDetailsRouteArgs>(name);
}

class CompletedTasksDetailsRouteArgs {
  const CompletedTasksDetailsRouteArgs({
    required this.completedTasks,
    this.key,
  });

  final _i20.CompletedTasks completedTasks;

  final _i19.Key? key;

  @override
  String toString() {
    return 'CompletedTasksDetailsRouteArgs{completedTasks: $completedTasks, key: $key}';
  }
}

/// generated route for
/// [_i5.EditProfilePage]
class EditProfileRoute extends _i18.PageRouteInfo<void> {
  const EditProfileRoute({List<_i18.PageRouteInfo>? children})
      : super(
          EditProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditProfileRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ForgotpasswordPage]
class ForgotpasswordRoute extends _i18.PageRouteInfo<void> {
  const ForgotpasswordRoute({List<_i18.PageRouteInfo>? children})
      : super(
          ForgotpasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotpasswordRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i7.GiftCardsPage]
class GiftCardsRoute extends _i18.PageRouteInfo<void> {
  const GiftCardsRoute({List<_i18.PageRouteInfo>? children})
      : super(
          GiftCardsRoute.name,
          initialChildren: children,
        );

  static const String name = 'GiftCardsRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i8.HomePage]
class HomeRoute extends _i18.PageRouteInfo<void> {
  const HomeRoute({List<_i18.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i9.MyProfilePage]
class MyProfileRoute extends _i18.PageRouteInfo<void> {
  const MyProfileRoute({List<_i18.PageRouteInfo>? children})
      : super(
          MyProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyProfileRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i10.MyTasksPage]
class MyTasksRoute extends _i18.PageRouteInfo<void> {
  const MyTasksRoute({List<_i18.PageRouteInfo>? children})
      : super(
          MyTasksRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyTasksRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i11.MyWalletPage]
class MyWalletRoute extends _i18.PageRouteInfo<void> {
  const MyWalletRoute({List<_i18.PageRouteInfo>? children})
      : super(
          MyWalletRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyWalletRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i12.OnboardingPage]
class OnboardingRoute extends _i18.PageRouteInfo<void> {
  const OnboardingRoute({List<_i18.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i13.SignInPage]
class SignInRoute extends _i18.PageRouteInfo<void> {
  const SignInRoute({List<_i18.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i14.SignUpPage]
class SignUpRoute extends _i18.PageRouteInfo<void> {
  const SignUpRoute({List<_i18.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i15.SplashPage]
class SplashRoute extends _i18.PageRouteInfo<void> {
  const SplashRoute({List<_i18.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i16.SuccessfullyChangedPage]
class SuccessfullyChangedRoute extends _i18.PageRouteInfo<void> {
  const SuccessfullyChangedRoute({List<_i18.PageRouteInfo>? children})
      : super(
          SuccessfullyChangedRoute.name,
          initialChildren: children,
        );

  static const String name = 'SuccessfullyChangedRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i17.TasksDetailsPage]
class TasksDetailsRoute extends _i18.PageRouteInfo<TasksDetailsRouteArgs> {
  TasksDetailsRoute({
    _i19.Key? key,
    required _i17.Task task,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          TasksDetailsRoute.name,
          args: TasksDetailsRouteArgs(
            key: key,
            task: task,
          ),
          initialChildren: children,
        );

  static const String name = 'TasksDetailsRoute';

  static const _i18.PageInfo<TasksDetailsRouteArgs> page =
      _i18.PageInfo<TasksDetailsRouteArgs>(name);
}

class TasksDetailsRouteArgs {
  const TasksDetailsRouteArgs({
    this.key,
    required this.task,
  });

  final _i19.Key? key;

  final _i17.Task task;

  @override
  String toString() {
    return 'TasksDetailsRouteArgs{key: $key, task: $task}';
  }
}
