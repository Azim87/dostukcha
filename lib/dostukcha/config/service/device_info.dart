import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DeviceInfoService {
  final _deviceInfo = DeviceInfoPlugin();

  Future<int> getAppVersion() async {
    final version = await _deviceInfo.androidInfo;
    return version.version.sdkInt;
  }

  Future<String?> deviceInfo() async {
    if (Platform.isAndroid) {
      final androidInfo = await _deviceInfo.androidInfo;

      return androidInfo.id;
    }

    if (Platform.isIOS) {
      final iosInfo = await _deviceInfo.iosInfo;

      return iosInfo.identifierForVendor;
    }
    return null;
  }
}
