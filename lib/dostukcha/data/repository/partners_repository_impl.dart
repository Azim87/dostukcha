import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../config/network/network_checker.dart';
import '../../core/util/constants.dart';
import '../../domain/entity/processing_partner_addresses/processing_partner_addresses_entity.dart';
import '../../domain/entity/processing_partners/processing_partners_entity.dart';
import '../../domain/repository/partners_repository.dart';
import '../datasource/remote/iremote_data_source.dart';
import '../model/processing_partner_addresses/processing_partner_addresses_model.dart';
import '../model/processing_partners/processing_partners_model.dart';

@LazySingleton(as: PartnersRepository)
class PartnersRepositoryImpl extends PartnersRepository {
  PartnersRepositoryImpl(
    this.remoteDataSource,
    this.networkChecker,
  );

  final IRemoteDataSource remoteDataSource;

  final NetworkChecker networkChecker;

  @override
  Future<Either<String, List<ProcessingPartnersEntity>>> getProcessingPartners() async {
    if (await networkChecker.isConnected) {
      try {
        final model = await remoteDataSource.getProcessingPartners();
        return Right(model.map((e) => e.toEntity()).toList());
      } on DioException catch (err) {
        return Left(err.response?.statusMessage ?? AppConstants.UNKONWN_ERROR);
      }
    }
    return const Left(AppConstants.NO_CONNECTION);
  }

  @override
  Future<Either<String, ProcessingPartnerAddressesEntity>> getProcessingPartnerAddresses({required int partnerId}) async {
    if (await networkChecker.isConnected) {
      try {
        final model = await remoteDataSource.getProcessingPartnerAddresses(partnerId: partnerId);
        return Right(model.toEntity());
      } on DioException catch (err) {
        return Left(err.response?.statusMessage ?? AppConstants.UNKONWN_ERROR);
      }
    }
    return const Left(AppConstants.NO_CONNECTION);
  }
}
