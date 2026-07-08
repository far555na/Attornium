import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/case_entity.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default(true) bool isLoading,
    @Default([]) List<CaseEntity> recentCases,
    String? error,
  }) = _HomeState;
}
