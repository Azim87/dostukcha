import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../core/logger/logger.dart';

@lazySingleton
class NetworkChecker {
  Future<bool> get isConnected async => _checkConnectivity();

  Future<bool> _checkConnectivity() async {
    final connectionResult = await InternetConnectionChecker().hasConnection;

    Logger.info('Internet connection $connectionResult');

    if (connectionResult)
      return true;
    else
      return false;
  }
}
