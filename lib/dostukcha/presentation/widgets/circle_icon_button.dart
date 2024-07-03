import 'package:flutter/material.dart';

import '../../core/util/palette.dart';

class CircleIconButton extends StatelessWidget {
  const CircleIconButton({super.key, required this.onPress, this.iconData});

  final VoidCallback onPress;
  final IconData? iconData;

  @override
  Widget build(BuildContext context) => FloatingActionButton(
        heroTag: iconData,
        backgroundColor: Palette.appBlue,
        mini: true,
        onPressed: onPress,
        child: Icon(iconData),
      );
}
