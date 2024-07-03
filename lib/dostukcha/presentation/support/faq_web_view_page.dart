import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../config/di/injection.dart';
import '../widgets/app_web_view_widget.dart';
import 'faq_cubit.dart';

class FaqWebViewPage extends StatelessWidget {
  FaqWebViewPage({super.key});

  final cubit = getIt<FaqCubit>();

  @override
  Widget build(BuildContext context) => BlocBuilder<FaqCubit, FaqState>(
        bloc: cubit,
        builder: (context, state) {
          return AppWebViewPage(url: state.url ?? '', isButtonDisabled: true);
        },
      );
}
