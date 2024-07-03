import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../config/di/injection.dart';
import '../../config/network/network_checker.dart';
import '../../config/shared_prefs/app_prefs.dart';
import '../../config/shared_prefs/shared_keys.dart';
import '../../core/util/constants.dart';
import '../../domain/entity/app_response/app_response_entity.dart';
import '../../domain/repository/phone_number_repository.dart';
import '../datasource/remote/iremote_data_source.dart';
import '../model/app_response/app_response_model.dart';

@LazySingleton(as: PhoneNumberRepository)
class PhoneNumberRepositoryImpl implements PhoneNumberRepository {
  PhoneNumberRepositoryImpl(this.remoteDataSource, this.networkChecker);

  final IRemoteDataSource remoteDataSource;
  final NetworkChecker networkChecker;
  final prefs = getIt<AppPrefs>();

  @override
  Future<Either<String, AppResponseEntity<dynamic>>> sendPhoneConfirmationCode() async {
    if (await networkChecker.isConnected) {
      try {
        final phoneNumber = await prefs.getValue<String>(SharedKeys.NO_CODE_PHONE_NUMBER) ?? '';
        final response = await remoteDataSource.sendPhoneConfirmationCode(phoneNumber: phoneNumber);

        return Right(response.toEntity());
      } on DioException catch (err) {
        return Left(err.response?.statusMessage ?? AppConstants.UNKONWN_ERROR);
      }
    } else {
      return const Left(AppConstants.NO_CONNECTION);
    }
  }
}
