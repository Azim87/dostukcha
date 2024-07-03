import 'package:freezed_annotation/freezed_annotation.dart';

part 'private_data_state.freezed.dart';

@freezed
class PrivateDataState with _$PrivateDataState {
  const factory PrivateDataState({
    @Default(false) final bool loading,
    final String? privateDataUrl,
  }) = _PrivateDataState;
}
