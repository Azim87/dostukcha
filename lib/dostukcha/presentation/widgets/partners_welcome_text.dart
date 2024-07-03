import 'package:flutter/material.dart';

import '../../core/util/strings.dart';
import '../../core/util/styles.dart';

class PartnersWelcomeText extends StatelessWidget {
  const PartnersWelcomeText({super.key});

  @override
  Widget build(BuildContext context) => const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 32.0,
          vertical: 20.0,
        ),
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(text: Strings.partnerText1),
              TextSpan(
                text: Strings.partnerText2,
                style: AppStyles.blueText,
              ),
              TextSpan(text: Strings.partnerText3),
            ],
          ),
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
}
