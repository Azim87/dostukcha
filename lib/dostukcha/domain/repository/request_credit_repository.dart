import 'package:dartz/dartz.dart';

import '../entity/request_credit/request_credit_entity.dart';

abstract class RequestCreditRepository {
  Future<Either<String, RequestCreditEntity>> requestCredit();
}
