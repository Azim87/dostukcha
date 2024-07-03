import 'package:flutter/material.dart';

import '../../../core/util/utils.dart';
import '../../widgets/widgets.dart';

class PersonalDataWebViewPage extends StatelessWidget {
  const PersonalDataWebViewPage({super.key, required this.culture});

  final bool culture;

  @override
  Widget build(BuildContext context) =>
      Scaffold(body: AppWebViewPage(url: culture ? AppConstants.PERSONAL_DATA_URL_KG : AppConstants.PERSONAL_DATA_URL_RU));
}
