// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_profile_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClientProfileData _$$_ClientProfileDataFromJson(Map<String, dynamic> json) =>
    _$_ClientProfileData(
      name: json['Name'] as String?,
      surname: json['Surname'] as String?,
      middleName: json['MiddleName'] as String?,
      birthDate: json['BirthDate'] as String?,
      gender: json['Gender'] as String?,
      iin: json['IIN'] as String?,
      phoneNumbers: (json['PhoneNumbers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      documentEndDate: json['DocumentEndDate'] as String?,
      documentNumber: json['DocumentNumber'] as String?,
      documentIssued: json['DocumentIssued'] as String?,
      faceImage: json['FaceImage'] as String?,
    );

Map<String, dynamic> _$$_ClientProfileDataToJson(
        _$_ClientProfileData instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'Surname': instance.surname,
      'MiddleName': instance.middleName,
      'BirthDate': instance.birthDate,
      'Gender': instance.gender,
      'IIN': instance.iin,
      'PhoneNumbers': instance.phoneNumbers,
      'DocumentEndDate': instance.documentEndDate,
      'DocumentNumber': instance.documentNumber,
      'DocumentIssued': instance.documentIssued,
      'FaceImage': instance.faceImage,
    };
