import 'package:dartz/dartz.dart';

import '../entity/app_response/app_response_entity.dart';

abstract class PersonalDataConsentCheckRepository {
  Future<Either<String, AppResponseEntity<dynamic>>> personalDataConsentCheckCode();

  Future<Either<String, AppResponseEntity<dynamic>>> personalDataConsentSendCode();

  Future<Either<String, AppResponseEntity<dynamic>>> personalDataConsentConfirmCode({required final String code});
}
