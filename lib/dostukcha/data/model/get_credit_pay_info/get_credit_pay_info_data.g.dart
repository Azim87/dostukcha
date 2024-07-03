// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_credit_pay_info_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetCreditPayInfoData _$$_GetCreditPayInfoDataFromJson(
        Map<String, dynamic> json) =>
    _$_GetCreditPayInfoData(
      creditId: json['CreditId'] as int?,
      requestId: json['RequestId'] as String?,
      dogNumber: json['DogNumber'] as String?,
      getAmount: (json['GetAmount'] as num?)?.toDouble(),
      days: (json['Days'] as num?)?.toDouble(),
      percent: (json['Percent'] as num?)?.toDouble(),
      admissionFee: (json['AdmissionFee'] as num?)?.toDouble(),
      stateFee: (json['StateFee'] as num?)?.toDouble(),
      repaymentAmount: (json['RepaymentAmount'] as num?)?.toDouble(),
      repaymentDate: json['RepaymentDate'] == null
          ? null
          : DateTime.parse(json['RepaymentDate'] as String),
      rateName: json['RateName'] as String?,
    );

Map<String, dynamic> _$$_GetCreditPayInfoDataToJson(
        _$_GetCreditPayInfoData instance) =>
    <String, dynamic>{
      'CreditId': instance.creditId,
      'RequestId': instance.requestId,
      'DogNumber': instance.dogNumber,
      'GetAmount': instance.getAmount,
      'Days': instance.days,
      'Percent': instance.percent,
      'AdmissionFee': instance.admissionFee,
      'StateFee': instance.stateFee,
      'RepaymentAmount': instance.repaymentAmount,
      'RepaymentDate': instance.repaymentDate?.toIso8601String(),
      'RateName': instance.rateName,
    };
