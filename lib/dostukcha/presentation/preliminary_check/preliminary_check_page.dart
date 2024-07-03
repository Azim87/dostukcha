import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../config/di/injection.dart';
import '../../config/navigation/app_router.dart';
import '../../config/navigation/nav_strings.dart';
import '../../config/navigation/navigation.dart';
import '../../core/util/utils.dart';
import '../widgets/widgets.dart';
import 'preliminary_check_cubit.dart';
import 'preliminary_check_state.dart';

class PreliminaryCheckPage extends StatelessWidget {
  const PreliminaryCheckPage({super.key});

  @override
  Widget build(BuildContext context) => Screen(
        body: BlocBuilder<PreliminaryCheckCubit, PreliminaryCheckState>(
          bloc: getIt<PreliminaryCheckCubit>()..onPreliminaryCheck(),
          builder: (context, state) {
            if (state.loading) {
              return const LoadingPage();
            }

            if (state.isDeclined) {
              return const LoanDeclinedPage();
            }

            if (state.scanError) {
              return AppErrorWidget(
                buttonText: navigatorKey.currentContext!.loc!.scan_document,
                errorText: navigatorKey.currentContext!.loc!.invalid_document_or_error,
                errorText2: navigatorKey.currentContext!.loc!.try_again,
                onPressed: () => Navigation.route.goRouter.go(Navs.passport),
              );
            }
            return _buildBody();
          },
        ),
      );

  Widget _buildBody() => Container();
}
