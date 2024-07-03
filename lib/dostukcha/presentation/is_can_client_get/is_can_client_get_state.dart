import 'package:freezed_annotation/freezed_annotation.dart';

part 'is_can_client_get_state.freezed.dart';

@freezed
class IsCanClientGetState with _$IsCanClientGetState {
  const factory IsCanClientGetState({
    @Default(false) final bool loading,
    @Default(false) final bool isCanClientSuccess,
    @Default(false) final bool scanError,
  }) = _IsCanClientGetState;
}
