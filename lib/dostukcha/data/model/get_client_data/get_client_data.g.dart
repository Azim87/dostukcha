// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_client_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetClientData _$$_GetClientDataFromJson(Map<String, dynamic> json) =>
    _$_GetClientData(
      clientId: json['ClientId'] as int?,
      haveSelfie: json['HaveSelfie'] as bool?,
      haveContacts: json['HaveContacts'] as bool?,
      havePassportFront: json['HavePassportFront'] as bool?,
      havePassportBack: json['HavePassportBack'] as bool?,
      havePersonalDataConsent: json['HavePersonalDataConsent'] as bool?,
    );

Map<String, dynamic> _$$_GetClientDataToJson(_$_GetClientData instance) =>
    <String, dynamic>{
      'ClientId': instance.clientId,
      'HaveSelfie': instance.haveSelfie,
      'HaveContacts': instance.haveContacts,
      'HavePassportFront': instance.havePassportFront,
      'HavePassportBack': instance.havePassportBack,
      'HavePersonalDataConsent': instance.havePersonalDataConsent,
    };
