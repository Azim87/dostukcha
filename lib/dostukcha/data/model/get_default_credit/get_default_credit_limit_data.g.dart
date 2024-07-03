// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_default_credit_limit_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetDefaultCreditLimitData _$$_GetDefaultCreditLimitDataFromJson(
        Map<String, dynamic> json) =>
    _$_GetDefaultCreditLimitData(
      creditMinSum: json['CreditMinSum'] as int?,
      creditMaxSum: json['CreditMaxSum'] as int?,
      creditSumDefault: json['CreditSumDefault'] as int?,
      daysMinCount: json['DaysMinCount'] as int?,
      daysMaxCount: json['DaysMaxCount'] as int?,
      daysCountDefault: json['DaysCountDefault'] as int?,
      normalPercent: (json['Normal_Percent'] as num?)?.toDouble(),
      afterPercent: (json['After_Percent'] as num?)?.toDouble(),
      creditIncrementValue: (json['CreditIncrementValue'] as num?)?.toDouble(),
      percentBySumDependencies: (json['PercentBySumDependencies']
              as List<dynamic>?)
          ?.map(
              (e) => PercentBySumDependency.fromJson(e as Map<String, dynamic>))
          .toList(),
      normalProgressPercent:
          (json['NormalProgressPercent'] as num?)?.toDouble(),
      badProgressPercent: (json['BadProgressPercent'] as num?)?.toDouble(),
      scoresInCurrentRang: (json['ScoresInCurrentRang'] as num?)?.toDouble(),
      administrationFee: (json['AdministrationFee'] as num?)?.toDouble(),
      scoresTo: (json['ScoresTo'] as num?)?.toDouble(),
      scoresFrom: (json['ScoresFrom'] as num?)?.toDouble(),
      rang: json['Rang'] as String?,
    );

Map<String, dynamic> _$$_GetDefaultCreditLimitDataToJson(
        _$_GetDefaultCreditLimitData instance) =>
    <String, dynamic>{
      'CreditMinSum': instance.creditMinSum,
      'CreditMaxSum': instance.creditMaxSum,
      'CreditSumDefault': instance.creditSumDefault,
      'DaysMinCount': instance.daysMinCount,
      'DaysMaxCount': instance.daysMaxCount,
      'DaysCountDefault': instance.daysCountDefault,
      'Normal_Percent': instance.normalPercent,
      'After_Percent': instance.afterPercent,
      'CreditIncrementValue': instance.creditIncrementValue,
      'PercentBySumDependencies': instance.percentBySumDependencies,
      'NormalProgressPercent': instance.normalProgressPercent,
      'BadProgressPercent': instance.badProgressPercent,
      'ScoresInCurrentRang': instance.scoresInCurrentRang,
      'AdministrationFee': instance.administrationFee,
      'ScoresTo': instance.scoresTo,
      'ScoresFrom': instance.scoresFrom,
      'Rang': instance.rang,
    };

_$_PercentBySumDependency _$$_PercentBySumDependencyFromJson(
        Map<String, dynamic> json) =>
    _$_PercentBySumDependency(
      minSum: json['MinSum'] as int?,
      maxSum: json['MaxSum'] as int?,
      percent: json['Percent'] as int?,
      minDaysCount: json['MinDaysCount'] as int?,
      maxDaysCount: json['MaxDaysCount'] as int?,
      daysFrom: json['DaysFrom'] as int?,
      daysTo: json['DaysTo'] as int?,
    );

Map<String, dynamic> _$$_PercentBySumDependencyToJson(
        _$_PercentBySumDependency instance) =>
    <String, dynamic>{
      'MinSum': instance.minSum,
      'MaxSum': instance.maxSum,
      'Percent': instance.percent,
      'MinDaysCount': instance.minDaysCount,
      'MaxDaysCount': instance.maxDaysCount,
      'DaysFrom': instance.daysFrom,
      'DaysTo': instance.daysTo,
    };
