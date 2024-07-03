import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/get_credit_pay_info/get_credit_pay_info_data.dart';

part 'profile_with_loan_state.freezed.dart';

@freezed
class ProfileWithLoanState with _$ProfileWithLoanState {
  const factory ProfileWithLoanState({
    @Default(false) final bool loading,
    @Default(false) final bool isDataEmpty,
    @Default('') final String errorText,
    final GetCreditPayInfoData? getCreditPayInfoData,
    final String? requestId,
  }) = _ProfileWithLoanState;
}
