import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import '../../config/di/injection.dart';
import '../../config/navigation/navigation.dart';
import '../private_data/private_data_page.dart';
import '../widgets/loading.dart';
import '../widgets/screen.dart';
import 'loan_contract_cubit.dart';
import 'loan_contract_state.dart';

class LoanContractPage extends StatelessWidget {
  LoanContractPage({super.key, required this.requestId});

  final cubit = getIt<LoanContractCubit>();

  final String requestId;

  @override
  Widget build(BuildContext context) => BlocBuilder<LoanContractCubit, LoanContractState>(
        bloc: cubit,
        builder: (context, state) {
          return Screen(
            padding: const EdgeInsets.all(16),
            body: Column(
              children: [
                BackPressWidget(onTap: () => Navigation.route.goRouter.pop()),
                if (state.loading) const SizedBox(height: 100, width: 100, child: LoadingPage()) else const SizedBox(),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    child: InAppWebView(
                      onLoadStop: (_, __) => cubit.onLoading(false),
                      initialUrlRequest: URLRequest(url: Uri.parse('https://dostukcha.kg:5724/Document/contract?RequestId=$requestId')),
                      onReceivedServerTrustAuthRequest: (controller, challenge) async =>
                          ServerTrustAuthResponse(action: ServerTrustAuthResponseAction.PROCEED),
                      initialOptions: InAppWebViewGroupOptions(
                        crossPlatform: InAppWebViewOptions(
                          userAgent:
                              'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.34 (KHTML, like Gecko) Version/11.0 Mobile/15A5341f Safari/604.1',
                        ),
                        android: AndroidInAppWebViewOptions(),
                      ),
                    ),
                  ),
                ), //
              ],
            ),
          );
        },
      );
}
