import 'package:flutter/material.dart';

import '../../config/navigation/nav_strings.dart';
import '../../config/navigation/navigation.dart';
import '../../core/util/utils.dart';
import '../private_data/private_data_page.dart';
import '../widgets/screen.dart';

class RepaymentMethodPage extends StatelessWidget {
  const RepaymentMethodPage({super.key});

  @override
  Widget build(BuildContext context) => Screen(
        body: _buildBody(),
        padding: const EdgeInsets.all(16),
      );

  Widget _buildBody() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackPressWidget(onTap: () {
            Navigation.route.goRouter.pop();
          }),
          const Text(
            'Выберите способ для погашения кредита',
            style: AppStyles.titleStyle2,
          ),
          const SizedBox(height: 20),
          const Text(
            'Мобильные кошельки',
            style: AppStyles.loanTimeStyle,
          ),
          GestureDetector(
            child: Image.asset('assets/icons/megapay.png'),
            onTap: () => Navigation.route.goRouter.push(Navs.repayment_method_info),
          )
        ].withSpaceBetween(height: 15),
      );
}
