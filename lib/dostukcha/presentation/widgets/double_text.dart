import 'package:flutter/material.dart';

import '../../core/util/utils.dart';

class DoubleTextWidget extends StatelessWidget {
  const DoubleTextWidget({
    super.key,
    required this.txt1,
    required this.txt2,
    this.isPadding = true,
    this.isTextThin = false,
  });

  final String txt1;
  final String txt2;
  final bool isPadding, isTextThin;

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.symmetric(vertical: isPadding ? 20.0 : 0),
        child: Row(
          children: [
            Expanded(
              child: Text(
                txt1,
                style:
                    isTextThin ? AppStyles.text600Disabled : AppStyles.text600,
              ),
            ),
            Text(
              txt2,
              style: isTextThin ? AppStyles.blueTextThin : AppStyles.blueText,
            ),
          ],
        ),
      );
}
