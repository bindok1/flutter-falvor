import 'package:base_2/shared/config/alice/alice.dart';
import 'package:base_2/shared/config/route/app_routes.dart';
import 'package:base_2/shared/config/route/route_config.dart';
import 'package:base_2/shared/di/di.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BaseApp extends StatelessWidget {
  const BaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize:const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child:MaterialApp(
        onGenerateRoute: RouteConfig.onGenerateRoute,
        initialRoute: AppRoutes.main,
        navigatorKey: kDebugMode ? getIt<AppAlice>().alice.getNavigatorKey() : getIt<GlobalKey<NavigatorState>>(),
      
      )
    );
  }
}
