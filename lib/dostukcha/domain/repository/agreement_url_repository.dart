import 'package:dartz/dartz.dart';

import '../entity/agreement/agreement_entity.dart';

abstract class AgreementUrlRepository {
  Future<Either<String, AgreementEntity>> getAgreementUrl();
}
