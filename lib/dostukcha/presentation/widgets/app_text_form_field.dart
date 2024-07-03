import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/util/utils.dart';

class AppFormFieldWidget extends StatelessWidget {
  const AppFormFieldWidget({
    super.key,
    required this.onChange,
    this.textInputType = TextInputType.text,
    this.inputFormatters,
    this.isHintEnabled = false,
    required this.initialValue,
  });

  final Function(String) onChange;
  final TextInputType textInputType;
  final List<TextInputFormatter>? inputFormatters;
  final bool isHintEnabled;
  final String initialValue;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          TextFormField(
            enabled: false,
            initialValue: initialValue,
            onChanged: onChange,
            key: ValueKey(initialValue),
            keyboardType: textInputType,
            textCapitalization: TextCapitalization.words,
            inputFormatters: inputFormatters,
            decoration: InputDecoration(
              hintText: isHintEnabled ? '+996' : '',
              border: InputBorder.none,
              contentPadding: const EdgeInsets.only(left: 10),
              filled: true,
              fillColor: Palette.mainBackgroundColor,
              enabledBorder: AppStyles.outlineRadius,
              focusedBorder: AppStyles.outlineRadius,
            ),
          ),
        ],
      );
}
