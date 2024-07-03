import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../config/di/injection.dart';
import '../../config/network/network_checker.dart';
import '../../config/shared_prefs/app_prefs.dart';
import '../../config/shared_prefs/shared_keys.dart';
import '../../core/util/constants.dart';
import '../../domain/entity/app_response/app_response_entity.dart';
import '../../domain/repository/create_request_repository_impl.dart';
import '../datasource/remote/iremote_data_source.dart';
import '../model/app_response/app_response_model.dart';
import '../model/create_request/create_request_data.dart';
import '../model/get_request/get_request_data.dart';

@LazySingleton(as: CreateRequestRepository)
class CreateRequestRepositoryImpl implements CreateRequestRepository {
  CreateRequestRepositoryImpl(this.remoteDataSource, this.networkChecker);

  final IRemoteDataSource remoteDataSource;
  final NetworkChecker networkChecker;
  final prefs = getIt<AppPrefs>();

  @override
  Future<Either<String, AppResponseEntity<CreateRequestData>>> createRequest({required double selectedSum, required int selectedDays}) async {
    final clientId = await getClientId();

    if (await networkChecker.isConnected) {
      try {
        final model = await remoteDataSource.createRequest(clientId: clientId, selectedSum: selectedSum, selectedDays: selectedDays);

        return Right(model.toEntity());
      } on DioException catch (err) {
        return Left(err.response?.statusMessage ?? AppConstants.UNKONWN_ERROR);
      }
    }
    return const Left(AppConstants.NO_CONNECTION);
  }

  @override
  Future<Either<String, AppResponseEntity<GetRequestData>>> getRequest() async {
    final clientId = await getClientId();

    if (await networkChecker.isConnected) {
      try {
        final model = await remoteDataSource.getRequest(clientId: clientId);

        return Right(model.toEntity());
      } on DioException catch (err) {
        return Left(err.response?.statusMessage ?? AppConstants.UNKONWN_ERROR);
      }
    }
    return const Left(AppConstants.NO_CONNECTION);
  }

  Future<int> getClientId() async => await prefs.getValue<int>(SharedKeys.CLIENT_ID) ?? 0;
}
