import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_theme.dart';

class AppScaffold extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget? appBar;
  final Widget? bottomNavigationBar;
  final bool useNavyBackground;
  final Widget? floatingActionButton;
  final Color? backgroundColor;
  final bool extendBody;

  const AppScaffold({
    super.key,
    required this.body,
    this.appBar,
    this.bottomNavigationBar,
    this.useNavyBackground = false,
    this.floatingActionButton,
    this.backgroundColor,
    this.extendBody = false,
  });

  @override
  Widget build(BuildContext context) {
    Widget content = Scaffold(
      backgroundColor:
          backgroundColor ??
          (useNavyBackground ? Colors.transparent : AppColors.surface),
      extendBody: extendBody,
      appBar: appBar,
      body: body,
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton: floatingActionButton,
    );

    if (useNavyBackground) {
      return Container(
        decoration: AttorniumTheme.darkNavyBackground,
        child: content,
      );
    }

    return content;
  }
}
