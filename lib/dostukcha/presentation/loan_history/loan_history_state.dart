part of 'loan_history_cubit.dart';

@freezed
class LoanHistoryState with _$LoanHistoryState {
  const factory LoanHistoryState.initial() = _Initial;

  const factory LoanHistoryState.loading() = _Loading;

  const factory LoanHistoryState.success({required final List<LoanHistoryData> loanHistoryData}) = _Success;

  const factory LoanHistoryState.error({required String errorMessage}) = _Error;
}
