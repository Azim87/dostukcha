import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../../config/di/injection.dart';
import '../../core/util/assets.dart';
import '../widgets/loading.dart';
import 'splash_cubit.dart';
import 'splash_state.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final cubit = getIt<SplashCubit>();

  @override
  void initState() {
    super.initState();
    getHomePage();

    cubit.checkIsClientAuthenticated();

    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom],
    );
  }

  void getHomePage() => FlutterNativeSplash.remove();

  @override
  Widget build(BuildContext context) => BlocBuilder<SplashCubit, SplashState>(
        bloc: cubit,
        builder: (context, state) {
          if (state.loading) {
            return const LoadingPage();
          }

          return Scaffold(
            body: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage(Assets.appLogoAnim),
                ),
              ),
            ),
          );
        },
      );
}
