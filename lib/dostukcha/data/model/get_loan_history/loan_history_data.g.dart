// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_history_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoanHistoryData _$$_LoanHistoryDataFromJson(Map<String, dynamic> json) =>
    _$_LoanHistoryData(
      creditId: json['CreditId'] as int?,
      contractId: json['ContractId'] as String?,
      createDate: json['CreateDate'] == null
          ? null
          : DateTime.parse(json['CreateDate'] as String),
      lastOperationDate: json['LastOperationDate'] == null
          ? null
          : DateTime.parse(json['LastOperationDate'] as String),
      status: json['Status'] as String?,
      sum: (json['Sum'] as num?)?.toDouble(),
      paySource: json['PaySource'] as String?,
      cardNumber: json['CardNumber'] as String?,
    );

Map<String, dynamic> _$$_LoanHistoryDataToJson(_$_LoanHistoryData instance) =>
    <String, dynamic>{
      'CreditId': instance.creditId,
      'ContractId': instance.contractId,
      'CreateDate': instance.createDate?.toIso8601String(),
      'LastOperationDate': instance.lastOperationDate?.toIso8601String(),
      'Status': instance.status,
      'Sum': instance.sum,
      'PaySource': instance.paySource,
      'CardNumber': instance.cardNumber,
    };
