import 'package:attornium/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import '../../../../core/widgets/app_scaffold.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundColor: AppColors.navy900,
      body: Center(
        child: Text(
          'Profile Placeholder',
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
