import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../config/di/injection.dart';
import '../../core/util/utils.dart';
import '../widgets/widgets.dart';
import 'sms_code_cubit.dart';
import 'sms_code_state.dart';

const int SMS_CODE_LENGTH = 4;

class SmsCodePage extends StatefulWidget {
  const SmsCodePage({
    super.key,
    required this.phoneNumber,
    required this.unmaskedPhoneNumber,
  });

  final String phoneNumber;
  final String unmaskedPhoneNumber;

  @override
  State<SmsCodePage> createState() => _SmsCodePageState();
}

class _SmsCodePageState extends State<SmsCodePage> {
  // final _pinController = TextEditingController();
  final _smsCubit = getIt<SmsCodeCubit>();

  // final interval = const Duration(seconds: 1);
  // final int timerMaxSeconds = 59;
  //
  // int currentSeconds = 0;
  //
  // String get timerText =>
  //     '${((timerMaxSeconds - currentSeconds) ~/ 60).toString().padLeft(2, '0')}:${((timerMaxSeconds - currentSeconds) % 60).toString().padLeft(2, '0')}';
  //
  // Future<void> _startTimeout() async {
  //   final duration = interval;
  //
  //   Timer.periodic(
  //     duration,
  //     (timer) {
  //       if (mounted)
  //         setState(
  //           () {
  //             currentSeconds = timer.tick;
  //             if (_pinController.text.length == SMS_CODE_LENGTH) {
  //               timer.cancel();
  //             }
  //
  //             if (timer.tick >= timerMaxSeconds) {
  //               timer.cancel();
  //             }
  //           },
  //         );
  //     },
  //   );
  // }
  //
  // @override
  // void dispose() {
  //   _pinController.dispose();
  //   _smsCubit.close();
  //   super.dispose();
  // }
  //
  // @override
  // void initState() {
  //   super.initState();
  //   _startTimeout();
  // }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: BlocBuilder<SmsCodeCubit, SmsCodeState>(
          bloc: _smsCubit,
          builder: (context, state) {
            if (state.loading) {
              return const LoadingPage();
            }

            return SmsCodeSignWidget(
              onSmsCodeApply: () => _smsCubit.onNextPressed(),
              onChanged: (smsCode) => _smsCubit.onSmsCode(smsCode),
              title: context.loc!.sms_code_enter_code,
              phoneNumber: widget.phoneNumber,
              onResend: () => _smsCubit.resendSmsCode(),
              buttonText: context.loc!.further,
            );
          },
        ),
      );

// @override
// Widget build(BuildContext context) => Scaffold(
//       body: BlocBuilder<SmsCodeCubit, SmsCodeState>(
//         bloc: _smsCubit,
//         builder: (context, state) {
//           if (state.loading) {
//             return const LoadingPage();
//           }
//           if (state.err1) {
//             return BlurErrorWidget(errorText: context.loc!.sms_code_check_phone_number);
//           }
//           if (state.err2) {
//             return BlurErrorWidget(errorText: context.loc!.sms_code_phone_number_error);
//           }
//
//           return SafeArea(
//             child: Column(
//               children: [
//                 const SizedBox(height: 22),
//                 SvgPicture.asset(Assets.logo),
//                 Expanded(child: Container()),
//                 const SizedBox(height: 40),
//                 _buildSmsCodeTextSection(),
//                 const SizedBox(height: 12),
//                 _buildSmsCodePin(),
//                 const SizedBox(height: 15),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 32),
//                   child: Align(
//                     alignment: Alignment.topLeft,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         if (_pinController.text.length != SMS_CODE_LENGTH) _buildTimerWidget(),
//                         const SizedBox(height: 20),
//                         if (currentSeconds == timerMaxSeconds) _buildResendSmsCode(),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Expanded(child: Container()),
//                 _buildNextButton(),
//                 const SizedBox(height: 12),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//
// Widget _buildResendSmsCode() => InkWell(
//     onTap: () => _startTimeout().whenComplete(() => _smsCubit.resendSmsCode()),
//     child: Text(
//       context.loc!.resend_code,
//       style: const TextStyle(color: Palette.appBlue, decoration: TextDecoration.underline),
//     ));
//
// Widget _buildSmsCodeTextSection() => Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 32),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             context.loc!.sms_code_enter_code,
//             style: AppStyles.titleStyle,
//           ),
//           const SizedBox(height: 12),
//           Row(
//             children: [
//               Text(
//                 context.loc!.we_have_sent,
//                 style: AppStyles.subtitleStyle,
//               ),
//               Text(
//                 widget.phoneNumber,
//                 style: const TextStyle(
//                   color: Palette.appBlue,
//                   fontWeight: FontWeight.w700,
//                 ),
//               ),
//             ],
//           ),
//           Text(
//             context.loc!.code_of_confirmation,
//             style: AppStyles.subtitleStyle,
//           ),
//         ],
//       ),
//     );
//
// Widget _buildTimerWidget() => Text(
//       '${context.loc!.request_code} $timerText ${AppConstants.SECONDS}',
//       style: AppStyles.subtitleStyle,
//     );
//
// Widget _buildSmsCodePin() => Pinput(
//       autofocus: true,
//       animationCurve: Curves.easeInBack,
//       focusedPinTheme: PinTheme(
//         height: 60,
//         width: 60,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(14),
//           border: Border.all(width: 2, color: Palette.containerBackroundColor),
//         ),
//       ),
//       defaultPinTheme: PinTheme(
//         margin: const EdgeInsets.symmetric(horizontal: 10),
//         height: 60,
//         width: 60,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(14),
//           color: Palette.containerBackroundColor,
//         ),
//       ),
//       hapticFeedbackType: HapticFeedbackType.mediumImpact,
//       androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsUserConsentApi,
//       controller: _pinController,
//       keyboardType: const TextInputType.numberWithOptions(decimal: true),
//       onChanged: (smsCode) => _smsCubit.onSmsCode(smsCode),
//     );
//
// Widget _buildNextButton() => AppButton(
//       text: context.loc!.further,
//       value: _pinController.text.isNotEmpty,
//       onPressed: () => _smsCubit.onNextPressed(),
//     );
}
