import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  DateTime format([String pattern = 'dd/MM/yyyy HH:mm', String? locale]) {
    if (locale != null && locale.isNotEmpty) {
      initializeDateFormatting(locale);
    }
    return DateTime.parse(DateFormat(pattern, locale).format(this));
  }
}

extension LocalizedBuildContext on BuildContext? {
  AppLocalizations? get loc => AppLocalizations.of(this!);
}

extension IndexedIterable<E> on Iterable<E> {
  Iterable<T> mapIndexed<T>(T Function(E e, int i) f) {
    var i = 0;
    return map((e) => f(e, i++));
  }
}

extension DateFormatExtension on DateTime {
  String formats(String format) {
    return DateFormat(format).format(this);
  }
}

extension StringCasingExtension on String {
  String toCapitalized() => length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';

  String toTitleCase() => replaceAll(RegExp(' +'), ' ').split(' ').map((str) => str.toCapitalized()).join(' ');

  String allUpperCase() => toUpperCase();

  bool isEmptyOrNull() => this == null && isEmpty;
}

extension ListSpaceBetweenExtension on List<Widget> {
  List<Widget> withSpaceBetween({double? width, double? height}) => [
        for (int i = 0; i < length; i++) ...[
          if (i > 0) SizedBox(width: width, height: height),
          this[i],
        ],
      ];

  List<Widget> withSpaceTopAndBetween({double? width, double? height}) => [
        for (int i = 0; i < length; i++) ...[
          if (i >= 0) SizedBox(width: width, height: height),
          this[i],
        ],
      ];
}

extension FormExt<T> on GlobalKey<FormState> {
  void validateSave(Function()? call) {
    if (!(currentState?.validate() ?? false)) {
      return;
    }
    currentState?.save();
    call?.call();
  }
}
