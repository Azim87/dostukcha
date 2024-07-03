import 'dart:io';

import 'package:camera/camera.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bugfender/flutter_bugfender.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:injectable/injectable.dart';

import 'dostukcha/config/certificate/http_certificate.dart';
import 'dostukcha/config/di/di_container.dart';
import 'dostukcha/config/di/injection.dart';
import 'dostukcha/core/util/constants.dart';
import 'dostukcha/presentation/app/app.dart';
import 'firebase_options.dart';

late List<CameraDescription> cameras;

Future<void> main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  //for prod need to changle enviroment to prod
  inject(diContainer, Environment.test);

  cameras = await availableCameras();

  HttpOverrides.global = MyHttpOverrides();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  FlutterBugfender.init(AppConstants.BUGFENDER_APP_KEY);

  if (kReleaseMode) {
    FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(!kDebugMode);

    FlutterError.onError = (errorDetails) {
      FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
    };

    PlatformDispatcher.instance.onError = (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      return true;
    };
  }

  runApp(const MyApp());
}
