import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(vertical: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            transform: GradientRotation(1),
            stops: [0.01, 0.46, 1.0],
            colors: [
              Color(0XFFC6F1FF),
              Color(0XFFE9FAFF),
              Color(0XFFB3ECFF),
            ],
          ),
        ),
        child: child,
      );
}
