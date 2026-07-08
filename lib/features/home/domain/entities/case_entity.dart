import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'case_entity.freezed.dart';

@freezed
abstract class CaseEntity with _$CaseEntity {
  const factory CaseEntity({
    required String title,
    required String caseId,
    required String status,
    required Color statusColor,
    required Color statusBgColor,
    required IconData icon,
    String? lawyerName,
    String? lawyerAction,
    String? lawyerImage,
    @Default(false) bool hasActions,
    @Default(false) bool isSearching,
    double? searchProgress,
  }) = _CaseEntity;
}
