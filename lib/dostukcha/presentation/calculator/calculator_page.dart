import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

// ignore: depend_on_referenced_packages
import 'package:syncfusion_flutter_core/theme.dart' show SfSliderTheme, SfSliderThemeData;
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../config/di/injection.dart';
import '../../core/util/utils.dart';
import '../widgets/widgets.dart';
import 'calculator_cubit.dart';
import 'calculator_state.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final _cubit = getIt<CalculatorCubit>();

  @override
  void initState() {
    _cubit.checkCreditLimitDatas();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => BlocBuilder<CalculatorCubit, CalculatorState>(
        bloc: _cubit,
        builder: (context, state) {
          if (state.loading) {
            return const LoadingPage();
          }

          return Scaffold(
            bottomNavigationBar: _buildGetLoanButton(),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 22),
                      SvgPicture.asset(Assets.logo),
                      if (state.creditLimitData?.creditMinSum == state.creditLimitData?.creditMaxSum) ...[
                        GradientContainer(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(context.loc!.sum, style: AppStyles.text500),
                                Text(
                                  '${state.creditLimitData?.creditMaxSum ?? 0} ${AppConstants.KG_SOM}',
                                  style: AppStyles.text32BlueStyle,
                                ),
                              ],
                            ),
                          ),
                        )
                      ] else ...[
                        GradientContainer(child: _buildLoanSum(state))
                      ],
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          children: [
                            const Divider(thickness: 2),
                            _buildSumOfLoan(state),
                            _buildTimeOfLoan(state),
                            _buildRewardSum(state),
                            _buildAdministrationFee(state),
                            _buildDataOfRepayment(state),
                            _buildDailyPercent(state),
                            _buildTotalOfLoan(state),
                          ].withSpaceBetween(height: 25),
                        ),
                      ),
                    ].withSpaceBetween(height: 25),
                  ),
                ),
              ),
            ),
          );
        },
      );

  Widget _buildGetLoanButton() => AppButton(
        horizontalPadding: 22,
        text: context.loc!.get_loan,
        onPressed: () => _cubit.onGetLoan(),
        value: _cubit.isEnabled,
      );

  Widget _buildTotalOfLoan(CalculatorState state) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            context.loc!.sum_of_pay_of,
            style: AppStyles.loanTextStyle,
          ),
          Text(
            '${state.totalSumWithPercent.isEmpty ? '0' : double.parse(state.totalSumWithPercent).toStringAsFixed(2)} ${AppConstants.KG_SOM}',
            style: AppStyles.loanSumStyle,
          ),
        ],
      );

  Widget _buildDailyPercent(CalculatorState state) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            context.loc!.daily_percent,
            style: AppStyles.loanTextStyle,
          ),
          Text(
            '${state.creditLimitData?.normalPercent ?? 0} ${AppConstants.PERCENT}',
            style: AppStyles.loanSumStyle,
          ),
        ],
      );

  Widget _buildAdministrationFee(CalculatorState state) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            context.loc!.commission_of_administration,
            style: AppStyles.loanTextStyle,
          ),
          Text(
            '${state.administrationFeeSum ?? 0} ${AppConstants.KG_SOM}',
            style: AppStyles.loanSumStyle,
          ),
        ],
      );

  Widget _buildRewardSum(CalculatorState state) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            context.loc!.sum_of_reward,
            style: AppStyles.loanTextStyle,
          ),
          Text(
            '${state.rewardSum} ${AppConstants.KG_SOM}',
            style: AppStyles.loanSumStyle,
          ),
        ],
      );

  Widget _buildTimeOfLoan(CalculatorState state) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            context.loc!.term_of_loan,
            style: AppStyles.loanTextStyle,
          ),
          Text(
            '${state.creditLimitData?.daysMaxCount ?? 0} ${context.loc!.days}',
            style: AppStyles.loanSumStyle,
          ),
        ],
      );

  Widget _buildSumOfLoan(CalculatorState state) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            context.loc!.sum_loan,
            style: AppStyles.loanTextStyle,
          ),
          Text(
            '${state.selectedSum.toInt()} ${AppConstants.KG_SOM}',
            style: AppStyles.loanSumStyle,
          ),
        ],
      );

  Widget _buildDataOfRepayment(CalculatorState state) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            context.loc!.date_of_repayment,
            style: AppStyles.loanTextStyle,
          ),
          Text(
            state.repaymentDate.isEmpty ? '0' : state.repaymentDate,
            style: AppStyles.loanSumStyle,
          ),
        ],
      );

  Widget _buildLoanSum(CalculatorState state) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Row(
              children: [
                Text(context.loc!.sum),
                const Spacer(),
                Text(
                  '${state.selectedSum.toInt() ?? 0} ${AppConstants.KG_SOM}',
                  style: AppStyles.loanTimeStyle,
                ),
              ],
            ),
          ),
          if (state.creditLimitData?.creditMinSum != state.creditLimitData?.creditMaxSum)
            SfSliderTheme(
              data: SfSliderThemeData(
                activeTrackColor: Palette.appBlue,
                inactiveTrackColor: Palette.appBlue,
                thumbColor: Palette.activeSwitchColor,
                thumbStrokeColor: Palette.activeSwitchColor,
                activeTrackHeight: 11,
                inactiveTrackHeight: 11,
              ),
              child: SfSlider(
                  labelFormatterCallback: (actualValue, formattedText) {
                    return '$formattedText ${AppConstants.KG_SOM}';
                  },
                  edgeLabelPlacement: EdgeLabelPlacement.inside,
                  stepSize: state.creditLimitData?.creditIncrementValue ?? 0,
                  min: state.creditLimitData?.creditMaxSum == 0 ? 0 : state.creditLimitData?.creditMinSum ?? 0,
                  max: state.creditLimitData?.creditMaxSum == 0 ? 1 : state.creditLimitData?.creditMaxSum ?? 1,
                  thumbIcon: const Icon(
                    Icons.circle_outlined,
                    color: Palette.white,
                    size: 16.0,
                  ),
                  value: state.selectedSum,
                  onChanged: state.creditLimitData == null ? null : (sum) => _cubit.onSumChange(sum as double)),
            ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${state.creditLimitData?.creditMinSum ?? 0} ${AppConstants.KG_SOM}',
                  style: AppStyles.loanTextStyle,
                ),
                Text(
                  '${state.creditLimitData?.creditMaxSum ?? 0} ${AppConstants.KG_SOM}',
                  style: AppStyles.loanTextStyle,
                ),
              ],
            ),
          )
        ],
      );
}
