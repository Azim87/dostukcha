import 'package:flutter/material.dart';

import '../../core/util/utils.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.onPressed,
    required this.value,
    this.isBold = false,
    this.text = 'ДАЛЕЕ',
    this.horizontalPadding = 16,
    this.toCapitalize = false,
  });

  final Function() onPressed;
  final bool value;
  final bool isBold;
  final String text;
  final double horizontalPadding;
  final bool toCapitalize;

  @override
  Widget build(BuildContext context) => Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: 16,
        ),
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            backgroundColor: value
                ? MaterialStateProperty.all(
                    Palette.appBlue,
                  )
                : MaterialStateProperty.all(
                    Palette.disabledColor,
                  ),
            padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(vertical: 16),
            ),
          ),
          onPressed: value ? onPressed : null,
          child: Text(
            toCapitalize ? text.toCapitalized() : text.toUpperCase(),
            style: isBold
                ? AppStyles.appButtonStyle
                : value
                    ? AppStyles.appActiveButtonStyle
                    : AppStyles.appDisabledButtonStyle,
          ),
        ),
      );
}
