import 'package:base_2/shared/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

class PageScaffold extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  final PreferredSizeWidget? appBar;
  final Widget? drawer;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;
  final bool withSafeArea;

  const PageScaffold({
    super.key,
    required this.child,
    this.padding,
    this.backgroundColor,
    this.appBar,
    this.drawer,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.withSafeArea = true,
  });

  @override
  Widget build(BuildContext context) {
    Widget content = Padding(
      padding: padding ?? const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 20,
      ),
      child: child,
    );

    if (withSafeArea) {
      content = SafeArea(child: content);
    }

    return Scaffold(
      backgroundColor: AppTheme.scaffoldBgColor,
      appBar: appBar,
      body: content,
      drawer: drawer,
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}