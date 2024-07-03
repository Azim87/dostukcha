// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passport_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PassportData _$$_PassportDataFromJson(Map<String, dynamic> json) =>
    _$_PassportData(
      birthday: json['birthday'] as String?,
      docType: json['docType'] as String?,
      expireDate: json['expireDate'] as String?,
      firstname: json['firstname'] as String?,
      surname: json['surname'] as String?,
      middlename: json['middlename'] as String?,
      gender: json['gender'] as int?,
      country: json['country'] as String?,
      docNum: json['docNum'] as String?,
      inn: json['INN'] as String?,
      address: json['Address'] as String?,
      address2: json['Address2'] as String?,
      manualInput: json['ManualInput'] as bool?,
      documentStartDate: json['DocumentStartDate'] as String?,
      email: json['Email'] as String?,
      clientId: json['ClientID'] as int?,
      phoneNumber: json['PhoneNumber'] as String?,
    );

Map<String, dynamic> _$$_PassportDataToJson(_$_PassportData instance) =>
    <String, dynamic>{
      'birthday': instance.birthday,
      'docType': instance.docType,
      'expireDate': instance.expireDate,
      'firstname': instance.firstname,
      'surname': instance.surname,
      'middlename': instance.middlename,
      'gender': instance.gender,
      'country': instance.country,
      'docNum': instance.docNum,
      'INN': instance.inn,
      'Address': instance.address,
      'Address2': instance.address2,
      'ManualInput': instance.manualInput,
      'DocumentStartDate': instance.documentStartDate,
      'Email': instance.email,
      'ClientID': instance.clientId,
      'PhoneNumber': instance.phoneNumber,
    };
