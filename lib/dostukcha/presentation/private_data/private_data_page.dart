import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../config/di/injection.dart';
import '../../config/navigation/navigation.dart';
import '../../core/util/utils.dart';
import '../widgets/loading.dart';
import 'private_data_cubit.dart';
import 'private_data_state.dart';

class PrivateDataPage extends StatefulWidget {
  const PrivateDataPage({super.key});

  @override
  State<PrivateDataPage> createState() => _PrivateDataPageState();
}

class _PrivateDataPageState extends State<PrivateDataPage> {
  final _controller = WebViewController();

  @override
  Widget build(BuildContext context) => BlocBuilder<PrivateDataCubit, PrivateDataState>(
        bloc: getIt<PrivateDataCubit>(),
        builder: (context, state) {
          if (state.loading) {
            return const LoadingPage();
          }
          return Scaffold(
            body: _buildBody(state),
          );
        },
      );

  Widget _buildBody(PrivateDataState state) => SafeArea(
    child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: BackPressWidget(
                onTap: () => Navigation.route.goRouter.pop(true),
              ),
            ),
            Expanded(
              child: WebViewWidget(
                controller: _controller
                  ..setJavaScriptMode(JavaScriptMode.unrestricted)
                  ..setNavigationDelegate(NavigationDelegate())
                  ..setBackgroundColor(Palette.grey)
                  ..loadRequest(
                    Uri.parse(state.privateDataUrl ?? ''),
                  ),
              ),
            ),
          ],
        ),
  );
}

class BackPressWidget extends StatelessWidget {
  const BackPressWidget({super.key, required this.onTap});

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: GestureDetector(
        onTap: onTap,
        child: Row(children: [const Icon(Icons.keyboard_arrow_left_outlined), Text(context.loc!.back)],)
      ),
    );
  }
}
