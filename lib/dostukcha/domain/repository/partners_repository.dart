import 'dart:async';

import 'package:dartz/dartz.dart';

import '../entity/processing_partner_addresses/processing_partner_addresses_entity.dart';
import '../entity/processing_partners/processing_partners_entity.dart';

abstract class PartnersRepository {
  Future<Either<String, List<ProcessingPartnersEntity>>> getProcessingPartners();

  Future<Either<String, ProcessingPartnerAddressesEntity>> getProcessingPartnerAddresses({required final int partnerId});
}
