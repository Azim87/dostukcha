import 'dart:typed_data';

import 'package:dartz/dartz.dart';

import '../../core/util/utils.dart';
import '../../data/model/passport_data/passport_data.dart';
import '../entity/app_response/app_response_entity.dart';

abstract class UploadFileParseRepository {
  Future<Either<String, AppResponseEntity<PassportData>>> uploadDocMRZPhoto({required Uint8List backFile});

  Future<Either<String, AppResponseEntity<dynamic>>> uploadFile({required Uint8List file, required UploadFileType uploadFileType});
}
