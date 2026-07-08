import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../view_models/home_view_model.dart';
import '../../../../core/theme/app_theme.dart';
import '../widgets/new_case_card.dart';
import '../widgets/recent_case_card.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeState = ref.watch(homeViewModelProvider);

    return Scaffold(
      backgroundColor: AttorniumTheme.navy900,
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
                      horizontal: 24.0,
                      vertical: 16.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.account_balance,
                              color: AttorniumTheme.gold500,
                              size: 28,
                            ),
                            const SizedBox(width: 12),
                            Text(
                              'LegalConnect',
                              style: Theme.of(context).textTheme.titleLarge
                                  ?.copyWith(
                                    color: AttorniumTheme.gold500,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            const Icon(
                              Icons.notifications_outlined,
                              color: AttorniumTheme.gold400,
                              size: 28,
                            ),
                            Positioned(
                              right: 2,
                              top: 2,
                              child: Container(
                                width: 10,
                                height: 10,
                                decoration: const BoxDecoration(
                                  color: AttorniumTheme.gold500,
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
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 16),
                        Text(
                          'สวัสดีครับ คุณสมชาย',
                          style: Theme.of(context).textTheme.headlineSmall
                              ?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'ยินดีต้อนรับกลับมา วันนี้มีอะไรให้เราช่วยไหมครับ?',
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(color: Colors.white.withAlpha(204)),
                        ),
                        const SizedBox(height: 24),
                        const NewCaseCard(),
                        const SizedBox(height: 32),
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
                color: AttorniumTheme.surface,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              clipBehavior: Clip.antiAlias,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24.0, 32.0, 24.0, 24.0),
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
                            padding: EdgeInsets.zero,
                            minimumSize: Size.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          child: Row(
                            children: [
                              Text(
                                'ดูทั้งหมด',
                                style: Theme.of(context).textTheme.labelLarge
                                    ?.copyWith(color: AttorniumTheme.gold500),
                              ),
                              const SizedBox(width: 4),
                              const Icon(
                                Icons.chevron_right,
                                color: AttorniumTheme.gold500,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    if (homeState.isLoading)
                      const Center(child: CircularProgressIndicator(color: AttorniumTheme.gold500))
                    else
                      ...homeState.recentCases.map((caseEntity) => Padding(
                            padding: const EdgeInsets.only(bottom: 16.0),
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
                          )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
