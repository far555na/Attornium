import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_radius.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/widgets/app_card.dart';
import '../view_models/case_input_view_model.dart';
import '../widgets/case_bottom_action_bar.dart';

class CaseInputPage extends ConsumerStatefulWidget {
  const CaseInputPage({super.key});

  @override
  ConsumerState<CaseInputPage> createState() => _CaseInputPageState();
}

class _CaseInputPageState extends ConsumerState<CaseInputPage> {
  late TextEditingController _detailsController;

  @override
  void initState() {
    super.initState();
    _detailsController = TextEditingController(
      text: ref.read(caseInputViewModelProvider).details,
    );
    _detailsController.addListener(() {
      ref
          .read(caseInputViewModelProvider.notifier)
          .updateDetails(_detailsController.text);
    });

    Future.microtask(() {
      ref.read(caseInputViewModelProvider.notifier).updateProgress(0.0, '0%');
    });
  }

  @override
  void dispose() {
    _detailsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(caseInputViewModelProvider);

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
                // Card Section (White Background)
                AppCard(
                  padding: const EdgeInsets.all(AppSpacing.xxl),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title
                      Text(
                        'เล่าเรื่องราวของคุณให้เราฟัง',
                        style: Theme.of(context).textTheme.displaySmall
                            ?.copyWith(
                              color: AppColors.navy900,
                              fontWeight: FontWeight.bold,
                              height: 1.2,
                            ),
                      ),
                      const SizedBox(height: AppSpacing.lg),

                      // Subtitle
                      Text(
                        'เราจะใช้ข้อมูลนี้เพื่อจับคู่คุณกับทนายความที่เชี่ยวชาญที่สุดในสายงานที่คุณต้องการ',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: AppColors.textSecondary,
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: AppSpacing.xxxl),

                      // Label
                      Text(
                        'รายละเอียดคดี',
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppColors.textPrimary,
                            ),
                      ),
                      const SizedBox(height: AppSpacing.md),

                      // Input Field Area
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.surface,
                          borderRadius: AppRadius.large,
                          border: Border.all(color: AppColors.border),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextField(
                              controller: _detailsController,
                              maxLines: 8,
                              style: Theme.of(context).textTheme.bodyMedium,
                              decoration: InputDecoration(
                                hintText:
                                    'อธิบายสิ่งที่เกิดขึ้น... ที่ไหน, เมื่อไหร่, ใครเกี่ยวข้อง และคุณต้องการความช่วยเหลืออย่างไร?',
                                hintStyle: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(color: AppColors.hint),
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                contentPadding: const EdgeInsets.all(
                                  AppSpacing.lg,
                                ),
                                fillColor: Colors.transparent,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                right: AppSpacing.lg,
                                bottom: AppSpacing.md,
                              ),
                              child: Text(
                                '${state.details.length} / 2000',
                                style: Theme.of(context).textTheme.bodySmall
                                    ?.copyWith(color: AppColors.hint),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: AppSpacing.xl),

                      // Popular Topics
                      Row(
                        children: [
                          Text(
                            'หัวข้อยอดนิยม:',
                            style: Theme.of(context).textTheme.labelMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: AppSpacing.md),
                      Wrap(
                        spacing: AppSpacing.sm,
                        runSpacing: AppSpacing.sm,
                        children: CaseInputViewModel.popularTopics.map((topic) {
                          final isSelected = state.selectedTopic == topic;
                          IconData? iconData;
                          switch (topic) {
                            case 'สัญญาเช่า':
                              iconData = Icons.description_outlined;
                              break;
                            case 'มรดก':
                              iconData = Icons.volunteer_activism_outlined;
                              break;
                            case 'กฎหมายแรงงาน':
                              iconData = Icons.work_outline;
                              break;
                            case 'คดีครอบครัว':
                              iconData = Icons.family_restroom_outlined;
                              break;
                            case 'หนี้สิน':
                              iconData = Icons.account_balance_wallet_outlined;
                              break;
                            case 'ธุรกิจ':
                              iconData = Icons.business_center_outlined;
                              break;
                          }

                          return ActionChip(
                            label: Text(topic),
                            avatar: iconData != null
                                ? Icon(
                                    iconData,
                                    size: 16,
                                    color: isSelected
                                        ? AppColors.navy700
                                        : AppColors.textPrimary,
                                  )
                                : null,
                            backgroundColor: AppColors.surface,
                            side: BorderSide(
                              color: isSelected
                                  ? AppColors.navy700
                                  : AppColors.border,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: AppRadius.rounded,
                            ),
                            onPressed: () {
                              final viewModel = ref.read(
                                caseInputViewModelProvider.notifier,
                              );

                              final newText = viewModel
                                  .getUpdatedTextForTopicToggle(
                                    topic,
                                    _detailsController.text,
                                    isSelected,
                                  );

                              _detailsController.text = newText;
                              viewModel.toggleTopic(topic);
                            },
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        CaseBottomActionBar(
          primaryText: 'เริ่มค้นหาทนาย',
          showBackButton: false,
          onPrimaryPressed: () {
            context.push('/case-input/province');
          },
        ),
      ],
    );
  }
}
