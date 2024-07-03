// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'processing_partner_addresses_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProcessingPartnerAddressesModel _$$_ProcessingPartnerAddressesModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProcessingPartnerAddressesModel(
      logo: json['Logo'] as String?,
      logoMini: json['LogoMini'] as String?,
      addresses: (json['Addresses'] as List<dynamic>?)
          ?.map((e) => Address.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProcessingPartnerAddressesModelToJson(
        _$_ProcessingPartnerAddressesModel instance) =>
    <String, dynamic>{
      'Logo': instance.logo,
      'LogoMini': instance.logoMini,
      'Addresses': instance.addresses,
    };

_$_Address _$$_AddressFromJson(Map<String, dynamic> json) => _$_Address(
      name: json['Name'] as String?,
      address: json['Address'] as String?,
      latitude: (json['Latitude'] as num?)?.toDouble(),
      longitude: (json['Longitude'] as num?)?.toDouble(),
      addInfo:
          (json['AddInfo'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_AddressToJson(_$_Address instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'Address': instance.address,
      'Latitude': instance.latitude,
      'Longitude': instance.longitude,
      'AddInfo': instance.addInfo,
    };
