import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/processing_partner_addresses/processing_partner_addresses_entity.dart';

part 'processing_partner_addresses_model.freezed.dart';

part 'processing_partner_addresses_model.g.dart';

@Freezed(fromJson: true)
class ProcessingPartnerAddressesModel with _$ProcessingPartnerAddressesModel {
  const factory ProcessingPartnerAddressesModel({
    @JsonKey(name: 'Logo') final String? logo,
    @JsonKey(name: 'LogoMini') final String? logoMini,
    @JsonKey(name: 'Addresses') final List<Address>? addresses,
  }) = _ProcessingPartnerAddressesModel;

  factory ProcessingPartnerAddressesModel.fromJson(Map<String, dynamic> json) => _$ProcessingPartnerAddressesModelFromJson(json);
}

@freezed
class Address with _$Address {
  const factory Address({
    @JsonKey(name: 'Name') final String? name,
    @JsonKey(name: 'Address') final String? address,
    @JsonKey(name: 'Latitude') final double? latitude,
    @JsonKey(name: 'Longitude') final double? longitude,
    @JsonKey(name: 'AddInfo') final List<String>? addInfo,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
}

// enum AddInfo { THE_92, THE_95, THE_1, EMPTY, THE_92_SUPER, DENERGY, THE_80, THE_2, THE_100 }
//
// final addInfoValues = EnumValues({
//   'Denergy': AddInfo.DENERGY,
//   'Газ': AddInfo.EMPTY,
//   'Дизель тип(1)': AddInfo.THE_1,
//   'АИ 100': AddInfo.THE_100,
//   'Дизель тип(2)': AddInfo.THE_2,
//   'АИ 80': AddInfo.THE_80,
//   'АИ 92': AddInfo.THE_92,
//   '92 Super': AddInfo.THE_92_SUPER,
//   'АИ 95': AddInfo.THE_95
// });
//
// class EnumValues<T> {
//   EnumValues(this.map);
//
//   Map<String, T> map;
//   late Map<T, String> reverseMap;
//
//   Map<T, String> get reverse {
//     reverseMap = map.map((k, v) => MapEntry(v, k));
//     return reverseMap;
//   }
// }

extension ProcessingPartnerAddressesModelExt on ProcessingPartnerAddressesModel {
  ProcessingPartnerAddressesEntity toEntity() => ProcessingPartnerAddressesEntity(
        logo: logo,
        logoMini: logoMini,
        addresses: addresses,
      );
}
