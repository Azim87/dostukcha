import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../config/di/injection.dart';
import '../../config/network/network_checker.dart';
import '../../config/shared_prefs/app_prefs.dart';
import '../../config/shared_prefs/shared_keys.dart';
import '../../core/util/constants.dart';
import '../../domain/entity/app_response/app_response_entity.dart';
import '../../domain/entity/operator_answer/operator_answer_await_entity.dart';
import '../../domain/repository/operator_answer_await_repository.dart';
import '../datasource/remote/iremote_data_source.dart';
import '../model/app_response/app_response_model.dart';
import '../model/operator_answer/operator_answer_await_model.dart';
import '../model/operator_answer_settings_data/operator_answer_settings_data.dart';

@LazySingleton(as: OperatorAnswerAwaitRepository)
class OperatorAnswerAwaitRepositoryImpl implements OperatorAnswerAwaitRepository {
  OperatorAnswerAwaitRepositoryImpl(this.remoteDataSource, this.networkChecker);

  final IRemoteDataSource remoteDataSource;
  final NetworkChecker networkChecker;
  final prefs = getIt<AppPrefs>();

  @override
  Future<Either<String, OperatorAnswerAwaitEntity>> operatorAnswerAwait() async {
    final creditRequestId = await prefs.getValue<String>(SharedKeys.REQUEST_ID) ?? '';

    if (await networkChecker.isConnected) {
      try {
        final model = await remoteDataSource.operatorAnswerAwait(creditRequestId: creditRequestId);
        return Right(model.toEntity());
      } on DioException catch (err) {
        return Left(err.response?.statusMessage ?? AppConstants.UNKONWN_ERROR);
      }
    }
    return const Left(AppConstants.NO_CONNECTION);
  }

  @override
  Future<Either<String, void>> removeItemFromOperators() async {
    final clientId = await _getClientId();
    try {
      final model = await remoteDataSource.removeItemFromOperators(clientId: clientId);
      return Right(model);
    } on DioException catch (err) {
      return Left(err.response?.statusMessage ?? AppConstants.UNKONWN_ERROR);
    }
  }

  Future<int> _getClientId() async => await prefs.getValue<int>(SharedKeys.CLIENT_ID) ?? 0;

  @override
  Future<Either<String, AppResponseEntity<OperatorAnswerSettingsData>>> operatorAnswerSettings() async {
    if (await networkChecker.isConnected) {
      try {
        final model = await remoteDataSource.operatorAnswerSettingsData();
        return Right(model.toEntity());
      } on DioException catch (err) {
        return Left(err.response?.statusMessage ?? AppConstants.UNKONWN_ERROR);
      }
    }
    return const Left(AppConstants.NO_CONNECTION);
  }
}
