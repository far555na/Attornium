import 'package:attornium/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import '../../../../core/widgets/app_scaffold.dart';
import 'package:go_router/go_router.dart';
import '../widgets/custom_bottom_nav_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      extendBody: true,
      backgroundColor: AppColors.navy900,
      body: navigationShell,
      bottomNavigationBar: CustomBottomNavBar(navigationShell: navigationShell),
    );
  }
}
