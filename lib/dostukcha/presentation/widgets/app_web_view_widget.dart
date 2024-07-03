import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import '../../config/navigation/nav_strings.dart';
import '../../config/navigation/navigation.dart';
import '../../core/mixin/contacts_mixin.dart';
import '../../core/util/utils.dart';
import '../widgets/loading.dart';
import 'app_button.dart';

class AppWebViewPage extends StatefulWidget {
  const AppWebViewPage({super.key, required this.url, this.isButtonDisabled = false});

  final String url;
  final bool isButtonDisabled;

  @override
  State<AppWebViewPage> createState() => _AppWebViewPageState();
}

class _AppWebViewPageState extends State<AppWebViewPage> with ContactsMixin {
  bool loading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Text(widget.url),
          //BackPressWidget(onTap: () => Navigation.route.goRouter.pop()),
          if (loading) const SizedBox(height: 100, width: 100, child: LoadingPage()) else const SizedBox(),
          Expanded(
            child: InAppWebView(
              onLoadStop: (_, __) => setState(() => loading = false),
              initialUrlRequest: URLRequest(url: Uri.tryParse(widget.url)),
              onReceivedServerTrustAuthRequest: (controller, challenge) async =>
                  ServerTrustAuthResponse(action: ServerTrustAuthResponseAction.PROCEED),
              initialOptions: InAppWebViewGroupOptions(
                crossPlatform: InAppWebViewOptions(
                  preferredContentMode: UserPreferredContentMode.MOBILE,
                  supportZoom: false,
                  clearCache: true,
                  useShouldOverrideUrlLoading: true,
                  userAgent:
                      'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.34 (KHTML, like Gecko) Version/11.0 Mobile/15A5341f Safari/604.1',
                ),
                android: AndroidInAppWebViewOptions(),
              ),
              shouldOverrideUrlLoading: (controller, navigationAction) async {
                final uri = navigationAction.request.url!;

                if (uri.scheme.contains('tel')) {
                  makePhoneCall2(uri);
                }

                if (uri.scheme.contains('tg')) {
                  openTg(uri.scheme);
                }

                if (uri.scheme.contains('mailto')) {
                  sendEmailTo(uri.scheme);
                }
                return NavigationActionPolicy.CANCEL;
              },
            ),
          ),
          if (!widget.isButtonDisabled)
            AppButton(
              onPressed: () => Navigation.route.goRouter.pushNamed(Navs.personal_data_consent_page),
              value: true,
              text: context.loc!.further,
            )
        ],
      ),
    );
  }
}
