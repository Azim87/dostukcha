import 'dart:io';

import 'package:flutter/material.dart';

import '../../core/util/styles.dart';

class PartnersContainer extends StatelessWidget {
  const PartnersContainer({
    super.key,
    required this.backgroundColor,
    required this.file,
    required this.partnerTitle,
  });

  final Color backgroundColor;
  final String file;
  final String partnerTitle;

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(vertical: 22.0, horizontal: 20),
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(color: backgroundColor, borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (file.isNotEmpty)
              Image.file(
                File.fromUri(Uri.parse(file)),
                height: 35,
              )
            else
              const Text('LOGO'),
            Text(
              partnerTitle,
              style: AppStyles.contactsTextStyle,
            ),
          ],
        ),
      );
}
