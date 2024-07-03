import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../config/di/injection.dart';
import '../../core/util/utils.dart';
import '../widgets/widgets.dart';
import 'personal_data_consent_cubit.dart';
import 'personal_data_consent_state.dart';

class PersonalDataConsentPage extends StatelessWidget {
  PersonalDataConsentPage({super.key});

  final cubit = getIt<PersonalDataConsentCubit>();

  @override
  Widget build(BuildContext context) => BlocBuilder<PersonalDataConsentCubit, PersonalDataConsentState>(
      bloc: cubit,
      builder: (context, state) {
        if (state.loading) {
          const LoadingPage();
        }

        return SmsCodeSignWidget(
          onResend: () => cubit.personalDataConsentSendCode(),
          onChanged: (code) => cubit.onSmsCodeSubmit(code),
          onSmsCodeApply: () => cubit.personalDataConsentConfirmCode(),
          title: context.loc!.sms_code_enter_code,
          buttonText: context.loc!.sign,
          phoneNumber: state.phoneNumber ?? '',
          showResend: state.showResend,
        );
      });
}
