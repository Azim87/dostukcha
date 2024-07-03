import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../config/di/injection.dart';
import '../../config/navigation/app_router.dart';
import '../../config/navigation/nav_strings.dart';
import '../../config/navigation/navigation.dart';
import '../../config/shared_prefs/app_prefs.dart';
import '../../config/shared_prefs/shared_keys.dart';
import '../../core/util/utils.dart';
import '../private_data/private_data_page.dart';
import '../widgets/app_button.dart';

class PartnersPage extends StatelessWidget {
  const PartnersPage({super.key, required this.partnerId, required this.expiredTime});

  final String partnerId;
  final String expiredTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Palette.containerBackroundColor,
        bottomNavigationBar: _buildButton(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                children: [
                  BackPressWidget(onTap: () => Navigation.route.goRouter.pop()),
                  _buildPartnerLogo(),
                  _buildPartnerDescription(),
                  _buildPartnerImages(),
                  _buildPartnerAddress(),
                  _buildTimeText(),
                ].withSpaceTopAndBetween(height: 20),
              ),
            ),
          ),
        ));
  }

  Widget _buildPartnerLogo() => Image.asset(Assets.partner_logo, height: 80);

  Widget _buildPartnerDescription() => Text(
        navigatorKey.currentContext.loc!.partners_description,
        textAlign: TextAlign.center,
      );

  Widget _buildPartnerImages() => Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Image.asset(Assets.partner_img1)),
              Expanded(child: Image.asset(Assets.partner_img2)),
            ].withSpaceBetween(width: 16),
          ),
          Image.asset(Assets.partner_img3),
        ].withSpaceBetween(height: 20),
      );

  Widget _buildTimeText() => Text(
        navigatorKey.currentContext.loc!.partners_use_time(DateFormat('dd.MM.yyy hh:mm').format(DateTime.parse(expiredTime))),
        textAlign: TextAlign.center,
      );

  Widget _buildPartnerAddress() => GestureDetector(
        onTap: () => Navigation.route.goRouter.pushNamed(Navs.partners_map, pathParameters: {'partnerId': partnerId}),
        child: Text(
          navigatorKey.currentContext.loc!.address_of_partners,
          textAlign: TextAlign.center,
          style: AppStyles.titleThinBlueStyle,
        ),
      );

  Widget _buildButton() => AppButton(
        onPressed: () => cachePartnerId().whenComplete(() => Navigation.route.goRouter.pushNamed(Navs.loan_sign)),
        value: true,
        horizontalPadding: 32,
        text: navigatorKey.currentContext.loc!.get,
      );

  Future<void> cachePartnerId() async {
    final prefs = getIt<AppPrefs>();
    prefs.setValue<int>(SharedKeys.PARTNER_ID, int.tryParse(partnerId) ?? 0);
  }
}
