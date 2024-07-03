import 'package:dartz/dartz.dart';

import '../../data/model/create_request/create_request_data.dart';
import '../../data/model/get_request/get_request_data.dart';
import '../entity/app_response/app_response_entity.dart';

abstract class CreateRequestRepository {
  Future<Either<String, AppResponseEntity<CreateRequestData>>> createRequest({required final double selectedSum, required final int selectedDays});

  Future<Either<String, AppResponseEntity<GetRequestData>>> getRequest();
}
