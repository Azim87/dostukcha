// ignore_for_file: unused_element

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@injectable
class BackgroundJsonParser extends BackgroundTransformer {
  dynamic _parseAndDecode(String response) => jsonDecode(response);

  Future<dynamic> _parseJson(String text) async =>
      compute(_parseAndDecode, text);
}
