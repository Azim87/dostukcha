import 'package:dartz/dartz.dart';

import '../../data/model/get_credit_pay_info/get_credit_pay_info_data.dart';
import '../entity/app_response/app_response_entity.dart';


abstract class GetCreditPayInfoRepository {
  Future<Either<String, AppResponseEntity<GetCreditPayInfoData>>> getCreditPayInfo();
}
