import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_state.freezed.dart';

@freezed
sealed class SplashState with _$SplashState {
  const factory SplashState({
    @Default(false) final bool loading,
    @Default(0) final int getRequestTryCount,
  }) = _SplashState;
}
