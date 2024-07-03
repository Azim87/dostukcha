import 'package:freezed_annotation/freezed_annotation.dart';

part 'loan_contract_state.freezed.dart';

@freezed
class LoanContractState with _$LoanContractState {
  const factory LoanContractState({
    final String? requestId,
    @Default(false) final bool loading,
  }) = _LoanContractState;
}
