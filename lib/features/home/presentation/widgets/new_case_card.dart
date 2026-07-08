import 'package:attornium/core/theme/app_spacing.dart';
import 'package:attornium/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/widgets/app_card.dart';
import '../../../../core/widgets/app_button.dart';

class NewCaseCard extends StatelessWidget {
  const NewCaseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard.navy(
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
              child: const Icon(
                Icons.balance_rounded,
                size: 200,
                color: AppColors.gold500,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Container(
                  //   padding: const EdgeInsets.all(AppSpacing.md),
                  //   decoration: BoxDecoration(
                  //     shape: BoxShape.circle,
                  //     border: Border.all(color: AppColors.gold500, width: 1.5),
                  //   ),
                  //   child: const Icon(
                  //     Icons.post_add,
                  //     color: AppColors.gold500,
                  //     size: 28,
                  //   ),
                  // ),
                  // const SizedBox(width: AppSpacing.lg),
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
              AppButton.secondary(
                text: 'ปรึกษาทนายตอนนี้',
                icon: Icons.chat_outlined,
                onPressed: () {
                  context.push('/case-input');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
