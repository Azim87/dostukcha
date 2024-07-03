import 'package:flutter/material.dart';

import 'palette.dart';

class AppStyles {
  static const TextStyle titleStyle = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.w600,
    color: Palette.black,
  );

  static const TextStyle titleThinStyle = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w400,
    color: Palette.black,
  );

  static const TextStyle titleThinBlueStyle = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w400,
    color: Palette.appBlue,
    decoration: TextDecoration.underline,
  );

  static const TextStyle text32BlueStyle = TextStyle(
    fontSize: 32.0,
    fontWeight: FontWeight.w700,
    color: Palette.appBlue,
  );

  static const TextStyle text32BlackStyle = TextStyle(
    fontSize: 32.0,
    fontWeight: FontWeight.w700,
    color: Palette.black,
  );

  static const TextStyle subtitleStyle = TextStyle(
    fontSize: 15.0,
    fontWeight: FontWeight.w300,
    color: Palette.black,
  );

  static const TextStyle skipStyle = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w600,
    color: Palette.deactiveColor,
  );

  static const TextStyle switchStyle = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
    color: Palette.black,
  );

  static const TextStyle loanSumStyle = TextStyle(
    fontWeight: FontWeight.w600,
    color: Palette.appBlue,
  );

  static const TextStyle loanTimeStyle = TextStyle(
    fontWeight: FontWeight.w600,
    color: Palette.appBlue,
    fontSize: 18,
  );

  static const TextStyle loanTextStyle = TextStyle(
    color: Palette.deactiveColor,
    fontSize: 14,
  );

  static const TextStyle appButtonStyle = TextStyle(
    fontWeight: FontWeight.w700,
    color: Palette.white,
    fontSize: 16,
  );

  static const TextStyle appActiveButtonStyle = TextStyle(
    fontWeight: FontWeight.w400,
    color: Palette.white,
    fontSize: 16,
  );

  static const TextStyle appDisabledButtonStyle = TextStyle(
    fontWeight: FontWeight.w400,
    color: Palette.deactiveColor,
    fontSize: 16,
  );

  static const TextStyle verificationTitleStyle = TextStyle(
    fontWeight: FontWeight.w600,
    color: Palette.black,
    fontSize: 26,
  );

  static const TextStyle verificationSubTitleStyle = TextStyle(
    fontWeight: FontWeight.w400,
    color: Palette.subtitleColor,
    fontSize: 13,
  );

  static const TextStyle contactsTextStyle = TextStyle(
    fontWeight: FontWeight.w600,
    color: Palette.black,
    fontSize: 14,
  );

  static const TextStyle contactsStyle = TextStyle(
    fontWeight: FontWeight.w700,
    color: Palette.black,
    fontSize: 18,
  );

  static const TextStyle loanSuccessStyle = TextStyle(
    fontWeight: FontWeight.w700,
    color: Palette.black,
    fontSize: 20,
  );

  static const TextStyle blueText = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w700,
    color: Palette.appBlue,
  );

  static const TextStyle titleStyle2 = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
    color: Palette.black,
  );

  static const TextStyle blueTextThin = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w600,
    color: Palette.appBlue,
  );

  static const TextStyle text400 = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    color: Palette.disabledColor,
  );

  static const TextStyle textDeactiveted400 = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    color: Palette.deactivatedTextColor,
  );

  static const TextStyle blackStyle = TextStyle(
    fontSize: 15.0,
    color: Palette.black,
  );

  static const TextStyle text600 = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w600,
    color: Palette.black,
  );

  static const TextStyle text700 = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
    color: Palette.black,
  );

  static const TextStyle text500 = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
    color: Palette.black,
  );

  static const TextStyle text600Disabled = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    color: Palette.disabledColor,
  );

  static const TextStyle appBarTitleStyle = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.w700,
    color: Palette.black,
  );

  static const TextStyle blueTitleStyle = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.w700,
    color: Palette.appBlue,
  );

  static const TextStyle alertDialogSystemTextStyle = TextStyle(
    fontSize: 11.0,
    color: Palette.grey,
  );

//styles for text form field
  static OutlineInputBorder outlineRadius = OutlineInputBorder(
    borderSide: const BorderSide(color: Palette.mainBackgroundColor),
    borderRadius: BorderRadius.circular(5.0),
  );
}
