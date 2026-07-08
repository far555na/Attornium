import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:attornium/core/theme/app_theme.dart';
import '../widgets/custom_bottom_nav_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: AttorniumTheme.navy900,
      body: navigationShell,
      bottomNavigationBar: CustomBottomNavBar(navigationShell: navigationShell),
    );
  }
}
