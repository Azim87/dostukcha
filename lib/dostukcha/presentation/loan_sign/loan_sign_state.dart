import 'package:freezed_annotation/freezed_annotation.dart';

part 'loan_sign_state.freezed.dart';

@freezed
class LoanSignState with _$LoanSignState {
  const factory LoanSignState({
    @Default(false) final bool loading,
    final String? phoneNumber,
    final String? smsCode,
    final String? requestId,
  }) = _LoanSignState;
}
