import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../config/di/injection.dart';
import '../../config/network/network_checker.dart';
import '../../config/shared_prefs/app_prefs.dart';
import '../../config/shared_prefs/shared_keys.dart';
import '../../core/util/constants.dart';
import '../../domain/entity/request_credit/request_credit_entity.dart';
import '../../domain/repository/request_credit_repository.dart';
import '../datasource/remote/iremote_data_source.dart';
import '../model/request_credit/request_credit_model.dart';

@LazySingleton(as: RequestCreditRepository)
class RequestCreditRepositoryImpl implements RequestCreditRepository {
  RequestCreditRepositoryImpl(this.remoteDataSource, this.networkChecker);

  final IRemoteDataSource remoteDataSource;
  final NetworkChecker networkChecker;

  final prefs = getIt<AppPrefs>();

  @override
  Future<Either<String, RequestCreditEntity>> requestCredit() async {
    final partnerId = await prefs.getValue<int>(SharedKeys.PARTNER_ID);

    if (await networkChecker.isConnected) {
      try {
        final model = await remoteDataSource.requestCredit(data: {'partnerId': partnerId});
        return Right(model.toEntity());
      } on DioException catch (err) {
        return Left(err.response?.statusMessage ?? AppConstants.UNKONWN_ERROR);
      }
    }
    return const Left(AppConstants.NO_CONNECTION);
  }
}
