import 'package:attornium/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class MyCasesPage extends StatelessWidget {
  const MyCasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.navy900,
      body: Center(
        child: Text(
          'My Cases Placeholder',
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
