import 'package:base_2/features/sign_in/utlis/user_role_enums.dart';
import 'package:base_2/shared/component/role_based_widget.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return   Center(
      child: RoleBasedWidget(roleWidgets:  {
        UserRole.admin: Text('Admin', style: Theme.of(context).textTheme.bodyLarge,),
        UserRole.manager: Text('Manager', style: Theme.of(context).textTheme.bodyLarge,),
        UserRole.user: Text('User', style: Theme.of(context).textTheme.bodyLarge,),
      }),
    );
  }
}