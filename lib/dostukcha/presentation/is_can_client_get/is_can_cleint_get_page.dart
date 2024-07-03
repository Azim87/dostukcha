import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../config/di/injection.dart';
import '../../config/navigation/app_router.dart';
import '../../config/navigation/nav_strings.dart';
import '../../config/navigation/navigation.dart';
import '../../core/util/utils.dart';
import '../widgets/app_error_widget.dart';
import '../widgets/loading.dart';
import '../widgets/loan_approved_widget.dart';
import 'is_can_client_get_cubit.dart';
import 'is_can_client_get_state.dart';

class IsCanClientGetPage extends StatelessWidget {
  const IsCanClientGetPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: BlocBuilder<IsCanClientGetCubit, IsCanClientGetState>(
          bloc: getIt<IsCanClientGetCubit>(),
          builder: (context, state) {
            if (state.loading) {
              return const LoadingPage();
            }

            if (state.isCanClientSuccess) {
              return LoanApprovePage(isApproved: state.isCanClientSuccess);
            }

            if (state.scanError) {
              return AppErrorWidget(
                buttonText: navigatorKey.currentContext!.loc!.scan_document,
                errorText: navigatorKey.currentContext!.loc!.invalid_document_or_error,
                errorText2: navigatorKey.currentContext!.loc!.try_again,
                onPressed: () => Navigation.route.goRouter.go(Navs.passport),
              );
            }

            return const SizedBox();
          },
        ),
      );
}
