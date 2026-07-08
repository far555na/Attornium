import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';

class MyCasesPage extends StatelessWidget {
  const MyCasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AttorniumTheme.navy900,
      body: Center(
        child: Text(
          'My Cases Placeholder',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Colors.white,
              ),
        ),
      ),
    );
  }
}
