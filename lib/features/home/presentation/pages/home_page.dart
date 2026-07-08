import 'package:attornium/core/theme/app_spacing.dart';
import 'package:attornium/core/theme/app_radius.dart';
import 'package:attornium/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../view_models/home_view_model.dart';
import '../widgets/new_case_card.dart';
import '../widgets/recent_case_card.dart';
import '../../../../core/widgets/app_scaffold.dart';
import '../../../../core/widgets/app_loading.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeState = ref.watch(homeViewModelProvider);

    return AppScaffold(
      backgroundColor: AppColors.navy900,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SafeArea(
              bottom: false,
              child: Column(
                children: [
                  // Header
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.xxl,
                      vertical: AppSpacing.lg,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.account_balance,
                              color: AppColors.gold500,
                              size: 24,
                            ),
                            const SizedBox(width: AppSpacing.sm),
                            Text(
                              'Attornium',
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(
                                    color: AppColors.gold500,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            const Icon(
                              Icons.notifications_outlined,
                              color: AppColors.gold400,
                              size: 28,
                            ),
                            Positioned(
                              right: 2,
                              top: 2,
                              child: Container(
                                width: 10,
                                height: 10,
                                decoration: const BoxDecoration(
                                  color: AppColors.error,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Greeting
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.xxl,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: AppSpacing.lg),
                        Text(
                          'สวัสดีครับ คุณสมชาย',
                          style: Theme.of(context).textTheme.headlineSmall
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.onPrimary,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        const SizedBox(height: AppSpacing.sm),
                        Text(
                          'ยินดีต้อนรับกลับมา วันนี้มีอะไรให้เราช่วยไหมครับ?',
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                color: Theme.of(
                                  context,
                                ).colorScheme.onPrimary.withAlpha(204),
                              ),
                        ),
                        const SizedBox(height: AppSpacing.xxl),
                        const NewCaseCard(),
                        const SizedBox(height: AppSpacing.xxxl),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: AppColors.surface,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppRadius.giant),
                  topRight: Radius.circular(AppRadius.giant),
                ),
              ),
              clipBehavior: Clip.antiAlias,
              child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                    AppSpacing.xxl,
                    AppSpacing.xxl,
                    AppSpacing.xxl,
                    AppSpacing.xxl,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'คดีล่าสุด',
                            style: Theme.of(context).textTheme.titleLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                horizontal: AppSpacing.xxs,
                              ),
                              minimumSize: Size.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'ดูทั้งหมด',
                                  style: Theme.of(context).textTheme.labelLarge
                                      ?.copyWith(color: AppColors.gold500),
                                ),
                                // const SizedBox(width: AppSpacing.xs),
                                const Icon(
                                  Icons.chevron_right,
                                  color: AppColors.gold500,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: AppSpacing.lg),
                      if (homeState.isLoading)
                        const AppLoading()
                      else
                        ...homeState.recentCases.map(
                          (caseEntity) => Padding(
                            padding: const EdgeInsets.only(
                              bottom: AppSpacing.lg,
                            ),
                            child: RecentCaseCard(
                              title: caseEntity.title,
                              caseId: caseEntity.caseId,
                              status: caseEntity.status,
                              statusColor: caseEntity.statusColor,
                              statusBgColor: caseEntity.statusBgColor,
                              lawyerName: caseEntity.lawyerName,
                              lawyerAction: caseEntity.lawyerAction,
                              lawyerImage: caseEntity.lawyerImage,
                              icon: caseEntity.icon,
                              hasActions: caseEntity.hasActions,
                              isSearching: caseEntity.isSearching,
                              searchProgress: caseEntity.searchProgress,
                            ),
                          ),
                        ),
                      const SizedBox(height: 60),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
