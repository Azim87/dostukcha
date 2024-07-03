import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../config/di/injection.dart';
import '../../config/network/network_checker.dart';
import '../../config/shared_prefs/app_prefs.dart';
import '../../config/shared_prefs/shared_keys.dart';
import '../../core/util/constants.dart';
import '../../domain/entity/get_credit/iscan_get_credt_entity.dart';
import '../../domain/repository/is_can_get_credit_repository.dart';
import '../datasource/remote/iremote_data_source.dart';
import '../model/get_credit/iscan_get_credt_model.dart';

@LazySingleton(as: IsCanGetCreditRepository)
class IsCanGetCreditRepositoryImpl implements IsCanGetCreditRepository {
  IsCanGetCreditRepositoryImpl(this.remoteDataSource, this.networkChecker);

  final IRemoteDataSource remoteDataSource;
  final NetworkChecker networkChecker;

  @override
  Future<Either<String, IsCanGetCreditEntity>> isCanGetCredit() async {
    final clientId = await getIt<AppPrefs>().getValue<int>(SharedKeys.CLIENT_ID) ?? 0;
    final selectedSum = await getIt<AppPrefs>().getValue<double>(SharedKeys.SUM) ?? 0;
    final selectedDays = await getIt<AppPrefs>().getValue<int>(SharedKeys.DAYS) ?? 0;

    if (await networkChecker.isConnected) {
      try {
        final model = await remoteDataSource.isCanGetCredit(
          clientId: clientId,
          source: AppConstants.APP_NAME,
          needSum: selectedSum,
          needDays: selectedDays,
        );

        return Right(model.toEntity());
      } on DioException catch (err) {
        return Left(err.response?.statusMessage ?? AppConstants.UNKONWN_ERROR);
      }
    }
    return const Left(AppConstants.NO_CONNECTION);
  }
}
