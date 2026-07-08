import 'package:attornium/core/theme/app_spacing.dart';
import 'package:attornium/core/theme/app_radius.dart';
import 'package:attornium/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import '../../../../core/widgets/app_card.dart';
import '../../../../core/widgets/app_button.dart';

class RecentCaseCard extends StatelessWidget {
  final String title;
  final String caseId;
  final String status;
  final Color statusColor;
  final Color statusBgColor;
  final String? lawyerName;
  final String? lawyerAction;
  final String? lawyerImage;
  final IconData icon;
  final bool hasActions;
  final bool isSearching;
  final double? searchProgress;

  const RecentCaseCard({
    super.key,
    required this.title,
    required this.caseId,
    required this.status,
    required this.statusColor,
    required this.statusBgColor,
    this.lawyerName,
    this.lawyerAction,
    this.lawyerImage,
    required this.icon,
    this.hasActions = false,
    this.isSearching = false,
    this.searchProgress,
  });

  @override
  Widget build(BuildContext context) {
    return AppCard.white(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(14),
                decoration: const BoxDecoration(
                  color: AppColors.navy900,
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: AppColors.gold500, size: 28),
              ),
              const SizedBox(width: AppSpacing.lg),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      'เลขที่คดี: $caseId',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.md,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: statusBgColor,
                  borderRadius: AppRadius.rounded,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (!isSearching) ...[
                      Icon(Icons.check_circle, color: statusColor, size: 16),
                      const SizedBox(width: 6),
                    ] else ...[
                      Icon(Icons.schedule, color: statusColor, size: 16),
                      const SizedBox(width: 6),
                    ],
                    Text(
                      status,
                      style: Theme.of(
                        context,
                      ).textTheme.labelSmall?.copyWith(color: statusColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (lawyerName != null) ...[
            const SizedBox(height: AppSpacing.xl),
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: lawyerImage != null
                      ? NetworkImage(lawyerImage!)
                      : null,
                  backgroundColor: AppColors.border,
                  child: lawyerImage == null
                      ? const Icon(Icons.person, color: AppColors.textMuted)
                      : null,
                ),
                const SizedBox(width: AppSpacing.md),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.bodyMedium,
                      children: [
                        TextSpan(
                          text: '$lawyerName ',
                          style: const TextStyle(
                            color: AppColors.info,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(text: lawyerAction ?? ''),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
          if (hasActions) ...[
            const SizedBox(height: AppSpacing.xl),
            Row(
              children: [
                Expanded(
                  child: AppButton.outlined(
                    text: 'รายละเอียด',
                    icon: Icons.description_outlined,
                    onPressed: () {},
                  ),
                ),
                const SizedBox(width: AppSpacing.md),
                Expanded(
                  child: AppButton.primary(
                    text: 'แชทกับทนาย',
                    icon: Icons.chat_outlined,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
          if (isSearching) ...[
            const SizedBox(height: AppSpacing.xl),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(AppSpacing.sm),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.border),
                  ),
                  child: const Icon(
                    Icons.search,
                    color: AppColors.textPrimary,
                    size: 16,
                  ),
                ),
                const SizedBox(width: AppSpacing.md),
                Expanded(
                  child: Text(
                    'กำลังค้นหาทนายที่เหมาะสมที่สุด...',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.xl),
            Row(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: AppRadius.extraSmall,
                    child: LinearProgressIndicator(
                      value: searchProgress,
                      backgroundColor: AppColors.border,
                      valueColor: const AlwaysStoppedAnimation<Color>(
                        AppColors.gold500,
                      ),
                      minHeight: 8,
                    ),
                  ),
                ),
                const SizedBox(width: AppSpacing.lg),
                Text(
                  '${((searchProgress ?? 0) * 100).toInt()}%',
                  style: Theme.of(
                    context,
                  ).textTheme.labelMedium?.copyWith(color: AppColors.gold500),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
