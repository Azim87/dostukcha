import 'package:freezed_annotation/freezed_annotation.dart';

part 'mediapicker_state.freezed.dart';

@freezed
class MediapickerState with _$MediapickerState {
  const factory MediapickerState({
    @Default(false) final bool granted,
    @Default(false) final bool permanentlyDenied,
  }) = _MediapickerState;
}
