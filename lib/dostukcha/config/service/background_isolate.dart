import 'dart:isolate';

import 'package:flutter/services.dart';

import '../../core/logger/logger.dart';
import '../di/injection.dart';
import '../shared_prefs/app_prefs.dart';
import '../shared_prefs/shared_keys.dart';

Future<void> backgroundIsolateExample() async {
  final RootIsolateToken rootIsolateToken = RootIsolateToken.instance!;
  await Isolate.spawn(_isolateMain, rootIsolateToken);
}

Future<void> _isolateMain(RootIsolateToken token) async {
  BackgroundIsolateBinaryMessenger.ensureInitialized(token);

  final prefs = getIt<AppPrefs>();

  Logger.info( prefs.getValue(SharedKeys.TOKEN).toString());
}
