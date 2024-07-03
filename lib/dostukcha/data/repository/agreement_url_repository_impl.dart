import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../config/network/network_checker.dart';
import '../../core/util/constants.dart';
import '../../domain/entity/agreement/agreement_entity.dart';
import '../../domain/repository/agreement_url_repository.dart';
import '../datasource/remote/iremote_data_source.dart';
import '../model/agreement/agreement_model.dart';

@LazySingleton(as: AgreementUrlRepository)
class AgreementUrlRepositoryImpl implements AgreementUrlRepository {
  AgreementUrlRepositoryImpl(this.remoteDataSource, this.networkChecker);

  final IRemoteDataSource remoteDataSource;
  final NetworkChecker networkChecker;

  @override
  Future<Either<String, AgreementEntity>> getAgreementUrl() async {
    if (await networkChecker.isConnected) {
      try {
        final model = await remoteDataSource.getAgreementUrl();
        return Right(model.toEntity());
      } on DioException catch (err) {
        return Left(err.response?.statusMessage ?? AppConstants.UNKONWN_ERROR);
      }
    }
    return const Left(AppConstants.NO_CONNECTION);
  }
}
