import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../config/di/injection.dart';
import '../../config/navigation/nav_strings.dart';
import '../../config/navigation/navigation.dart';
import '../../config/shared_prefs/app_prefs.dart';
import '../../config/shared_prefs/shared_keys.dart';
import 'app_state.dart';

@lazySingleton
class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState()) {
    getLangStateFromCache();
  }

  final _prefs = getIt<AppPrefs>();

  Future<void> onLangChange(bool isLangChanged) async {
    await _prefs.setValue<bool>(SharedKeys.IS_LANG_CHANGED, isLangChanged);

    emit(state.copyWith.call(isLangChanged: isLangChanged));
    _navigateTo();
  }

  Future<void> getLangStateFromCache() async =>
      emit(state.copyWith.call(isLangChanged: await _prefs.getValue<bool>(SharedKeys.IS_LANG_CHANGED) ?? false));

  void _navigateTo() => Navigation.route.goRouter.push(Navs.onboarding);
}
