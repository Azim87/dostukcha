import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../config/di/injection.dart';
import '../../config/navigation/nav_strings.dart';
import '../../config/navigation/navigation.dart';
import '../../config/shared_prefs/app_prefs.dart';
import '../../config/shared_prefs/shared_keys.dart';
import '../../core/util/utils.dart';
import '../widgets/widgets.dart';
import 'document_cubit.dart';

class DocumentPage extends StatelessWidget {
  const DocumentPage({super.key});

  @override
  Widget build(BuildContext context) => Screen(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        body: _buildBody(context),
      );

  Widget _buildAppBar(BuildContext context) => Text(
        context.loc!.documents,
        style: AppStyles.appBarTitleStyle,
      );

  Widget _buildBody(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildAppBar(context),
          BlocBuilder<DocumentCubit, bool>(
            bloc: getIt<DocumentCubit>()..checkForRequestId(),
            builder: (context, requestId) {
              if(requestId)
              return ListTile(
                leading: Image.asset('assets/icons/document.png', height: 30),
                title: Text(context.loc!.loan_agreement),
                onTap: () => _getRequestIdFromCache(),
              );
              else {
                return Container();
              }
            },
          ),
          ListTile(
            leading: Image.asset('assets/icons/document.png', height: 30),
            title: Text(context.loc!.privacy_policy),
            onTap: () => Navigation.route.goRouter.pushNamed(Navs.privacy_policy),
          ),
          ListTile(
            leading: Image.asset('assets/icons/document.png', height: 30),
            title: Text(context.loc!.terms_of_use),
            onTap: () => Navigation.route.goRouter.pushNamed(Navs.private_data),
          ),
          const Divider(thickness: 1),
          Text(context.loc!.license)
        ].withSpaceTopAndBetween(height: 25),
      );

  Future<void> _getRequestIdFromCache() async {
    final prefs = getIt<AppPrefs>();

    final requestId = await prefs.getValue<String>(SharedKeys.REQUEST_ID);

    Navigation.route.goRouter.pushNamed(
      Navs.contract,
      pathParameters: {'request_id': requestId!},
    );
  }
}
