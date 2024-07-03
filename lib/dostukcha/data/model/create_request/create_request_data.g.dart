// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_request_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateRequestData _$$_CreateRequestDataFromJson(Map<String, dynamic> json) =>
    _$_CreateRequestData(
      requestId: json['RequestId'] as String?,
      expireTime: json['ExpireTime'] as String?,
      verificationCheckTimeoutSeconds:
          json['VerificationCheckTimeoutSeconds'] as int?,
      verificationCheckCount: json['VerificationCheckCount'] as int?,
    );

Map<String, dynamic> _$$_CreateRequestDataToJson(
        _$_CreateRequestData instance) =>
    <String, dynamic>{
      'RequestId': instance.requestId,
      'ExpireTime': instance.expireTime,
      'VerificationCheckTimeoutSeconds':
          instance.verificationCheckTimeoutSeconds,
      'VerificationCheckCount': instance.verificationCheckCount,
    };
