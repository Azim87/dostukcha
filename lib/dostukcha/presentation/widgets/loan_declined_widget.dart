import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/util/assets.dart';

class LoanDeclinedPage extends StatelessWidget {
  const LoanDeclinedPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(body: SafeArea(child: Center(child: SvgPicture.asset(Assets.loanDeclined))));
}
