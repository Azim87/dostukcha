import 'package:flutter/material.dart';

import '../../core/util/utils.dart';
import 'widgets.dart';

class TextInputButtonWidget extends StatelessWidget {
  const TextInputButtonWidget({
    super.key,
    required this.titleText,
    required this.onChange,
    this.isEmail = false,
    this.buttonValue = false,
  });

  final String titleText;
  final bool isEmail;
  final bool buttonValue;
  final Function(String) onChange;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titleText,
            style: AppStyles.text600,
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: TextFormField(
                  onChanged: onChange,
                  key: const ValueKey('kd'),
                  keyboardType:
                      isEmail ? TextInputType.emailAddress : TextInputType.text,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.only(left: 10),
                    filled: true,
                    fillColor: Palette.mainBackgroundColor,
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Palette.mainBackgroundColor),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: AppButton(
                  horizontalPadding: 0,
                  onPressed: () {},
                  value: buttonValue,
                  text: Strings.send.toCapitalized(),
                ),
              )
            ],
          ),
        ],
      );
}
