import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../config/di/injection.dart';
import '../../config/network/network_checker.dart';
import '../../config/shared_prefs/app_prefs.dart';
import '../../config/shared_prefs/shared_keys.dart';
import '../../core/util/utils.dart';
import '../../domain/entity/app_response/app_response_entity.dart';
import '../../domain/repository/get_client_data_repository.dart';
import '../datasource/remote/iremote_data_source.dart';
import '../model/app_response/app_response_model.dart';
import '../model/client_profile_data/client_profile_data.dart';
import '../model/get_client_data/get_client_data.dart';

@LazySingleton(as: GetClientDataRepository)
class GetClientDataRepositoryImpl extends GetClientDataRepository {
  GetClientDataRepositoryImpl(this.remoteDataSource, this.networkChecker);

  final IRemoteDataSource remoteDataSource;
  final NetworkChecker networkChecker;
  final prefs = getIt<AppPrefs>();

  @override
  Future<Either<String, AppResponseEntity<GetClientData>>> getClientData() async {
    final clientId = await _clientId();

    final phoneNumber = await prefs.getValue<String>(SharedKeys.NO_CODE_PHONE_NUMBER);

    if (await networkChecker.isConnected) {
      try {
        final model = await remoteDataSource.getClientData(
            clientId: clientId, phoneNumber: clientId == 0 ? phoneNumber! : '', deletePhoto: clientId != 0 ? false : true);

        return Right(model.toEntity());
      } on DioException catch (err) {
        return Left(err.response?.statusMessage ?? AppConstants.UNKONWN_ERROR);
      }
    }
    return const Left(AppConstants.NO_CONNECTION);
  }

  @override
  Future<Either<String, AppResponseEntity<ClientProfileData>>> getClientProfileData() async {
    final clientId = await _clientId();
    if (await networkChecker.isConnected) {
      try {
        final model = await remoteDataSource.getClientProfile(clientId: clientId);

        return Right(model.toEntity());
      } on DioException catch (err) {
        return Left(err.response?.statusMessage ?? AppConstants.UNKONWN_ERROR);
      }
    }
    return const Left(AppConstants.NO_CONNECTION);
  }

  Future<int> _clientId() async => await prefs.getValue<int>(SharedKeys.CLIENT_ID) ?? 0;
}
