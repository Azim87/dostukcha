import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pinput/pinput.dart';

import '../../config/di/injection.dart';
import '../../config/navigation/nav_strings.dart';
import '../../config/navigation/navigation.dart';
import '../../core/util/utils.dart';
import 'loan_sign_cubit.dart';
import 'loan_sign_state.dart';

const int SMS_CODE_LENGTH = 4;

class LoanAgreementSignPage extends StatefulWidget {
  const LoanAgreementSignPage({super.key});

  @override
  State<LoanAgreementSignPage> createState() => _LoanAgreementSignPageState();
}

class _LoanAgreementSignPageState extends State<LoanAgreementSignPage> {
  late final _pinController = TextEditingController();
  late final _cubit = getIt.get<LoanSignCubit>();
  final interval = const Duration(seconds: 1);
  final int timerMaxSeconds = 60;
  int currentSeconds = 0;

  String get timerText =>
      '${((timerMaxSeconds - currentSeconds) ~/ 60).toString().padLeft(2, '0')}:${((timerMaxSeconds - currentSeconds) % 60).toString().padLeft(2, '0')}';

  void _startTimeout() {
    final duration = interval;

    Timer.periodic(
      duration,
      (timer) {
        if (mounted)
          setState(
            () {
              currentSeconds = timer.tick;
              if (_pinController.text.length == SMS_CODE_LENGTH) {
                timer.cancel();
              }

              if (timer.tick >= timerMaxSeconds) {
                timer.cancel();
              }
            },
          );
      },
    );
  }

  @override
  void dispose() {
    _pinController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _cubit.onSendPhoneNumber();
    _startTimeout();
  }

  @override
  Widget build(BuildContext context) => BlocBuilder<LoanSignCubit, LoanSignState>(
        bloc: _cubit..getPhoneNumberFromCache(),
        builder: (context, state) {
          return Scaffold(
            bottomNavigationBar: _buildNextButton(),
            body: SafeArea(
              child: Column(
                children: [
                  const SizedBox(height: 22),
                  SvgPicture.asset(Assets.logo),
                  Expanded(child: Container()),
                  _buildSmsCodeTextSection(state),
                  const SizedBox(height: 12),
                  _buildSmsCodePin(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.file_open,
                          color: Palette.appBlue,
                        ),
                        TextButton(
                          onPressed: () => Navigation.route.goRouter.pushNamed(
                            Navs.contract,
                            pathParameters: {'request_id': state.requestId!},
                          ),
                          child: Text(context.loc!.loan_agreement),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (_pinController.text.length != SMS_CODE_LENGTH) _buildTimerWidget(),
                          const SizedBox(height: 20),
                          if (currentSeconds == timerMaxSeconds) _buildResendSmsCode(),
                        ],
                      ),
                    ),
                  ),
                  Expanded(child: Container()),
                ],
              ),
            ),
          );
        },
      );

  Widget _buildResendSmsCode() => InkWell(
      onTap: () => _cubit.onSendPhoneNumber(),
      child: Text(
        context.loc!.resend_code,
        style: const TextStyle(color: Palette.appBlue, decoration: TextDecoration.underline),
      ));

  Widget _buildSmsCodeTextSection(LoanSignState state) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.loc!.sign_loan_agreement,
              style: AppStyles.titleStyle,
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Text(
                  context.loc!.we_have_sent,
                  style: AppStyles.subtitleStyle,
                ),
                Text(
                  state.phoneNumber ?? '',
                  style: const TextStyle(
                    color: Palette.appBlue,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Text(
              context.loc!.code_of_confirmation,
              style: AppStyles.subtitleStyle,
            ),
          ],
        ),
      );

  Widget _buildTimerWidget() => Text(
        context.loc!.request_code(timerText),
        style: AppStyles.subtitleStyle,
      );

  Widget _buildSmsCodePin() => Pinput(
        autofocus: true,
        animationCurve: Curves.easeInBack,
        focusedPinTheme: PinTheme(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(width: 2, color: Palette.containerBackroundColor),
          ),
        ),
        defaultPinTheme: PinTheme(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Palette.containerBackroundColor,
          ),
        ),
        androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsUserConsentApi,
        hapticFeedbackType: HapticFeedbackType.mediumImpact,
        controller: _pinController,
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
        onChanged: (smsCode) {
          if (smsCode.length == 4) {
            _cubit.onSmsCode(smsCode);
          }
        },
      );

  Widget _buildNextButton() => Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              _pinController.text.isEmpty ? Palette.disabledColor : Palette.appBlue,
            ),
            padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 16)),
          ),
          onPressed: _pinController.text.isEmpty
              ? null
              : () async {
                  if (_pinController.text.isNotEmpty) {
                    if (_pinController.text.length == SMS_CODE_LENGTH) {
                      _cubit.onConfirmSmsCode();
                    }
                  }
                },
          child: Text(context.loc!.further)));
}
