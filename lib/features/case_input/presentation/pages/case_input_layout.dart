import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/app_spacing.dart';
import '../../../../core/widgets/app_scaffold.dart';
import '../view_models/case_input_view_model.dart';
import '../widgets/case_progress_bar.dart';

class CaseInputLayout extends ConsumerWidget {
  final Widget child;

  const CaseInputLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(caseInputViewModelProvider);

    return AppScaffold(
      useNavyBackground: true,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(
                AppSpacing.xxl,
                AppSpacing.xxl,
                AppSpacing.xxl,
                0,
              ),
              child: CaseProgressBar(
                title: state.progressTitle,
                trailingText: state.progressTrailingText,
                progress: state.progress,
              ),
            ),
            Expanded(child: child),
          ],
        ),
      ),
    );
  }
}
