// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_credit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestCreditModel _$$_RequestCreditModelFromJson(
        Map<String, dynamic> json) =>
    _$_RequestCreditModel(
      maxAmount: (json['MaxAmount'] as num?)?.toDouble(),
      qr: json['QR'] as String?,
      approved: json['Approved'] as bool?,
      partnerId: json['PartnerId'] as int?,
      partnerName: json['PartnerName'] as String?,
    );

Map<String, dynamic> _$$_RequestCreditModelToJson(
        _$_RequestCreditModel instance) =>
    <String, dynamic>{
      'MaxAmount': instance.maxAmount,
      'QR': instance.qr,
      'Approved': instance.approved,
      'PartnerId': instance.partnerId,
      'PartnerName': instance.partnerName,
    };
