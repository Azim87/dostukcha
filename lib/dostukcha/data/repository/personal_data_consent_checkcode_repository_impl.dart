import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../config/network/network_checker.dart';
import '../../core/util/constants.dart';
import '../../domain/entity/app_response/app_response_entity.dart';
import '../../domain/repository/personal_data_consent_checkcode_repository.dart';
import '../datasource/remote/iremote_data_source.dart';
import '../model/app_response/app_response_model.dart';

@LazySingleton(as: PersonalDataConsentCheckRepository)
class PersonalDataConsentCheckCodeRepositoryImpl implements PersonalDataConsentCheckRepository {
  PersonalDataConsentCheckCodeRepositoryImpl(this.remoteDataSource, this.networkChecker);

  final IRemoteDataSource remoteDataSource;
  final NetworkChecker networkChecker;

  @override
  Future<Either<String, AppResponseEntity<dynamic>>> personalDataConsentCheckCode() async {
    if (await networkChecker.isConnected) {
      try {
        final model = await remoteDataSource.personalDataConsentCheckCode();
        return Right(model.toEntity());
      } on DioException catch (err) {
        return Left(err.response?.statusMessage ?? AppConstants.UNKONWN_ERROR);
      }
    }
    return const Left(AppConstants.NO_CONNECTION);
  }

  @override
  Future<Either<String, AppResponseEntity<dynamic>>> personalDataConsentSendCode() async {
    if (await networkChecker.isConnected) {
      try {
        final model = await remoteDataSource.personalDataConsentSendCode();
        return Right(model.toEntity());
      } on DioException catch (err) {
        return Left(err.response?.statusMessage ?? AppConstants.UNKONWN_ERROR);
      }
    }
    return const Left(AppConstants.NO_CONNECTION);
  }

  @override
  Future<Either<String, AppResponseEntity<dynamic>>> personalDataConsentConfirmCode({required String code}) async {
    if (await networkChecker.isConnected) {
      try {
        final model = await remoteDataSource.personalDataConsentConfirmCode(code: code);
        return Right(model.toEntity());
      } on DioException catch (err) {
        return Left(err.response?.statusMessage ?? AppConstants.UNKONWN_ERROR);
      }
    }
    return const Left(AppConstants.NO_CONNECTION);
  }
}
