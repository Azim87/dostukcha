import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

// ignore: unused_import
import 'package:intl/intl.dart';

import '../../config/di/injection.dart';
import '../../config/network/network_checker.dart';
import '../../config/service/device_info.dart';
import '../../config/shared_prefs/app_prefs.dart';
import '../../config/shared_prefs/shared_keys.dart';
import '../../core/util/constants.dart';
import '../../domain/entity/app_response/app_response_entity.dart';
import '../../domain/entity/token/token_entity.dart';
import '../../domain/repository/sms_code_repository.dart';
import '../datasource/remote/iremote_data_source.dart';
import '../model/app_response/app_response_model.dart';
import '../model/token/token_model.dart';

@LazySingleton(as: SmsCodeRepository)
class SmsCodeRepositoryImpl implements SmsCodeRepository {
  SmsCodeRepositoryImpl(this.remoteDataSource, this.networkChecker);

  final IRemoteDataSource remoteDataSource;
  final NetworkChecker networkChecker;

  final prefs = getIt<AppPrefs>();
  final device = getIt<DeviceInfoService>();

  @override
  Future<Either<String, TokenEntity>> confirmCode({required String smsCode}) async {
    final deviceId = await device.deviceInfo();
    final phoneNumber = await prefs.getValue<String>(SharedKeys.NO_CODE_PHONE_NUMBER);

    if (await networkChecker.isConnected) {
      try {
        final model = await remoteDataSource.confirmCode(jsonData: {
          'PhoneNumber': phoneNumber,
          'deviceID': deviceId,
          'Code': smsCode,
        });

        final entity = model.tokenEntity();

        if (entity.data?.Token != null) {
          await prefs.setValue<String>(SharedKeys.TOKEN, entity.data!.Token!);
        }

        return Right(entity);
      } on DioException catch (err) {
        return Left(err.response?.statusMessage ?? AppConstants.UNKONWN_ERROR);
      }
    } else {
      return const Left(AppConstants.NO_CONNECTION);
    }
  }

  @override
  Future<Either<String, AppResponseEntity<dynamic>>> confirmRequest({required String confirmCode}) async {
    final requestId = await prefs.getValue<String>(SharedKeys.REQUEST_ID);

    if (await networkChecker.isConnected) {
      try {
        final model = await remoteDataSource.confirmRequest(confirmRequestData: {
          'RequestId': requestId,
          'Code': confirmCode,
        });

        return Right(model.toEntity());
      } on DioException catch (err) {
        return Left(err.response?.statusMessage ?? AppConstants.UNKONWN_ERROR);
      }
    }
    return const Left(AppConstants.NO_CONNECTION);
  }
}
