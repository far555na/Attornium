import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/case_input/presentation/pages/case_input_layout.dart';
import '../../features/case_input/presentation/pages/case_input_page.dart';
import '../../features/case_input/presentation/pages/case_input_province_page.dart';
import 'transparent_page.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../../features/main/presentation/pages/main_page.dart';
import '../../features/messages/presentation/pages/messages_page.dart';
import '../../features/my_cases/presentation/pages/my_cases_page.dart';
import '../../features/profile/presentation/pages/profile_page.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: 'root',
);

final appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return CaseInputLayout(child: child);
      },
      routes: [
        GoRoute(
          path: '/case-input',
          pageBuilder: (context, state) => TransparentMaterialPage(
            key: state.pageKey,
            child: const CaseInputPage(),
          ),
          routes: [
            GoRoute(
              path: 'province',
              pageBuilder: (context, state) => TransparentMaterialPage(
                key: state.pageKey,
                child: const CaseInputProvincePage(),
              ),
            ),
          ],
        ),
      ],
    ),

    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return MainPage(navigationShell: navigationShell);
      },
      branches: [
        // Branch 0: Home
        StatefulShellBranch(
          routes: [
            GoRoute(path: '/', builder: (context, state) => const HomePage()),
          ],
        ),
        // Branch 1: My Cases
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/my-cases',
              builder: (context, state) => const MyCasesPage(),
            ),
          ],
        ),
        // Branch 2: Messages
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/messages',
              builder: (context, state) => const MessagesPage(),
            ),
          ],
        ),
        // Branch 3: Profile
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/profile',
              builder: (context, state) => const ProfilePage(),
            ),
          ],
        ),
      ],
    ),
  ],
);
