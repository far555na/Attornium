import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/theme/app_theme.dart';
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
            statusColor: AttorniumTheme.success,
            statusBgColor: AttorniumTheme.successBg,
            lawyerName: 'ทนายสมศักดิ์',
            lawyerAction: 'กำลังร่างเอกสารให้คุณ',
            lawyerImage: 'https://i.pravatar.cc/150?img=11',
            icon: Icons.balance,
            hasActions: true,
          ),
          const CaseEntity(
            title: 'ขอคำปรึกษาภาษีมรดก',
            caseId: 'LC-7944',
            status: 'กำลังดำเนินการ',
            statusColor: AttorniumTheme.info,
            statusBgColor: AttorniumTheme.infoBg,
            icon: Icons.folder_special,
            isSearching: true,
            searchProgress: 0.45,
          ),
        ],
      );
    });
  }
}
