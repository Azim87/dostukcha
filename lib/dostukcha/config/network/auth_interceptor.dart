import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../di/injection.dart';
import '../shared_prefs/app_prefs.dart';
import '../shared_prefs/shared_keys.dart';

@injectable
class AuthInterceptor extends InterceptorsWrapper {
  final prefs = getIt<AppPrefs>();

  static const String AUTHORIZATION = 'p-auth';

  String _bearer(String? token) => token ?? '';

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final token = await prefs.getValue<String>(SharedKeys.TOKEN);
    final culture = await prefs.getValue<bool>(SharedKeys.IS_LANG_CHANGED) ?? false;

    final tokens = options.extra['token'] ?? false;

    options.headers.addAll({
      'p-auth': _bearer(token),
      'X-App-Encryption': 0,
      'X-App-Type': 'Dostukcha',
      'X-App-Version': 'v1.0',
      'X-App-Culture': culture ? 'ky' : 'ru',
      'content-type': 'application/json',
      'Accept': 'application/json',
    });

    // if (tokens as bool) {
    //   options.headers['p-auth'] =
    //       '5964424A99DB566045F8C04D29F6D36C8FC01B3978F062F57E5BB5E19711E9151C6B130DEEAF0B3EFB3AA2E888D5DCAFD8C8043B48AA8C5758CA30D58893BDDF';
    // }

    super.onRequest(options, handler);
  }
}
