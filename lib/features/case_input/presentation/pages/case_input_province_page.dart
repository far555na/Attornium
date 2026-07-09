import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_radius.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/widgets/app_card.dart';
import '../view_models/case_input_view_model.dart';
import '../widgets/case_bottom_action_bar.dart';

class CaseInputProvincePage extends ConsumerStatefulWidget {
  const CaseInputProvincePage({super.key});

  @override
  ConsumerState<CaseInputProvincePage> createState() =>
      _CaseInputProvincePageState();
}

class _CaseInputProvincePageState extends ConsumerState<CaseInputProvincePage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(caseInputViewModelProvider.notifier).updateProgress(0.6, '60%');
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(caseInputViewModelProvider);
    final viewModel = ref.read(caseInputViewModelProvider.notifier);

    final List<String> provinces = [
      'กรุงเทพฯ',
      'เชียงใหม่',
      'ภูเก็ต',
      'ชลบุรี',
      'อื่นๆ',
    ];

    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(
              AppSpacing.xxl,
              AppSpacing.md,
              AppSpacing.xxl,
              AppSpacing.xxl,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Main Card
                AppCard(
                  padding: const EdgeInsets.all(AppSpacing.xxl),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'เหตุการณ์นี้เกิดขึ้นที่จังหวัดใดครับ?',
                        style: Theme.of(context).textTheme.displaySmall
                            ?.copyWith(
                              color: AppColors.navy900,
                              fontWeight: FontWeight.bold,
                              height: 1.2,
                            ),
                      ),
                      const SizedBox(height: AppSpacing.lg),
                      Text(
                        'คำถามเหล่านี้จะช่วยให้เราค้นหาทนายความที่มีความเชี่ยวชาญตรงจุดที่สุดสำหรับคุณ',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: AppColors.textSecondary,
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: AppSpacing.xxxl),

                      // Province Grid
                      Wrap(
                        spacing: AppSpacing.md,
                        runSpacing: AppSpacing.md,
                        children: provinces.map((province) {
                          final isSelected = state.selectedProvince == province;
                          return GestureDetector(
                            onTap: () => viewModel.selectProvince(province),
                            child: Container(
                              width:
                                  (MediaQuery.of(context).size.width -
                                      AppSpacing.xxl * 2 -
                                      AppSpacing.xl * 2 -
                                      AppSpacing.md) /
                                  2,
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: AppRadius.large,
                                border: Border.all(
                                  color: isSelected
                                      ? AppColors.gold500
                                      : AppColors.border,
                                  width: isSelected ? 1.5 : 1.0,
                                ),
                              ),
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    province,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall
                                        ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.navy900,
                                        ),
                                  ),
                                  if (isSelected) ...[
                                    const SizedBox(width: 8),
                                    const Icon(
                                      Icons.check_circle,
                                      color: AppColors.gold500,
                                      size: 18,
                                    ),
                                  ],
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppSpacing.xl),

                // Additional Options
                _buildOptionCard(
                  context: context,
                  icon: Icons.help_outline,
                  text: 'ไม่แน่ใจ',
                  onTap: () {
                    // Handle not sure
                  },
                ),
                const SizedBox(height: AppSpacing.md),
                _buildOptionCard(
                  context: context,
                  icon: Icons.fast_forward_outlined,
                  text: 'ข้ามข้อนี้',
                  onTap: () {
                    // Handle skip
                  },
                ),
                const SizedBox(height: AppSpacing.xxxl),
              ],
            ),
          ),
        ),
        CaseBottomActionBar(
          primaryText: 'ถัดไป',
          onPrimaryPressed: state.selectedProvince != null
              ? () {
                  // TODO: Next step
                }
              : null,
        ),
      ],
    );
  }

  Widget _buildOptionCard({
    required BuildContext context,
    required IconData icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.xl,
          vertical: AppSpacing.lg,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: AppRadius.large,
        ),
        child: Row(
          children: [
            Icon(icon, color: AppColors.navy900, size: 24),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: Text(
                text,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.navy900,
                ),
              ),
            ),
            const Icon(
              Icons.keyboard_arrow_down,
              color: AppColors.navy900,
              size: 24,
            ),
          ],
        ),
      ),
    );
  }
}
