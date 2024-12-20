import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:green_quest_app/core/styles/theme_helper.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'core/infrastructure/api_url.dart';
import 'core/shared/providers.dart';
import 'core/styles/app_colors.dart';
import 'core/utils/app_constants.dart';
import 'firebase_options.dart';
import 'routes/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  CachedNetworkImage.logLevel = CacheManagerLogLevel.debug;

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(ProviderScope(child: MyApp()));
  });
}

final initializationProvider = FutureProvider<void>((ref) async {
  await ref.read(hiveProvider).init();

  ref.read(dioProvider)
    ..options = BaseOptions(
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
      validateStatus: (status) {
        return true;
      },
      //baseUrl: 'https://jm-social-media-admin.dedicateddevelopers.us/api/',
      baseUrl: AppUrl.BASE_URL,
    )
    ..interceptors;

  ref.read(dioProvider).interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
        ),
      );

  ref.read(shopifyDioProvider).interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
        ),
      );

  // ref.read(shopNotifierProvider);
});

class MyApp extends ConsumerWidget {
  final appRouter = AppRouter();
  MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(initializationProvider, (_, __) {});
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
    ));
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      useInheritedMediaQuery: true,
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          builder: (context, child) {
            final MediaQueryData data = MediaQuery.of(context);
            return MediaQuery(
              data: data.copyWith(textScaler: const TextScaler.linear(1.0)),
              child: child!,
            );
          },
          theme: ThemeData(
            pageTransitionsTheme: const PageTransitionsTheme(builders: {
              TargetPlatform.android: NoShadowCupertinoPageTransitionsBuilder(),
              TargetPlatform.iOS: NoShadowCupertinoPageTransitionsBuilder(),
            }),
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: const AppBarTheme(color: AppColors.colorWhite),
            bottomSheetTheme: BottomSheetThemeData(
              backgroundColor: Colors.black.withOpacity(0),
            ),
            textTheme: tTheme,
          ),
          title: AppConstants.APP_NAME,
          routeInformationParser: appRouter.defaultRouteParser(),
          routerDelegate: appRouter.delegate(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
