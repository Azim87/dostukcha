import 'package:flutter/material.dart';

import '../../core/util/utils.dart';

class TextHorizontalDividerWidget extends StatelessWidget {
  const TextHorizontalDividerWidget({super.key, required this.lText, required this.rText, required this.textColor});

  final String lText;
  final String rText;
  final Color textColor;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12),
    child: Row(
      children: [
        Text(
          lText,
          style: const TextStyle(color: Colors.grey),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.5,
                color: Colors.grey,
              ),
            ),
          ),
        ),
        Text(
          rText,
          style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 16),
        )
      ].withSpaceBetween(width: 5),
    ),
  );
}