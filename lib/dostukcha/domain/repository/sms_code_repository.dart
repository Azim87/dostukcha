import 'package:dartz/dartz.dart';

import '../entity/app_response/app_response_entity.dart';
import '../entity/token/token_entity.dart';

abstract class SmsCodeRepository {
  Future<Either<String, TokenEntity>> confirmCode({required String smsCode});

  Future<Either<String, AppResponseEntity<dynamic>>> confirmRequest({required String confirmCode});
}
