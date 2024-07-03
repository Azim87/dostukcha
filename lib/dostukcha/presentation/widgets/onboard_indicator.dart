import 'package:flutter/material.dart';

import '../../core/util/palette.dart';

class OnboardIndicator extends StatelessWidget {
  const OnboardIndicator({
    this.currentIndex,
    this.positionIndex,
    super.key,
  });

  final int? positionIndex, currentIndex;

  @override
  Widget build(BuildContext context) => AnimatedContainer(
        height: positionIndex == currentIndex ? 5 : 5,
        width: positionIndex == currentIndex ? 25 : 5,
        decoration: BoxDecoration(
          border: Border.all(color: Palette.appBlue),
          color: Palette.appBlue,
          borderRadius: BorderRadius.circular(100),
        ),
        curve: Curves.easeIn,
        duration: const Duration(milliseconds: 100),
      );
}
