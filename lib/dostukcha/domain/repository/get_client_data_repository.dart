import 'package:dartz/dartz.dart';

import '../../data/model/client_profile_data/client_profile_data.dart';
import '../../data/model/get_client_data/get_client_data.dart';
import '../entity/app_response/app_response_entity.dart';

abstract class GetClientDataRepository {
  Future<Either<String, AppResponseEntity<GetClientData>>> getClientData();

  Future<Either<String, AppResponseEntity<ClientProfileData>>> getClientProfileData();
}
