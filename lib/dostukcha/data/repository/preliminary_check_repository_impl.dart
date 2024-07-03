import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../config/di/injection.dart';
import '../../config/network/network_checker.dart';
import '../../config/shared_prefs/app_prefs.dart';
import '../../config/shared_prefs/shared_keys.dart';
import '../../core/util/constants.dart';
import '../../domain/entity/get_credit/iscan_get_credt_entity.dart';
import '../../domain/repository/preliminary_check_repository.dart';
import '../datasource/remote/iremote_data_source.dart';
import '../model/get_credit/iscan_get_credt_model.dart';

@LazySingleton(as: PreliminaryCheckRepository)
class PreliminaryCheckRepositoryImpl extends PreliminaryCheckRepository {
  PreliminaryCheckRepositoryImpl(this.remoteDataSource, this.networkChecker);

  final IRemoteDataSource remoteDataSource;
  final NetworkChecker networkChecker;
  final prefs = getIt<AppPrefs>();

  @override
  Future<Either<String, IsCanGetCreditEntity>> preliminaryCheck() async {
    final clientId = await prefs.getValue<int>(SharedKeys.CLIENT_ID) ?? 0;

    if (await networkChecker.isConnected) {
      try {
        final model = await remoteDataSource.preliminaryCheck(clientId: clientId);

        return Right(model.toEntity());
      } on DioException catch (err) {
        return Left(err.response?.statusMessage ?? AppConstants.UNKONWN_ERROR);
      }
    }
    return const Left(AppConstants.NO_CONNECTION);
  }
}
