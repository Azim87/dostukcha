import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'loan_contract_state.dart';

@injectable
class LoanContractCubit extends Cubit<LoanContractState> {
  LoanContractCubit() : super(const LoanContractState(loading: true));

  void onLoading(bool loading) => emit(state.copyWith.call(loading: loading));
}
