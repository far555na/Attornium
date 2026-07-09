import 'package:freezed_annotation/freezed_annotation.dart';

part 'case_input_state.freezed.dart';

@freezed
abstract class CaseInputState with _$CaseInputState {
  const factory CaseInputState({
    @Default('') String details,
    String? selectedTopic,
    String? selectedProvince,
    @Default(0.0) double progress,
    @Default('ความคืบหน้าการจับคู่ทนาย') String progressTitle,
    @Default('0%') String progressTrailingText,
  }) = _CaseInputState;
}
