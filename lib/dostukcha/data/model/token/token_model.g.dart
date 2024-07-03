// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TokenModel _$$_TokenModelFromJson(Map<String, dynamic> json) =>
    _$_TokenModel(
      data: json['Data'] == null
          ? null
          : Data.fromJson(json['Data'] as Map<String, dynamic>),
      errorCode: json['ErrorCode'] as int?,
      message: json['Message'] as String?,
      success: json['Success'] as bool?,
    );

Map<String, dynamic> _$$_TokenModelToJson(_$_TokenModel instance) =>
    <String, dynamic>{
      'Data': instance.data,
      'ErrorCode': instance.errorCode,
      'Message': instance.message,
      'Success': instance.success,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      ClientId: json['ClientId'] as int?,
      Token: json['Token'] as String?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'ClientId': instance.ClientId,
      'Token': instance.Token,
    };
