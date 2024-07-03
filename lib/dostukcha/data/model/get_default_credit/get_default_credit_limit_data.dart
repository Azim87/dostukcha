import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_default_credit_limit_data.freezed.dart';

part 'get_default_credit_limit_data.g.dart';

@freezed
class GetDefaultCreditLimitData with _$GetDefaultCreditLimitData {
  const factory GetDefaultCreditLimitData({
    @JsonKey(name: 'CreditMinSum') final int? creditMinSum,
    @JsonKey(name: 'CreditMaxSum') final int? creditMaxSum,
    @JsonKey(name: 'CreditSumDefault') final int? creditSumDefault,
    @JsonKey(name: 'DaysMinCount') final int? daysMinCount,
    @JsonKey(name: 'DaysMaxCount') final int? daysMaxCount,
    @JsonKey(name: 'DaysCountDefault') final int? daysCountDefault,
    @JsonKey(name: 'Normal_Percent') final double? normalPercent,
    @JsonKey(name: 'After_Percent') final double? afterPercent,
    @JsonKey(name: 'CreditIncrementValue') final double? creditIncrementValue,
    @JsonKey(name: 'PercentBySumDependencies') final List<PercentBySumDependency>? percentBySumDependencies,
    @JsonKey(name: 'NormalProgressPercent') final double? normalProgressPercent,
    @JsonKey(name: 'BadProgressPercent') final double? badProgressPercent,
    @JsonKey(name: 'ScoresInCurrentRang') final double? scoresInCurrentRang,
    @JsonKey(name: 'AdministrationFee') final double? administrationFee,
    @JsonKey(name: 'ScoresTo') final double? scoresTo,
    @JsonKey(name: 'ScoresFrom') final double? scoresFrom,
    @JsonKey(name: 'Rang') final String? rang,
  }) = _GetDefaultCreditLimitData;

  factory GetDefaultCreditLimitData.fromJson(Map<String, dynamic> json) => _$GetDefaultCreditLimitDataFromJson(json);
}

@freezed
class PercentBySumDependency with _$PercentBySumDependency {
  const factory PercentBySumDependency({
    @JsonKey(name: 'MinSum') final int? minSum,
    @JsonKey(name: 'MaxSum') final int? maxSum,
    @JsonKey(name: 'Percent') final int? percent,
    @JsonKey(name: 'MinDaysCount') final int? minDaysCount,
    @JsonKey(name: 'MaxDaysCount') final int? maxDaysCount,
    @JsonKey(name: 'DaysFrom') final int? daysFrom,
    @JsonKey(name: 'DaysTo') final int? daysTo,
  }) = _PercentBySumDependency;

  factory PercentBySumDependency.fromJson(Map<String, dynamic> json) => _$PercentBySumDependencyFromJson(json);
}
