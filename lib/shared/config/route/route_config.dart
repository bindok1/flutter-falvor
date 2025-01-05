

import 'package:base_2/shared/component/base_app.dart';
import 'package:base_2/shared/config/route/app_routes.dart';
import 'package:flutter/material.dart';

class RouteConfig {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    if (settings.name == null || settings.name!.isEmpty) {
      settings = const RouteSettings(name: AppRoutes.main);
    }

    // ignore: unused_local_variable
    final args = settings.arguments;
    Widget page =Container();

    switch (settings.name) {
      case AppRoutes.main:
        // page = const MainPage();
        break;

      case AppRoutes.login:
        // page = const LoginPage();
        break;

      case AppRoutes.home:
        page = const BaseApp();
        break;

      default:
        page = const Scaffold(
          body: Center(
            child: Text('Page Not Found'),
          ),
        );
    }

    return MaterialPageRoute(
      settings: settings,
      builder: (context) => page,
    );
  }
}