import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import '../../../config/navigation/navigation.dart';
import '../../../core/util/utils.dart';
import '../../widgets/widgets.dart';

class LoanHistoryCheckPage extends StatelessWidget {
  const LoanHistoryCheckPage({super.key, required this.creditId});

  final String creditId;

  @override
  Widget build(BuildContext context) => Scaffold(
        floatingActionButton: AppButton(
          onPressed: () => Navigation.route.goRouter.pop(true),
          value: true,
          text: context.loc!.back,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: InAppWebView(
            initialUrlRequest: URLRequest(url: Uri.parse('https://dostukcha.kg:5724/document/ReceiptProduct?creditId=$creditId')),
            onReceivedServerTrustAuthRequest: (controller, challenge) async => ServerTrustAuthResponse(action: ServerTrustAuthResponseAction.PROCEED),
            initialOptions: InAppWebViewGroupOptions(
              crossPlatform: InAppWebViewOptions(
                userAgent:
                    'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.34 (KHTML, like Gecko) Version/11.0 Mobile/15A5341f Safari/604.1',
              ),
              android: AndroidInAppWebViewOptions(),
            ),
          ),
        ),
      );
}
