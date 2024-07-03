import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/util/utils.dart';
import 'app_button.dart';

class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({super.key, required this.buttonText, required this.errorText, required this.errorText2, required this.onPressed});

  final String buttonText;
  final String errorText;
  final String errorText2;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppButton(
        onPressed: onPressed,
        text: buttonText,
        value: true,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() => Center(
    child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/ic_error.svg'),
            Text(
              errorText,
              textAlign: TextAlign.center,
              style: AppStyles.contactsStyle,
            ),
            Text(errorText2),
          ].withSpaceBetween(height: 22),
        ),
  );
}
