import 'package:attornium/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/entities/case_entity.dart';
import 'home_state.dart';

part 'home_view_model.g.dart';

@riverpod
class HomeViewModel extends _$HomeViewModel {
  @override
  HomeState build() {
    // In a real app, this might fetch from a repository.
    // For now, we populate with the mock data.
    _loadRecentCases();
    return const HomeState(isLoading: true);
  }

  void _loadRecentCases() {
    // Simulate network delay
    Future.delayed(const Duration(milliseconds: 500), () {
      state = state.copyWith(
        isLoading: false,
        recentCases: [
          const CaseEntity(
            title: 'ปรึกษาสัญญาเช่าอาคาร',
            caseId: 'LC-8821',
            status: 'จับคู่แล้ว',
            statusColor: AppColors.gold500,
            statusBgColor: AppColors.goldSoft,
            lawyerName: 'ทนายสมศักดิ์',
            lawyerAction: 'กำลังร่างเอกสารให้คุณ',
            lawyerImage: 'https://i.pravatar.cc/150?img=11',
            icon: Icons.balance,
            hasActions: true,
          ),
          const CaseEntity(
            title: 'ขอคำปรึกษาภาษีมรดก',
            caseId: 'LC-7944',
            status: 'รอดำเนินการ',
            statusColor: AppColors.textSecondary,
            statusBgColor: AppColors.disabled,
            icon: Icons.description,
            isSearching: true,
            searchProgress: 0.25, // Just visual
          ),
        ],
      );
    });
  }
}
