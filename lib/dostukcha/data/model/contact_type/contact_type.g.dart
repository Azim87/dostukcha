// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContactType _$$_ContactTypeFromJson(Map<String, dynamic> json) =>
    _$_ContactType(
      id: json['Id'] as int?,
      name: json['Name'] as String?,
      orderNum: json['OrderNum'] as int?,
      blockNum: json['BlockNum'] as int?,
    );

Map<String, dynamic> _$$_ContactTypeToJson(_$_ContactType instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'Name': instance.name,
      'OrderNum': instance.orderNum,
      'BlockNum': instance.blockNum,
    };
