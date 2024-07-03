import 'package:dio/dio.dart';
import 'package:flutter_bugfender/flutter_bugfender.dart' show FlutterBugfender;
import 'package:injectable/injectable.dart';

@injectable
class ErrorHandlerInterceptor extends InterceptorsWrapper {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    FlutterBugfender.error('flutter http error: ${err.message}');
    super.onError(err, handler);
  }
}
