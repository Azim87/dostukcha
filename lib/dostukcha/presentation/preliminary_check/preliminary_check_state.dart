import 'package:freezed_annotation/freezed_annotation.dart';

part 'preliminary_check_state.freezed.dart';

@freezed
class PreliminaryCheckState with _$PreliminaryCheckState {
  const factory PreliminaryCheckState({
    @Default(false) final bool loading,
    @Default(false) final bool isDeclined,
    @Default(false) final bool scanError,
  }) = _PreliminaryCheckState;
}
