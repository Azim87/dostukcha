import 'package:flutter/material.dart';

import '../../core/util/utils.dart';
import '../widgets/widgets.dart';
import 'bank_card_widget.dart';
import 'e_valet_widget.dart';

class CreditWithdrawalPage extends StatelessWidget {
  const CreditWithdrawalPage({super.key});

  @override
  Widget build(BuildContext context) => Screen(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: 'У вас осталось ',
                        style: AppStyles.contactsStyle),
                    TextSpan(text: ' 100 сом', style: AppStyles.blueTitleStyle),
                  ],
                ),
              ),
              const Text(
                'Остаток суммы микрокредита вы сможете отравить на электронный кошелек или карту ',
                style: AppStyles.blueTextThin,
              ),
              const EValletWidget(text: 'Электронные кошельки'),
              const BankCardWidget(text: 'Банковские карты'),
              const SizedBox(height: 10)
            ].withSpaceBetween(height: 25),
          ),
        ),
      );
}
