import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../config/navigation/nav_strings.dart';
import '../../config/navigation/navigation.dart';
import '../../core/util/assets.dart';

class LoanApprovePage extends StatefulWidget {
  const LoanApprovePage({super.key, this.isApproved = false});

  final bool isApproved;

  @override
  State<LoanApprovePage> createState() => _LoanApprovePageState();
}

class _LoanApprovePageState extends State<LoanApprovePage> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    if (widget.isApproved) {
      await Future.delayed(
        const Duration(seconds: 2),
        () => Navigation.route.goRouter.push(Navs.main_credit_calculator),
      );
    } else {
      await Future.delayed(
        const Duration(seconds: 2),
        () => Navigation.route.goRouter.push(Navs.phone_number),
      );
    }
  }

  @override
  Widget build(BuildContext context) =>
      Scaffold(body: SafeArea(child: Center(child: SvgPicture.asset(widget.isApproved ? Assets.loanApprove : Assets.loanDeclined))));
}
