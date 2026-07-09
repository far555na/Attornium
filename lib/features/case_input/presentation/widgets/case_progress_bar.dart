import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';

class CaseProgressBar extends StatelessWidget {
  final String title;
  final String trailingText;
  final double progress;
  final TextStyle? titleStyle;
  final TextStyle? trailingStyle;
  final double height;
  final double radius;

  const CaseProgressBar({
    super.key,
    required this.title,
    required this.trailingText,
    required this.progress,
    this.titleStyle,
    this.trailingStyle,
    this.height = 8.0,
    this.radius = 4.0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style:
                  titleStyle ??
                  Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
              trailingText,
              style:
                  trailingStyle ??
                  Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.md),
        Container(
          height: height,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.15),
            borderRadius: BorderRadius.circular(radius),
          ),
          alignment: Alignment.centerLeft,
          child: FractionallySizedBox(
            widthFactor: progress.clamp(0.0, 1.0),
            child: Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    AppColors.goldButtonBg1,
                    AppColors.gold400,
                    AppColors.goldButtonBg3,
                  ],
                ),
                borderRadius: BorderRadius.circular(radius),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
