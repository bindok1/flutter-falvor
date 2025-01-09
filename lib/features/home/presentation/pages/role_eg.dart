import 'package:base_2/features/sign_in/utlis/user_role_enums.dart';
import 'package:base_2/shared/component/role_based_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RoleBasedWidget(
  roleWidgets: const {
    UserRole.admin: Text('Admin View'),
    UserRole.manager: Text('Manager View'),
    UserRole.user: Text('User View'),
  },
  permissions: const {
    UserRole.admin: true,
    UserRole.manager: true,
    UserRole.user: true,
  },
  visibility: const {
    UserRole.admin: true,
    UserRole.manager: true,
    UserRole.user: true,
  },
  fallback: const Text('No Access'),
)
      ),
    );
  }
}