import 'dart:developer';

import 'package:flutter/foundation.dart';

import '../util/utils.dart';

class Logger {
  static void success(String msg, {DateTime? time}) {
    if (kDebugMode)
      log(
        '$msg $time',
        name: AppConstants.LOGGER_SUCCESS,
      );
  }

  static void error(String msg, {DateTime? time, String? errorMsg}) {
    if (kDebugMode)
      log(
        msg,
        name: AppConstants.LOGGER_ERROR,
        error: '$errorMsg $time',
      );
  }

  static void info(String msg) {
    if (kDebugMode)
      log(
        '$msg ${DateTime.now().formats('dd-MMMM-yyyy HH:mm:ss')}',
        name: AppConstants.LOGGER_INFO,
      );
  }
}
