import 'core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Attornium',
      theme: AttorniumTheme.lightTheme,
      routerConfig: appRouter,
    );
  }
}
