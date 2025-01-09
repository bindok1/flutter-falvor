import 'package:base_2/shared/assets/dummy_data.dart';
import 'package:base_2/features/sign_in/utlis/user_role_enums.dart';
import 'package:base_2/shared/component/button_app.dart';
import 'package:base_2/shared/component/core_app.dart';
import 'package:base_2/shared/config/route/app_routes.dart';
import 'package:base_2/shared/di/di.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final core = getIt<Core>();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonApp(
              context: context,
              role: UserRole.admin,
              onTap: () async {
                await core.saveUser(DummyData.adminUser.toEntity());

                if (!context.mounted) return;

                Navigator.pushNamed(context, AppRoutes.home);
              },
            ),
            const SizedBox(height: 16),
            ButtonApp(
              context: context,
              role: UserRole.manager,
              onTap: () async {
                await core.saveUser(DummyData.managerUser.toEntity());
                if (!context.mounted) return;
                Navigator.pushNamed(context, AppRoutes.home);
              },
            ),
            const SizedBox(height: 16),
            ButtonApp(
              context: context,
              role: UserRole.user,
              onTap: () async {
                await core.saveUser(DummyData.userUser.toEntity());
                if (!context.mounted) return;
                Navigator.pushNamed(context, AppRoutes.home);
              },
            ),
          ],
        ),
      ),
    );
  }
}
