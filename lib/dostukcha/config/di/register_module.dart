import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../core/util/constants.dart';
import '../network/auth_interceptor.dart';
import '../network/error_handler_interceptor.dart';
import '../network/parser/background_json_parser.dart';
import 'injection.dart';

@module
abstract class RegisterModule {
  // @Named(AppConstants.BASE_URL)
  // @lazySingleton
  // @preResolve
  // Future<String> get baseUrl async => kReleaseMode ? AppConstants.PROD_URL : AppConstants.PROD_URL;

  @lazySingleton
  Dio createDio() => Dio()..setUpForDemo();

  @prod
  @dev
  @Named('DostukchaBaseUrl')
  String get prodBaseUrl => AppConstants.PROD_URL;

  @test
  @Named('DostukchaBaseUrl')
  String get textBaseUrl => AppConstants.DEV_URL;

  // @lazySingleton
  // Dio dio(@Named(AppConstants.DIO_FACTORY) Dio dio) => dio
  //   ..interceptors.insertAll(
  //     0,
  //     [
  //       getIt<AuthInterceptor>(),
  //       getIt<ErrorHandlerInterceptor>(),
  //     ],
  //   );

  // @injectable
  // //@Named(AppConstants.DIO_FACTORY)
  // Dio setUpForDio() => Dio()
  //   ..transformer = getIt<BackgroundJsonParser>()
  //   ..interceptors.add(prettyDioLogger)
  //   ..interceptors.add(getIt<AuthInterceptor>())
  //   ..interceptors.add(getIt<ErrorHandlerInterceptor>());

  // @lazySingleton
  // PrettyDioLogger get prettyDioLogger => PrettyDioLogger(
  //       requestBody: true,
  //       requestHeader: true,
  //     );

  @lazySingleton
  InternetConnectionChecker get checker => InternetConnectionChecker();
}

// const _mockAPIData = false;
// // const _mockAPIData = true;

@lazySingleton
PrettyDioLogger get prettyDioLogger => PrettyDioLogger(
      requestBody: true,
      requestHeader: true,
    );

extension DioX on Dio {
  Dio setUpForDemo() => this
    ..transformer = getIt<BackgroundJsonParser>()
    ..interceptors.add(prettyDioLogger)
    ..interceptors.add(getIt<AuthInterceptor>())
    ..interceptors.add(getIt<ErrorHandlerInterceptor>());
}
