import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../config/di/injection.dart';
import '../../config/navigation/navigation.dart';
import '../../core/util/utils.dart';
import '../widgets/loan_history_widget.dart';
import '../widgets/widgets.dart';
import 'loan_history_cubit.dart';

class LoanHistoryPage extends StatelessWidget {
  const LoanHistoryPage({super.key});

  @override
  Widget build(BuildContext context) => Screen(
      showAppBar: true,
      centerTitle: true,
      bottomNavigationBar: _buildBackButton(),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
      widgetTitle: buildAppBar(context),
      body: _buildBody());

  Widget buildAppBar(BuildContext context) => Row(
        children: [
          Image.asset(Assets.time),
          Text(
            context.loc!.loan_history,
            style: AppStyles.appBarTitleStyle,
          ),
        ].withSpaceBetween(width: 10),
      );

  Widget _buildBody() => BlocBuilder<LoanHistoryCubit, LoanHistoryState>(
        bloc: getIt<LoanHistoryCubit>()..getLoanHistory(),
        builder: (context, state) => state.maybeWhen(
          loading: () => const LoadingPage(),
          success: (loanHistoryData) => loanHistoryData.isEmpty
              ? const Text('No loan history')
              : ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (ctx, index) => LoanHistoryWidget(
                    index: index,
                    loanHistoryData: loanHistoryData[index],
                  ),
                  itemCount: loanHistoryData.length,
                ),
          orElse: () => Container(),
        ),
      );

  Widget _buildBackButton() => Builder(
        builder: (context) => AppButton(
          onPressed: () => Navigation.route.goRouter.pop(),
          value: true,
          text: context.loc!.back,
        ),
      );
}
