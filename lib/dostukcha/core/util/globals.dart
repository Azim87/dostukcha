// Future<void> catchError(dynamic exception, StackTrace? stack,
//         {bool fatal = false}) =>
//     FirebaseCrashlytics.instance.recordError(exception, stack, fatal: fatal);

import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:path_provider/path_provider.dart';

import '../../config/di/injection.dart';
import '../../config/navigation/app_router.dart';
import '../../config/navigation/navigation.dart';
import '../../config/service/package_info.dart';
import '../../config/shared_prefs/app_prefs.dart';
import '../../config/shared_prefs/shared_keys.dart';
import '../../presentation/widgets/app_button.dart';
import '../error/failure.dart';
import '../logger/logger.dart';
import 'utils.dart';

Future<void> showErrorDialog(BuildContext context, String error, Function() callback) async {
  await showDialog(
    context: context,
    builder: (BuildContext context) => CupertinoAlertDialog(
      title: Text(
        error,
        style: const TextStyle(color: Colors.black),
      ),
      actions: [
        CupertinoDialogAction(
          isDefaultAction: true,
          child: const Text('ОК'),
          onPressed: () {
            callback();
            Navigator.of(context).pop();
          },
        )
      ],
    ),
  );
}

Future<void> showNetworkErrorAlertDialog({required String errorMessage, required Function() callback, required String endpoint}) async {
  final prefs = getIt<AppPrefs>();
  final int clientId = await prefs.getValue<int>(SharedKeys.CLIENT_ID) ?? 0;
  final String errorTime = DateTime.now().formats('dd.MM.yyyy HH:mm:ss');

  final version = await PackageInfoService.getAppVersion();

  Logger.info('version: $version');

  await showNetworkErrorDialog(
    ctx: navigatorKey.currentContext!,
    errorMessage: errorMessage,
    callback: callback,
    clientId: clientId,
    errorTime: errorTime,
    endpoint: endpoint,
    appVersion: version,
  );
}

Future<void> showNetworkErrorDialog({
  required BuildContext ctx,
  required String errorMessage,
  required Function() callback,
  required int clientId,
  required String errorTime,
  required String endpoint,
  required String appVersion,
}) async {
  await showDialog(
    context: ctx,
    builder: (BuildContext context) => AlertDialog(
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(22.0))),
      title: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.error, color: Colors.red, size: 50),
          const Text(
            'Произошла ошибка',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          Text(
            errorMessage,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.black87, fontWeight: FontWeight.w400, fontSize: 13),
          ),
          const SizedBox(height: 20)
        ].withSpaceBetween(height: 10),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(child: Text('EP: $endpoint', textAlign: TextAlign.start, style: AppStyles.alertDialogSystemTextStyle)),
              Expanded(child: Text('CL: $clientId', textAlign: TextAlign.end, style: AppStyles.alertDialogSystemTextStyle)),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text('T: $errorTime', textAlign: TextAlign.start, style: AppStyles.alertDialogSystemTextStyle),
              ),
              if (Platform.isAndroid)
                Expanded(
                  child: Text('V: Android| $appVersion', textAlign: TextAlign.end, style: AppStyles.alertDialogSystemTextStyle),
                ),
              if (Platform.isIOS)
                Expanded(
                  child: Text('V: IOS|$appVersion', textAlign: TextAlign.end, style: AppStyles.alertDialogSystemTextStyle),
                ),
            ],
          )
        ].withSpaceBetween(height: 6),
      ),
      actions: [
        CupertinoDialogAction(
          isDefaultAction: true,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 8),
            width: double.infinity,
            decoration: BoxDecoration(color: Palette.appBlue, borderRadius: BorderRadius.circular(12)),
            child: const Text('OK', style: TextStyle(color: Palette.white)),
          ),
          onPressed: () {
            callback();
            Navigator.of(context).pop();
          },
        )
      ],
    ),
  );
}

Future<void> showInfoDialog(
  BuildContext context,
  String info,
  Function() callback,
  Function() onPressed,
) async {
  await showDialog(
    context: context,
    builder: (BuildContext context) => CupertinoAlertDialog(
      content: Column(
        children: [
          SvgPicture.asset('assets/icons/ic_bell.svg'),
          Text(info),
          TextButton(
            onPressed: onPressed,
            child: const Text('Подробнее', style: AppStyles.titleThinBlueStyle),
          )
        ].withSpaceBetween(height: 8),
      ),
      actions: [
        CupertinoDialogAction(
          isDefaultAction: true,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 8),
            width: double.infinity,
            decoration: BoxDecoration(color: Palette.appBlue, borderRadius: BorderRadius.circular(12)),
            child: const Text('ДАЛЕЕ', style: TextStyle(color: Palette.white)),
          ),
          onPressed: () {
            callback();
            Navigation.route.goRouter.pop();
          },
        )
      ],
    ),
  );
}

Future<void> showPermissionErrorDialog(BuildContext context, String error, Function() callback) async {
  await showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      icon: SvgPicture.asset('assets/images/ic_settings.svg'),
      title: Text(
        error,
        style: const TextStyle(color: Palette.black, fontSize: 12),
        textAlign: TextAlign.center,
      ),
      actions: [
        AppButton(
          text: 'ОК',
          onPressed: () {
            callback();
            Navigator.of(context).pop();
          },
          value: true,
        )
      ],
    ),
  );
}

Future<File> convertBase64ToJpg(String base64String, String imageName) async {
  final Uint8List bytes = base64.decode(base64String);
  final tempDir = await getTemporaryDirectory();
  final File file = await File('${tempDir.path}/${DateTime.now().formats('dd.MM.yyyy')} $imageName.png').create();
  file.writeAsBytesSync(bytes);
  return file;
}

String showErrorCase(Failure failure) {
  if (failure == const Failure.connectionFailure()) {
    return 'Отсутствует интернет, проверьте соединения';
  } else if (failure == const Failure.dioFailure()) {
    return 'Ошибка подключения к серверу, попробуйте позже';
  } else if (failure == const Failure.baseError()) {
    return 'Ошибка подключения к серверу, попробуйте позже';
  } else {
    return 'Что то пошло не так, попробуйте позже';
  }
}

Future<bool> getCulture() async {
  final prefs = getIt<AppPrefs>();

  return await prefs.getValue<bool>(SharedKeys.IS_LANG_CHANGED) ?? false;
}
