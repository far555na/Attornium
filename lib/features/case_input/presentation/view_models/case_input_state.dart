import 'package:freezed_annotation/freezed_annotation.dart';

part 'case_input_state.freezed.dart';

@freezed
abstract class CaseInputState with _$CaseInputState {
  const factory CaseInputState({
    @Default('') String details,
    String? selectedTopic,
  }) = _CaseInputState;
}
