// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_credit_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestCreditEntity _$$_RequestCreditEntityFromJson(
        Map<String, dynamic> json) =>
    _$_RequestCreditEntity(
      maxAmount: (json['maxAmount'] as num?)?.toDouble(),
      qr: json['qr'] as String?,
      approved: json['approved'] as bool?,
      partnerId: json['partnerId'] as int?,
      partnerName: json['partnerName'] as String?,
    );

Map<String, dynamic> _$$_RequestCreditEntityToJson(
        _$_RequestCreditEntity instance) =>
    <String, dynamic>{
      'maxAmount': instance.maxAmount,
      'qr': instance.qr,
      'approved': instance.approved,
      'partnerId': instance.partnerId,
      'partnerName': instance.partnerName,
    };
