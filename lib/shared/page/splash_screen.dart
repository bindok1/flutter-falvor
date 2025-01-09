import 'package:base_2/features/home/presentation/pages/home_page.dart';
import 'package:base_2/features/sign_in/utlis/user_role_enums.dart';
import 'package:base_2/shared/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  final UserRole role;
  final VoidCallback onFinished;

  const SplashScreen({
    super.key, 
    required this.role, 
    required this.onFinished,
  });

  @override
  Widget build(BuildContext context) {
    // Navigate dengan animasi setelah 3 detik
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => HomePage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0); 
            const end = Offset.zero;
            const curve = Curves.easeInOut;

            var tween = Tween(begin: begin, end: end).chain(
              CurveTween(curve: curve),
            );

            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
          transitionDuration: const Duration(milliseconds: 500),
        ),
        (route) => false,
      );
    });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selamat Datang Bepoo',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: AppTheme.primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'as ${role.name.toUpperCase()}',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}