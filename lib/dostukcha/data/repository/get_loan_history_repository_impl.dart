import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../config/di/injection.dart';
import '../../config/network/network_checker.dart';
import '../../config/shared_prefs/app_prefs.dart';
import '../../config/shared_prefs/shared_keys.dart';
import '../../core/util/constants.dart';
import '../../domain/entity/app_response/app_response_entity.dart';
import '../../domain/repository/get_loan_history_repository.dart';
import '../datasource/remote/iremote_data_source.dart';
import '../model/app_response/app_response_model.dart';
import '../model/get_loan_history/loan_history_data.dart';

@LazySingleton(as: GetLoanHistoryRepository)
class GetLoanHistoryRepositoryImpl extends GetLoanHistoryRepository {
  GetLoanHistoryRepositoryImpl(this.remoteDataSource, this.networkChecker);

  final IRemoteDataSource remoteDataSource;
  final NetworkChecker networkChecker;
  final prefs = getIt<AppPrefs>();

  @override
  Future<Either<String, AppResponseEntity<List<LoanHistoryData>>>> getLoanHistory() async {
    final clientId = await prefs.getValue<int>(SharedKeys.CLIENT_ID) ?? 0;

    if (await networkChecker.isConnected) {
      try {
        final model = await remoteDataSource.getLoanHistory(clientId: clientId);
        return Right(model.toEntity());
      } on DioException catch (err) {
        return Left(err.response?.statusMessage ?? AppConstants.UNKONWN_ERROR);
      }
    }
    return const Left(AppConstants.NO_CONNECTION);
  }
}
