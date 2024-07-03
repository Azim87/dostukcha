import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../config/di/injection.dart';
import '../../config/navigation/app_router.dart';
import '../../config/navigation/nav_strings.dart';
import '../../config/navigation/navigation.dart';
import '../../core/util/utils.dart';
import '../widgets/widgets.dart';
import 'qr_code_cubit.dart';
import 'qr_code_state.dart';

class QrCodePage extends StatefulWidget {
  const QrCodePage({super.key});

  @override
  State<QrCodePage> createState() => _QrCodePageState();
}

class _QrCodePageState extends State<QrCodePage> {
  final cubit = getIt<QrCodeCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QrCodeCubit, QrCodeState>(
      bloc: cubit..requestCredit(),
      builder: (context, state) {
        if (state.loading) {
          return const LoadingPage();
        }

        if (state.requestCredit?.approved == false) {
          return AppErrorWidget(
            buttonText: context.loc!.further,
            errorText: navigatorKey.currentContext!.loc!.sorry_qr_not_generated,
            errorText2: navigatorKey.currentContext!.loc!.try_again,
            onPressed: () => Navigation.route.goRouter.go(Navs.main_credit_calculator),
          );
        }

        return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 22),
                BannerWidget(isKg: state.culture),
                const SizedBox(height: 22),
                Expanded(
                  child: Text(
                    navigatorKey.currentContext!.loc!.show_qr_code,
                    style: AppStyles.text700,
                  ),
                ),
                if (state.file != null)
                  Expanded(
                    flex: 6,
                    child: Image.file(
                      File.fromUri(
                        Uri.parse(state.file?.path ?? ''),
                      ),
                    ),
                  ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 44, vertical: 14),
                  decoration: BoxDecoration(
                    color: Palette.containerBackroundColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    '${state.requestCredit?.maxAmount?.toInt() ?? 0} ${AppConstants.KG_SOM}',
                    style: AppStyles.text32BlueStyle,
                  ),
                ),
                BlocBuilder<QrCodeCubit, QrCodeState>(
                  bloc: cubit,
                  builder: (context, state) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 44, vertical: 14),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: navigatorKey.currentContext!.loc!.use_sum_at_partner),
                          TextSpan(text: state.requestCredit?.partnerName ?? '', style: AppStyles.loanTimeStyle),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Text(
                  context.loc!.qr_code_text,
                  style: const TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
                if (state.requestCredit?.partnerId != 0)
                  TextButton(
                    onPressed: () => cubit.onPartnerAddressPressed(),
                    child: Text(
                      navigatorKey.currentContext!.loc!.address_of_partners,
                      style: AppStyles.titleThinBlueStyle,
                    ),
                  ),
                const Spacer(),
              ],
            ),
          ),
        );
      },
    );
  }
}
