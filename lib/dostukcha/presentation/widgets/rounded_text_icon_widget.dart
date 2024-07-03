import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/util/palette.dart';

class RoundedTextIconWidget extends StatelessWidget {
  const RoundedTextIconWidget({
    super.key,
    required this.onTap,
    required this.label,
    required this.svgAsset,
  });

  final void Function() onTap;
  final String label;
  final String svgAsset;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Palette.containerColor,
          ),
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(label),
              SvgPicture.asset(
                svgAsset,
                height: 75,
              ),
            ],
          ),
        ),
      );
}
