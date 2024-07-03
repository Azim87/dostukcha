import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../config/di/injection.dart';
import '../../config/network/network_checker.dart';
import '../../config/shared_prefs/app_prefs.dart';
import '../../config/shared_prefs/shared_keys.dart';
import '../../core/util/constants.dart';
import '../../core/util/enums.dart';
import '../../domain/entity/app_response/app_response_entity.dart';
import '../../domain/repository/upload_file_parse_repository.dart';
import '../datasource/remote/iremote_data_source.dart';
import '../model/app_response/app_response_model.dart';
import '../model/passport_data/passport_data.dart';

@LazySingleton(as: UploadFileParseRepository)
class UploadFileParseRepositoryImpl implements UploadFileParseRepository {
  UploadFileParseRepositoryImpl(this.remoteDataSource, this.networkChecker);

  final IRemoteDataSource remoteDataSource;
  final NetworkChecker networkChecker;
  final prefs = getIt<AppPrefs>();

  @override
  Future<Either<String, AppResponseEntity<PassportData>>> uploadDocMRZPhoto({required Uint8List backFile}) async {
    final clientId = await prefs.getValue<int>(SharedKeys.CLIENT_ID) ?? 0;

    if (await networkChecker.isConnected) {
      try {
        final model = await remoteDataSource.uploadDocMRZPhoto(
          clientId: clientId,
          phoneNumber: await _getPhoneNumber(),
          data: {
            'Data': base64Encode(backFile),
            'FileName': AppConstants.BACK_DOCUMENT,
            'ContentType': AppConstants.IMAGE_CONTENT_TYPE,
          },
        );

        return Right(model.toEntity());
      } on DioException catch (err) {
        return Left(err.response?.statusMessage ?? AppConstants.UNKONWN_ERROR);
      }
    }
    return const Left(AppConstants.NO_CONNECTION);
  }

  @override
  Future<Either<String, AppResponseEntity<dynamic>>> uploadFile({
    required Uint8List file,
    required UploadFileType uploadFileType,
  }) async {
    if (await networkChecker.isConnected) {
      try {
        final model = await remoteDataSource.uploadFile(
          clientId: await _getClientId(),
          data: {
            'Data': base64Encode(file),
            'FileName': getFileName(uploadFileType),
            'ContentType': AppConstants.IMAGE_CONTENT_TYPE,
          },
        );

        return Right(model.toEntity());
      } on DioException catch (err) {
        return Left(err.response?.statusMessage ?? AppConstants.UNKONWN_ERROR);
      }
    }
    return const Left(AppConstants.NO_CONNECTION);
  }

  Future<int> _getClientId() async => await prefs.getValue<int>(SharedKeys.CLIENT_ID) ?? 0;

  Future<String> _getPhoneNumber() async => await prefs.getValue<String>(SharedKeys.NO_CODE_PHONE_NUMBER) ?? '';

  String getFileName(UploadFileType uploadFileType) => {
        UploadFileType.Selfie: AppConstants.SELFIE,
        UploadFileType.SelfieWithDocument: AppConstants.SELFIE_WITH_DOCUMENT,
        UploadFileType.Document: AppConstants.FRONT_DOCUMENT,
      }[uploadFileType]!;
}
