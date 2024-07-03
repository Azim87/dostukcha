import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../config/di/injection.dart';
import '../../config/shared_prefs/app_prefs.dart';
import '../../config/shared_prefs/shared_keys.dart';
import '../../core/logger/logger.dart';
import '../../core/util/constants.dart';

part 'faq_cubit.freezed.dart';

part 'faq_state.dart';

@injectable
class FaqCubit extends Cubit<FaqState> {
  FaqCubit() : super(const FaqState()) {
    getCulture();
  }

  final prefs = getIt<AppPrefs>();

  Future<void> getCulture() async {
    final lang = await prefs.getValue<bool>(SharedKeys.IS_LANG_CHANGED) ?? false;

    if (lang) {
      emit(state.copyWith(url: AppConstants.FAQ_URL_KG));
    } else {
      emit(state.copyWith(url: AppConstants.FAQ_URL_RU));
    }



    Logger.info('state url from cubit ${state.url}');
  }
}
