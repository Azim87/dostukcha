import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../config/di/injection.dart';
import '../../config/navigation/navigation.dart';
import '../../core/util/utils.dart';
import '../private_data/private_data_page.dart';
import '../widgets/widgets.dart';
import 'privacy_policy_cubit.dart';
import 'privacy_policy_state.dart';

class PrivacyPolicyPage extends StatefulWidget {
  const PrivacyPolicyPage({super.key});

  @override
  State<PrivacyPolicyPage> createState() => _PrivacyPolicyPageState();
}

class _PrivacyPolicyPageState extends State<PrivacyPolicyPage> {
  final _controller = WebViewController();

  @override
  Widget build(BuildContext context) => Scaffold(body: _buildBody());

  Widget _buildBody() => BlocBuilder<PrivacyPolicyCubit, PrivacyPolicyState>(
        bloc: getIt<PrivacyPolicyCubit>()..getPrivacyPolicyUrl(),
        builder: (context, state) {
          if (state.loading) {
            return const LoadingPage();
          }

          return SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BackPressWidget(onTap: () => Navigation.route.goRouter.pop(true)),
                ),
                Expanded(
                  child: WebViewWidget(
                    controller: _controller
                      ..setJavaScriptMode(JavaScriptMode.unrestricted)
                      ..setNavigationDelegate(NavigationDelegate())
                      ..setBackgroundColor(Palette.white)
                      ..loadRequest(
                        Uri.parse(state.privacyPolicyUrl ?? ''),
                      ),
                  ),
                ),
              ],
            ),
          );
        },
      );
}
