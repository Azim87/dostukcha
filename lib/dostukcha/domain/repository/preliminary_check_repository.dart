import 'package:dartz/dartz.dart';

import '../entity/get_credit/iscan_get_credt_entity.dart';

abstract class PreliminaryCheckRepository {
  Future<Either<String, IsCanGetCreditEntity>> preliminaryCheck();
}
