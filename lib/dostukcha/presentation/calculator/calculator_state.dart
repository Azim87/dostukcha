import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/get_default_credit/get_default_credit_limit_data.dart';

part 'calculator_state.freezed.dart';

@freezed
class CalculatorState with _$CalculatorState {
  const factory CalculatorState({
    @Default(false) bool loading,
    @Default(0) final int creditMaxSum,
    @Default(0) final double selectedSum,
    @Default(0) final double administrationFeeSum,
    @Default(0) final double rewardSum,
    @Default('') final String repaymentDate,
    @Default('') final String totalSumWithPercent,
    final GetDefaultCreditLimitData? creditLimitData,
  }) = _CalculatorState;
}
