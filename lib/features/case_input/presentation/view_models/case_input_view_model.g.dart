// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'case_input_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CaseInputViewModel)
final caseInputViewModelProvider = CaseInputViewModelProvider._();

final class CaseInputViewModelProvider
    extends $NotifierProvider<CaseInputViewModel, CaseInputState> {
  CaseInputViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'caseInputViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$caseInputViewModelHash();

  @$internal
  @override
  CaseInputViewModel create() => CaseInputViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CaseInputState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CaseInputState>(value),
    );
  }
}

String _$caseInputViewModelHash() =>
    r'eff5eff3414e8fc007f9250578d19bb9285b9ac8';

abstract class _$CaseInputViewModel extends $Notifier<CaseInputState> {
  CaseInputState build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<CaseInputState, CaseInputState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CaseInputState, CaseInputState>,
              CaseInputState,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
