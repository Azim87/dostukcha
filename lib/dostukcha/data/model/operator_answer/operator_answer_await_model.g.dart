// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_answer_await_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OperatorAnswerAwaitModel _$$_OperatorAnswerAwaitModelFromJson(
        Map<String, dynamic> json) =>
    _$_OperatorAnswerAwaitModel(
      errorCode: json['ErrorCode'] as int?,
      errorText: json['ErrorText'] as String?,
      clientId: json['ClientID'] as int?,
      isOldClient: json['IsOldClient'] as bool?,
    );

Map<String, dynamic> _$$_OperatorAnswerAwaitModelToJson(
        _$_OperatorAnswerAwaitModel instance) =>
    <String, dynamic>{
      'ErrorCode': instance.errorCode,
      'ErrorText': instance.errorText,
      'ClientID': instance.clientId,
      'IsOldClient': instance.isOldClient,
    };
