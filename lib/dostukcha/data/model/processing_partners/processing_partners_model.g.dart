// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'processing_partners_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProcessingPartnersModel _$$_ProcessingPartnersModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProcessingPartnersModel(
      id: json['Id'] as int?,
      name: json['Name'] as String?,
      description: json['Description'] as String?,
      logo: json['Logo'] as String?,
    );

Map<String, dynamic> _$$_ProcessingPartnersModelToJson(
        _$_ProcessingPartnersModel instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'Name': instance.name,
      'Description': instance.description,
      'Logo': instance.logo,
    };
