// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_request_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetRequestData _$$_GetRequestDataFromJson(Map<String, dynamic> json) =>
    _$_GetRequestData(
      requestId: json['RequestId'] as String?,
      expireTime: json['ExpireTime'] as String?,
      clientId: json['ClientId'] as int?,
      creditSum: (json['CreditSum'] as num?)?.toDouble(),
      daysCount: json['DaysCount'] as int?,
      source: json['Source'] as int?,
      requestState: json['RequestState'] as int?,
    );

Map<String, dynamic> _$$_GetRequestDataToJson(_$_GetRequestData instance) =>
    <String, dynamic>{
      'RequestId': instance.requestId,
      'ExpireTime': instance.expireTime,
      'ClientId': instance.clientId,
      'CreditSum': instance.creditSum,
      'DaysCount': instance.daysCount,
      'Source': instance.source,
      'RequestState': instance.requestState,
    };
