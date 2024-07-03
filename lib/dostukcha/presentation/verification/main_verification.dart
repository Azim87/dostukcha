import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../config/navigation/nav_strings.dart';
import '../../config/navigation/navigation.dart';
import '../../core/util/utils.dart';
import '../widgets/widgets.dart';

class MainVerificationPage extends StatelessWidget {
  const MainVerificationPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Palette.white,
        body: FutureBuilder<PermissionStatus>(
          future: Permission.camera.request(),
          builder: (context, snapshot) {
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  children: [
                    const SizedBox(height: 22),
                    SvgPicture.asset(Assets.logo),
                    const Spacer(),
                    const Image(image: AssetImage(Assets.identity)),
                    const Spacer(),
                    Text(
                      context.loc!.main_verification_pass_identification,
                      style: AppStyles.verificationTitleStyle,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      context.loc!.main_verification_pass_liveness,
                      style: AppStyles.verificationSubTitleStyle,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 40),
                    AppButton(
                      onPressed: () => Navigation.route.goRouter.push(Navs.passport),
                      value: true,
                      text: context.loc!.start,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      );
}
