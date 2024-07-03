import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/util/utils.dart';

class IconTitleWidget extends StatelessWidget {
  const IconTitleWidget({super.key, required this.iconAsset, required this.text});

  final String iconAsset;
  final String text;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [SvgPicture.asset(iconAsset), Text(text, style: AppStyles.appBarTitleStyle)].withSpaceBetween(width: 10),
      );
}
