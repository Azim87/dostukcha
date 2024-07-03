import 'package:flutter/material.dart';

import '../../../config/navigation/navigation.dart';
import '../../private_data/private_data_page.dart';
import '../../widgets/screen.dart';

class RepaymentMethodInfoPage extends StatelessWidget {
  const RepaymentMethodInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Screen(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: BackPressWidget(onTap: () {
              Navigation.route.goRouter.pop();
            }),
          ),
          Image.asset('assets/icons/info.png'),
        ],
      ),
    );
  }
}
