import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../config/di/injection.dart';
import '../../config/navigation/nav_strings.dart';
import '../../config/navigation/navigation.dart';
import '../../core/mixin/phone_number_validation_mixin.dart';
import '../../core/util/utils.dart';
import '../widgets/custom_switch.dart';
import '../widgets/widgets.dart';
import 'phone_number_cubit.dart';
import 'phone_number_state.dart';

class PhoneNumberPage extends StatefulWidget {
  const PhoneNumberPage({super.key});

  @override
  State<PhoneNumberPage> createState() => _PhoneNumberPageState();
}

class _PhoneNumberPageState extends State<PhoneNumberPage> with PhoneNumberValidationMixin {
  final _phoneNumberCubit = getIt<PhoneNumberCubit>();

  @override
  Widget build(BuildContext context) => BlocBuilder<PhoneNumberCubit, PhoneNumberState>(
        bloc: _phoneNumberCubit,
        builder: (context, state) {
          if (state.loading) {
            return const LoadingPage();
          }

          if (state.error != null) {
            return BlurErrorWidget(errorText: state.error!);
          }

          return Scaffold(
            body: Stack(
              children: [
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        const SizedBox(height: 22),
                        SvgPicture.asset(Assets.logo),
                        Expanded(child: Container()),
                        _buildPhoneNumberTextSection(),
                        const SizedBox(height: 12),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildCountryCode(),
                            const SizedBox(width: 10),
                            _buildPhoneNumber(state),
                          ],
                        ),
                        const SizedBox(height: 32),
                        _buildPrivacyPolicy(state),
                        const SizedBox(height: 20),
                        _buildPrivateData(state),
                        Expanded(child: Container()),
                        _buildNextButton(state),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );

  Widget _buildPrivateData(PhoneNumberState state) => Row(
        children: [
          CustomSwitch(
            value: state.isPrivateData,
            onChanged: (val) => _phoneNumberCubit.onPrivateDataCollectionChanged(val),
          ),
          Expanded(
              child: GestureDetector(
            onTap: () => Navigation.route.goRouter.pushNamed(Navs.private_data),
            child: Text(
              context.loc!.phone_number_personal_data,
              style: const TextStyle(decoration: TextDecoration.underline, color: Palette.appBlue),
            ),
          ))
        ].withSpaceBetween(width: 10),
      );

  Widget _buildPrivacyPolicy(PhoneNumberState state) => Row(
        children: [
          CustomSwitch(
            value: state.isPrivacyPolicy,
            onChanged: (val) => _phoneNumberCubit.onPrivacyPolicyValChanged(val),
          ),
          GestureDetector(
            onTap: () => Navigation.route.goRouter.pushNamed(Navs.privacy_policy),
            child: Text(
              context.loc!.phone_number_privacy_policy,
              style: const TextStyle(decoration: TextDecoration.underline, color: Palette.appBlue),
            ),
          )
        ].withSpaceBetween(width: 10),
      );

  Widget _buildPhoneNumberTextSection() => ListTile(
        title: Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Text(
            context.loc!.type_your_phone_number,
            style: AppStyles.titleStyle,
          ),
        ),
        subtitle: Text(
          context.loc!.phone_number_subtitle_text,
          style: AppStyles.subtitleStyle,
        ),
      );

  Widget _buildPhoneNumber(PhoneNumberState state) => Expanded(
        flex: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                color: Palette.containerBackroundColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextFormField(
                textAlign: TextAlign.left,
                keyboardType: TextInputType.phone,
                inputFormatters: [maskFormatter],
                onChanged: (val) => _phoneNumberCubit.validate(val),
                decoration: const InputDecoration(
                  hintText: Strings.phoneNumberHint,
                  border: InputBorder.none,
                ),
              ),
            ),
            if (state.errorPhoneNumber != null)
              Text(
                state.errorPhoneNumber!,
                style: const TextStyle(color: Colors.red, fontSize: 10),
              ),
            if (state.errorPhoneCode != null)
              Text(
                state.errorPhoneCode!,
                style: const TextStyle(color: Colors.red, fontSize: 10),
              )
          ],
        ),
      );

  Widget _buildCountryCode() => Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: Palette.containerBackroundColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: TextFormField(
            enabled: false,
            initialValue: AppConstants.COUNTRY_CODE,
            textAlign: TextAlign.center,
            decoration: const InputDecoration(border: InputBorder.none),
          ),
        ),
      );

  Widget _buildNextButton(PhoneNumberState state) => AppButton(
        horizontalPadding: 0,
        text: Strings.next.toUpperCase(),
        value: _phoneNumberCubit.validLength && state.isPrivateData && state.isPrivacyPolicy,
        onPressed: () => _phoneNumberCubit.onNextPressed(maskFormatter.getUnmaskedText()),
      );
}
