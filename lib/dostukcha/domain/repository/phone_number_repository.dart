import 'package:dartz/dartz.dart';

import '../entity/app_response/app_response_entity.dart';

abstract class PhoneNumberRepository {
  Future<Either<String, AppResponseEntity<dynamic>>> sendPhoneConfirmationCode();
}
