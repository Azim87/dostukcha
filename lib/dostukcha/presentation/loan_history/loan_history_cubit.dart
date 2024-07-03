import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../core/util/globals.dart';
import '../../data/endpoints.dart';
import '../../data/model/get_loan_history/loan_history_data.dart';
import '../../domain/repository/get_loan_history_repository.dart';

part 'loan_history_cubit.freezed.dart';

part 'loan_history_state.dart';

@injectable
class LoanHistoryCubit extends Cubit<LoanHistoryState> {
  LoanHistoryCubit(this.loanHistoryRepository) : super(const LoanHistoryState.initial());

  final GetLoanHistoryRepository loanHistoryRepository;

  Future<void> getLoanHistory() async {
    emit(const LoanHistoryState.loading());

    final either = await loanHistoryRepository.getLoanHistory();

    either.fold(
      (error) => showNetworkErrorAlertDialog(
        errorMessage: error,
        callback: () => null,
        endpoint: Endpoints.getLoanHistory,
      ),
      (success) {
        if (success.errorCode == 0)
          emit(LoanHistoryState.success(loanHistoryData: success.data ?? []));
        else
          showNetworkErrorAlertDialog(errorMessage: success.message!, callback: () => null, endpoint: Endpoints.getLoanHistory);
      },
    );
  }
}
