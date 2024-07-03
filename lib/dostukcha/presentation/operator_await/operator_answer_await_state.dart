import 'package:freezed_annotation/freezed_annotation.dart';

part 'operator_answer_await_state.freezed.dart';

@freezed
class OperatorAnswerAwaitState with _$OperatorAnswerAwaitState {
  const factory OperatorAnswerAwaitState({
    @Default(false) bool loading,
    @Default(false) bool loadingOperatorAwait,
    @Default(false) final bool operatorAnswerSuccess,
    @Default(false) final bool operatorAnswerAwaitTimeOut,
    @Default(0) final int operatorAnswerTryCount,
    final int? verificationCheckTimeoutSeconds,
    final int? verificationCheckCount,
    final String? expiredTime,
  }) = _OperatorAnswerAwaitState;
}
