import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../config/navigation/app_router.dart';
import '../../core/util/utils.dart';

class LoanSuccessPage extends StatelessWidget {
  const LoanSuccessPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(Assets.vallet),
                Text(
                  navigatorKey.currentContext!.loc!.success,
                  style: AppStyles.loanSuccessStyle,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32, top: 20, right: 32),
                  child: Text(
                    navigatorKey.currentContext!.loc!.await_for_credit,
                    style: AppStyles.subtitleStyle,
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ),
      );
}
