import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AttorniumTheme.navy900,
      body: Center(
        child: Text(
          'Messages Placeholder',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Colors.white,
              ),
        ),
      ),
    );
  }
}
