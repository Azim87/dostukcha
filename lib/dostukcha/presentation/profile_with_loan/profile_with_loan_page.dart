import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../config/di/injection.dart';
import '../../config/navigation/nav_strings.dart';
import '../../config/navigation/navigation.dart';
import '../../core/util/utils.dart';
import '../widgets/widgets.dart';
import 'profile_with_loan_cubit.dart';
import 'profile_with_loan_state.dart';

class ProfileWithLoanPage extends StatefulWidget {
  const ProfileWithLoanPage({super.key});

  @override
  State<ProfileWithLoanPage> createState() => _ProfileWithLoanPageState();
}

class _ProfileWithLoanPageState extends State<ProfileWithLoanPage> {
  final cubit = getIt<ProfileWithLoanCubit>();

  @override
  Widget build(BuildContext context) => BlocBuilder<ProfileWithLoanCubit, ProfileWithLoanState>(
        bloc: cubit..getCreditPayInfo(),
        builder: (context, state) {
          if (state.loading) {
            return const LoadingPage();
          }

          return Screen(
            body: _buildBody(state),
            floatingActionButton: AppButton(
              onPressed: () => Navigation.route.goRouter.pushNamed(Navs.repayment_method),
              value: true,
              text: context.loc!.profile_with_loan_repay_loan.toLowerCase(),
              toCapitalize: true,
              isBold: true,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
          );
        },
      );

  Widget _buildBody(ProfileWithLoanState state) => Column(
        children: [
          const BannerWidget(isKg: true,),
          const SizedBox(height: 10),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Text(context.loc!.profile_with_loan_credit_rating),
          //     Text(
          //       state.getCreditPayInfoData?.rateName ?? '',
          //       style: AppStyles.loanTimeStyle,
          //     ),
          //   ].withSpaceBetween(width: 8),
          // ),
          Text(
            context.loc!.profile_with_loan_current_credit,
            style: AppStyles.loanSuccessStyle,
          ),
          TextHorizontalDividerWidget(
            lText: context.loc!.loan_number,
            rText: '№${state.getCreditPayInfoData?.dogNumber ?? ''}',
            textColor: Colors.black,
          ),
          TextHorizontalDividerWidget(
            lText: context.loc!.sum_of_loan,
            rText: '${state.getCreditPayInfoData?.getAmount?.toInt() ?? 0} ${AppConstants.KG_SOM}',
            textColor: Palette.appBlue,
          ),
          TextHorizontalDividerWidget(
            lText: context.loc!.terms_of_loan,
            rText: '${state.getCreditPayInfoData?.days!.toInt() ?? 0} ${context.loc!.days}',
            textColor: Palette.appBlue,
          ),
          TextHorizontalDividerWidget(
            lText: context.loc!.sum_of_reward,
            rText: '${state.getCreditPayInfoData?.percent ?? 0} ${AppConstants.KG_SOM}',
            textColor: Colors.black,
          ),
          TextHorizontalDividerWidget(
            lText: context.loc!.commission_of_administration,
            rText: '${state.getCreditPayInfoData?.admissionFee ?? 0} ${AppConstants.KG_SOM}',
            textColor: Colors.black,
          ),
          TextHorizontalDividerWidget(
            lText: context.loc!.sum_of_pay_of,
            rText: '${state.getCreditPayInfoData?.repaymentAmount ?? 0} ${AppConstants.KG_SOM}',
            textColor: Colors.black,
          ),
          TextHorizontalDividerWidget(
            lText: context.loc!.date_of_repayment,
            rText: DateFormat(AppConstants.DATE_FORMAT)
                .format(DateTime.parse(state.getCreditPayInfoData?.repaymentDate.toString() ?? DateTime.now().toIso8601String())),
            textColor: Palette.appBlue,
          ),
          InkWell(
            onTap: () => Navigation.route.goRouter.push(Navs.loanHistory),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.time),
                Text(
                  context.loc!.loan_history,
                  style: AppStyles.titleThinBlueStyle,
                ),
              ].withSpaceBetween(width: 10),
            ),
          ),

          // TextButton(onPressed: () => cubit.onLoanContract(), child: Text(context.loc!.loan_agreement, style: AppStyles.titleThinBlueStyle))
        ].withSpaceBetween(height: 16),
      );
}
