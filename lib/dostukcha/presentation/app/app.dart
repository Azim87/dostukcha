import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../../config/di/injection.dart';
import '../../config/navigation/navigation.dart';
import '../../core/util/constants.dart';
import 'app_cubit.dart';
import 'app_state.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
  }

  final navigation = Navigation.route;

  final appCubit = getIt<AppCubit>();

  @override
  Widget build(BuildContext context) => BlocBuilder<AppCubit, AppState>(
        bloc: appCubit,
        builder: (context, state) => MaterialApp.router(
          theme: ThemeData(useMaterial3: false),
          debugShowCheckedModeBanner: false,
          title: AppConstants.APP_NAME,
          locale: !state.isLangChanged ? const Locale(AppConstants.RUS) : const Locale(AppConstants.KGZ),
          routerConfig: navigation.goRouter,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: AppLocalizations.supportedLocales,
        ),
      );
}
