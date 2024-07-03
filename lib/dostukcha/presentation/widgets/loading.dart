import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../core/util/utils.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key, this.isText = false});

  final bool isText;

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Lottie.asset(Assets.loading)),
            if (widget.isText) Text(context.loc!.making_decision),
          ],
        ),
      );
}
