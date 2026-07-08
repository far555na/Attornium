import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_radius.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_card.dart';
import '../../../../core/widgets/app_scaffold.dart';
import '../view_models/case_input_view_model.dart';

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
  }

  @override
  void dispose() {
    _detailsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(caseInputViewModelProvider);

    return AppScaffold(
      useNavyBackground: true,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppSpacing.xxl),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Progress Bar Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'ความคืบหน้าการจับคู่ทนาย',
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '0%',
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.md),

              // Continuous Progress Bar
              Container(
                height: 8,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(4),
                ),
                alignment: Alignment.centerLeft,
                child: FractionallySizedBox(
                  widthFactor: 0.0,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          AppColors.goldButtonBg1,
                          AppColors.gold400,
                          AppColors.goldButtonBg3,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: AppSpacing.xxxl),

              // Title
              Text(
                'เล่าเรื่องราวของคุณ\nให้เราฟัง',
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  height: 1.2,
                ),
              ),
              const SizedBox(height: AppSpacing.lg),

              // Subtitle
              Text(
                'อธิบายปัญหาของคุณอย่างเป็นธรรมชาติ ไม่ต้องกังวลเรื่องภาษากฎหมาย เรามีระบบอัจฉริยะช่วยวิเคราะห์เพื่อเชื่อมโยงกับทนายที่เหมาะสมให้คุณ',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Colors.white.withValues(alpha: 0.7),
                  height: 1.5,
                ),
              ),
              const SizedBox(height: AppSpacing.xxxl),

              // Card
              AppCard(
                padding: const EdgeInsets.all(AppSpacing.xxl),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Card Header
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.description_outlined,
                              color: AppColors.navy900,
                              size: 24,
                            ),
                            const SizedBox(width: AppSpacing.sm),
                            Text(
                              'รายละเอียดเหตุการณ์',
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        // Text(
                        //   'ตัวอย่างคำอธิบาย',
                        //   style: Theme.of(context).textTheme.labelMedium
                        //       ?.copyWith(
                        //         color: AppColors.gold500,
                        //         fontWeight: FontWeight.bold,
                        //       ),
                        // ),
                      ],
                    ),
                    const SizedBox(height: AppSpacing.lg),

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
                                  'เช่น ฉันต้องการปรึกษาเรื่องสัญญาเช่าบ้านที่ไม่ได้รับความเป็นธรรม หรือ มีปัญหานี้บัตรเครดิต เป็นต้น...',
                              hintStyle: Theme.of(context).textTheme.bodyMedium
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
                        // Add some logic to show icon if needed, but in the image,
                        // some chips have icons (e.g. 'สัญญาเช่า' has a paper/document icon, 'มรดก' has a hand/heart icon).
                        // I will add some simple icons based on topic string for visual similarity.
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
                                  color: AppColors.textPrimary,
                                )
                              : null,
                          backgroundColor: AppColors.surface,
                          side: BorderSide.none,
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
              const SizedBox(height: AppSpacing.xxxl),

              // Find Lawyer Button
              AppButton.secondary(
                text: 'เริ่มค้นหาทนาย',
                onPressed: () {
                  // TODO: Handle finding lawyer action
                },
              ),
              const SizedBox(height: AppSpacing.xxxl),
            ],
          ),
        ),
      ),
    );
  }
}
