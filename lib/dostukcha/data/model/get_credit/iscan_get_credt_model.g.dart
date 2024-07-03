// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iscan_get_credt_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IsCanGetCreditModel _$$_IsCanGetCreditModelFromJson(
        Map<String, dynamic> json) =>
    _$_IsCanGetCreditModel(
      errorCode: json['ErrorCode'] as int?,
      errorText: json['ErrorText'] as String?,
      clientId: json['ClientID'] as int?,
      isOldClient: json['IsOldClient'] as bool?,
    );

Map<String, dynamic> _$$_IsCanGetCreditModelToJson(
        _$_IsCanGetCreditModel instance) =>
    <String, dynamic>{
      'ErrorCode': instance.errorCode,
      'ErrorText': instance.errorText,
      'ClientID': instance.clientId,
      'IsOldClient': instance.isOldClient,
    };
