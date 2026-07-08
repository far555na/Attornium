import 'package:attornium/core/theme/app_spacing.dart';
import 'package:attornium/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';

class NewCaseCard extends StatelessWidget {
  const NewCaseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AttorniumTheme.navyCard,
      padding: const EdgeInsets.all(AppSpacing.xxl),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Background decorative icon
          Positioned(
            right: -20,
            bottom: -10,
            child: Opacity(
              opacity: 0.15,
              child: Transform.rotate(
                angle: -0.2,
                child: const Icon(
                  Icons.history_edu,
                  size: 140,
                  color: AppColors.gold500,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(AppSpacing.md),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.gold500, width: 1.5),
                    ),
                    child: const Icon(
                      Icons.post_add,
                      color: AppColors.gold500,
                      size: 28,
                    ),
                  ),
                  const SizedBox(width: AppSpacing.lg),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'เริ่มคดีใหม่',
                          style: Theme.of(context).textTheme.titleLarge
                              ?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        const SizedBox(height: AppSpacing.sm),
                        Text(
                          'อธิบายปัญหาของคุณ เพื่อหาทนายที่เชี่ยวชาญเฉพาะทางมาช่วยดูแลคดีของคุณอย่างมืออาชีพ',
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                color: Colors.white.withValues(alpha: 0.85),
                                height: 1.6,
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.xxl),
              Container(
                decoration: AttorniumTheme.goldButton,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    foregroundColor: AppColors.navy900,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.chat_outlined, size: 22),
                      const SizedBox(width: AppSpacing.sm),
                      Text(
                        'ปรึกษาทนายตอนนี้',
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(
                              color: AppColors.navy900,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(width: AppSpacing.sm),
                      const Icon(Icons.chevron_right, size: 22),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
