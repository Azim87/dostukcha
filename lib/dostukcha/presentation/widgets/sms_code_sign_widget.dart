import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pinput/pinput.dart';

import '../../core/util/utils.dart';

const int SMS_CODE_LENGTH = 4;

class SmsCodeSignWidget extends StatefulWidget {
  const SmsCodeSignWidget({
    super.key,
    required this.onSmsCodeApply,
    required this.onChanged,
    required this.title,
    required this.phoneNumber,
    required this.onResend,
    required this.buttonText,
    this.showResend = false,
  });

  final Function() onSmsCodeApply;
  final Function(String) onChanged;
  final Function() onResend;
  final String title;
  final String buttonText;
  final String phoneNumber;
  final bool showResend;

  @override
  State<SmsCodeSignWidget> createState() => _SmsCodeSignWidgetState();
}

class _SmsCodeSignWidgetState extends State<SmsCodeSignWidget> {
  bool showTimerText = false;
  final _pinController = TextEditingController();

  final int timerMaxSeconds = 59;

  int currentSeconds = 0;

  String get timerText =>
      '${((timerMaxSeconds - currentSeconds) ~/ 60).toString().padLeft(2, '0')}:${((timerMaxSeconds - currentSeconds) % 60).toString().padLeft(2, '0')}';

  Future<void> _startTimeout() async {
    Timer.periodic(
      const Duration(seconds: 1),
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
    _startTimeout();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 22),
              SvgPicture.asset(Assets.logo),
              Expanded(child: Container()),
              const SizedBox(height: 40),
              _buildSmsCodeTextSection(),
              const SizedBox(height: 12),
              _buildSmsCodePin(),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (_pinController.text.length != SMS_CODE_LENGTH) _buildTimerWidget(),
                      const SizedBox(height: 20),
                      if (!widget.showResend && currentSeconds == timerMaxSeconds) _buildResendSmsCode(),
                    ],
                  ),
                ),
              ),
              Expanded(child: Container()),
              _buildNextButton(),
              const SizedBox(height: 12),
            ],
          ),
        ),
      );

  Widget _buildResendSmsCode() => InkWell(
        onTap: () {
          _startTimeout();
          widget.onResend.call();
        },
        child: Text(
          context.loc!.resend_code,
          style: const TextStyle(
            color: Palette.appBlue,
            decoration: TextDecoration.underline,
          ),
        ),
      );

  Widget _buildSmsCodeTextSection() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
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
                  widget.phoneNumber,
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
          margin: const EdgeInsets.symmetric(horizontal: 10),
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Palette.containerBackroundColor,
          ),
        ),
        hapticFeedbackType: HapticFeedbackType.mediumImpact,
        androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsUserConsentApi,
        controller: _pinController,
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
        onChanged: widget.onChanged,
      );

  Widget _buildNextButton() => Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Palette.appBlue),
            padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 16)),
          ),
          onPressed: () async {
            widget.onSmsCodeApply.call();
            //_startTimeout();
          },
          child: Text(widget.buttonText)));
}
