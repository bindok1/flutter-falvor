import 'package:base_2/features/sign_in/utlis/user_role_enums.dart';
import 'package:base_2/shared/config/theme/app_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ButtonApp extends StatefulWidget {
  final BuildContext context;
  final UserRole role;
  final VoidCallback onTap;

  const ButtonApp(
      {super.key,
      required this.context,
      required this.role,
      required this.onTap});

  @override
  State<ButtonApp> createState() => _ButtonAppState();
}

class _ButtonAppState extends State<ButtonApp> {
  bool _isLoading = false;

  void _onTap() async {
    _isLoading
        ? null
        : setState(() {
            _isLoading = true;
            Future.delayed(
              const Duration(seconds: 2),
              () {
                widget.onTap();
                mounted ? setState(() => _isLoading = false) : null;
              },
            );
          });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppTheme.primaryColor,
          foregroundColor: AppTheme.foregroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: _isLoading ? null : _onTap,
        child: _isLoading
            ? Container(
                width: 24,
                height: 24,
                padding: const EdgeInsets.all(2.0),
                child: const CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 3,
                ),
              )
            : Text(
                widget.role.name,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colors.white),
              ));
  }
}
