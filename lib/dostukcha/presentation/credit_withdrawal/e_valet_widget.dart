import 'package:flutter/material.dart';

import '../../config/navigation/nav_strings.dart';
import '../../config/navigation/navigation.dart';
import '../../core/util/utils.dart';
import '../../domain/entity/credit_withdrawal.dart';
import 'credit_witdrawal_item.dart';

class EValletWidget extends StatelessWidget {
  const EValletWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: AppStyles.titleThinStyle,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: getEValleData().length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigation.route.goRouter.pushNamed(
                    Navs.credit_withdrawal_detail,
                    pathParameters: {
                      'title': getBankCardData()[index].title!,
                      'assetImage': getBankCardData()[index].assetImage!,
                    },
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: CreditWitdrawalItem(
                    text: getEValleData()[index].title ?? '',
                    assetImage: getEValleData()[index].assetImage ?? '',
                  ),
                ),
              );
            },
          ),
        ].withSpaceBetween(height: 10),
      );
}
