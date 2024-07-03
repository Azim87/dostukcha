import 'package:dartz/dartz.dart';

import '../../data/model/get_default_credit/get_default_credit_limit_data.dart';
import '../entity/app_response/app_response_entity.dart';

abstract class GetCreditRepository {
  Future<Either<String, AppResponseEntity<GetDefaultCreditLimitData>>> getDefaultCreditLimitData();
  Future<Either<String, AppResponseEntity<GetDefaultCreditLimitData>>> getCreditLimitData();
}
