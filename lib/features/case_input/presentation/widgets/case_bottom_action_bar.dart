import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_radius.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/widgets/app_button.dart';

class CaseBottomActionBar extends StatelessWidget {
  final String primaryText;
  final VoidCallback? onPrimaryPressed;
  final bool showBackButton;
  final VoidCallback? onBackPressed;

  const CaseBottomActionBar({
    super.key,
    required this.primaryText,
    this.onPrimaryPressed,
    this.showBackButton = true,
    this.onBackPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.xxl),
      decoration: const BoxDecoration(
        color: AppColors.navy900,
        border: Border(top: BorderSide(color: AppColors.border, width: 0.1)),
      ),
      child: Row(
        children: [
          if (showBackButton) ...[
            Expanded(
              child: OutlinedButton(
                onPressed: onBackPressed ?? () => context.pop(),
                style: OutlinedButton.styleFrom(
                  foregroundColor: AppColors.gold500,
                  side: const BorderSide(color: AppColors.gold500),
                  backgroundColor: Colors.transparent,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(borderRadius: AppRadius.large),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Icon(Icons.arrow_back, size: 20),
                    // SizedBox(width: 8),
                    Text(
                      'ย้อนกลับ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: AppSpacing.md),
          ],
          Expanded(
            child: AppButton.secondary(
              text: primaryText,
              onPressed: onPrimaryPressed,
            ),
          ),
        ],
      ),
    );
  }
}
