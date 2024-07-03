// ignore_for_file: avoid_bool_literals_in_conditional_expressions

import 'package:flutter/material.dart';

import '../../config/navigation/navigation.dart';
import '../../core/util/utils.dart';
import '../widgets/widgets.dart';

class CreditWithdrawalDetailPage extends StatefulWidget {
  const CreditWithdrawalDetailPage({
    super.key,
    required this.title,
    required this.assetImage,
  });

  final String title;
  final String assetImage;

  @override
  State<CreditWithdrawalDetailPage> createState() => _CreditWithdrawalDetailPageState();
}

class _CreditWithdrawalDetailPageState extends State<CreditWithdrawalDetailPage> {
  late String phone = '';
  late String passportNumber = '';

  @override
  Widget build(BuildContext context) {
    return Screen(
      showAppBar: true,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Palette.black,
        ),
        onPressed: () => Navigation.route.goRouter.pop(),
      ),
      floatingActionButton: AppButton(
        onPressed: () {
          Navigation.route.goRouter.push('/nav');
        },
        text: 'Далее',
        value: phone.isNotEmpty && passportNumber.isNotEmpty ? true : false,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 32),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Image.asset(widget.assetImage),
            title: Text(
              widget.title,
              style: AppStyles.text32BlackStyle,
            ),
          ),
          const Text('''
Введите свой номер телефона который 
привязан к электронному кошельку'''),
          AppFormFieldWidget(
            initialValue: '',
            isHintEnabled: true,
            onChange: (p0) => setState(() => phone = p0),
            textInputType: TextInputType.phone,
            inputFormatters: [codeMaskFormatter],
          ),
          const Text('''
Введите номер своего паспорта который  привязан к электронному кошельку'''),
          AppFormFieldWidget(
            initialValue: '',
            onChange: (p0) => setState(() => passportNumber = p0),
            textInputType: const TextInputType.numberWithOptions(decimal: true),
          ),
          const Spacer(flex: 2),
        ].withSpaceBetween(height: 20),
      ),
    );
  }
}
