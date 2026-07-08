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
                padding: const EdgeInsets.all(AppSpacing.md),
                decoration: const BoxDecoration(
                  color: AppColors.navy900,
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: AppColors.gold500, size: 24),
              ),
              const SizedBox(width: AppSpacing.sm),
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
                    const SizedBox(height: AppSpacing.xs),
                    Text(
                      'เลขที่คดี: $caseId',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.sm,
                  vertical: AppSpacing.xs,
                ),
                decoration: BoxDecoration(
                  color: statusBgColor,
                  borderRadius: AppRadius.rounded,
                ),
                child: Text(
                  status,
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: statusColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                  ),
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
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                color: AppColors.navy900,
                                fontWeight: FontWeight.w700,
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
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.disabled,
                      foregroundColor: AppColors.textPrimary,
                      elevation: 0,
                      shadowColor: Colors.transparent,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: AppRadius.large,
                      ),
                      textStyle: Theme.of(context).textTheme.labelLarge
                          ?.copyWith(fontWeight: FontWeight.w700),
                    ),
                    child: const Text('รายละเอียด'),
                  ),
                ),
                const SizedBox(width: AppSpacing.md),
                Expanded(
                  child: AppButton.primary(
                    text: 'แชทกับทนาย',
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
                  decoration: const BoxDecoration(
                    color: AppColors.disabled,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.more_horiz,
                    color: AppColors.textPrimary,
                    size: 16,
                  ),
                ),
                const SizedBox(width: AppSpacing.md),
                Expanded(
                  child: Text(
                    'กำลังค้นหาทนายที่เหมาะสมที่สุด...',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.xl),
            ClipRRect(
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
          ],
        ],
      ),
    );
  }
}
