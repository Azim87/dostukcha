import 'package:flutter/material.dart';

import '../../config/di/injection.dart';
import '../../core/util/utils.dart';
import '../app/app_cubit.dart';
import '../widgets/app_button.dart';

class SelectLangPage extends StatelessWidget {
  SelectLangPage({super.key});

  final _cubit = getIt<AppCubit>();

  @override
  Widget build(BuildContext context) => Scaffold(body: _buildBody());

  Widget _buildBody() => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Тилди тандаңыз', style: AppStyles.appBarTitleStyle),
          const SizedBox(height: 10),
          const Text('Выберите язык'),
          AppButton(
            onPressed: () => _cubit.onLangChange(true),
            value: true,
            text: 'Кыргыз тили',
            horizontalPadding: 32,
          ),
          AppButton(
            onPressed: () => _cubit.onLangChange(false),
            value: true,
            text: 'Русский',
            horizontalPadding: 32,
          ),
        ],
      );
}
