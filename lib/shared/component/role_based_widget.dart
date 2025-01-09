import 'package:flutter/material.dart';
import 'package:base_2/features/sign_in/utlis/user_role_enums.dart';
import 'package:base_2/shared/component/core_app.dart';
import 'package:base_2/shared/di/di.dart';

class RoleBasedWidget extends StatelessWidget {
  final Map<UserRole, Widget> roleWidgets;
  final Map<UserRole, bool> permissions;
  final Map<UserRole, bool> visibility;
  final Widget? fallback;
  final bool hideIfNoRole;
  final core = getIt<Core>();

  RoleBasedWidget({
    super.key,
    required this.roleWidgets,
    this.permissions = const {},
    this.visibility = const {},
    this.fallback,
    this.hideIfNoRole = false,
  });

  @override
  Widget build(BuildContext context) => core.user?.role.match(
    onRole: (role) => _buildForRole(role),
    onNoRole: () => hideIfNoRole 
      ? const SizedBox.shrink() 
      : (fallback ?? const SizedBox.shrink()),
  ) ?? const SizedBox.shrink(); 

  Widget _buildForRole(UserRole role) => switch ((isVisible(role), hasPermission(role))) {
    (false, _) => const SizedBox.shrink(),
    (true, false) => fallback ?? const Text('Tidak punya akses'),
    (true, true) => roleWidgets[role] ?? const SizedBox.shrink(),
  };

  bool hasPermission(UserRole role) => permissions[role] ?? role.level >= 2;
  bool isVisible(UserRole role) => visibility[role] ?? true;
}


extension RoleMatching on UserRole? {
  T? match<T>({
    required T Function(UserRole role) onRole,
    required T Function() onNoRole,
  }) => this == null ? onNoRole() : onRole(this!);
}