import 'package:flutter/material.dart';

import '../../core/util/utils.dart';

class CreditWitdrawalItem extends StatelessWidget {
  const CreditWitdrawalItem(
      {super.key, required this.text, required this.assetImage});

  final String text;
  final String assetImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
        color: Palette.containerBackroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Image.asset(
            assetImage,
            height: 50,
          ),
          Text(
            text,
            style: AppStyles.contactsTextStyle,
          )
        ].withSpaceBetween(width: 10),
      ),
    );
  }
}
