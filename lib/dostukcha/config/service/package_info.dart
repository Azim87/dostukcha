import 'package:package_info_plus/package_info_plus.dart';

class PackageInfoService {
  static Future<String> getAppVersion() async {
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();

    return packageInfo.version;
  }
}
