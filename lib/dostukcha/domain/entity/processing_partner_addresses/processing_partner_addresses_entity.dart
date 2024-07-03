import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/model/processing_partner_addresses/processing_partner_addresses_model.dart';

part 'processing_partner_addresses_entity.freezed.dart';

@freezed
class ProcessingPartnerAddressesEntity with _$ProcessingPartnerAddressesEntity {
  const factory ProcessingPartnerAddressesEntity({
    final String? logo,
    final String? logoMini,
    final List<Address>? addresses,
  }) = _ProcessingPartnerAddressesEntity;
}
