import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../config/di/injection.dart';
import '../../config/shared_prefs/app_prefs.dart';
import '../../config/shared_prefs/shared_keys.dart';

@injectable
class DocumentCubit extends Cubit<bool> {
  DocumentCubit() : super(false);

  Future<void> checkForRequestId() async {
    final prefs = getIt<AppPrefs>();

    final requestId = await prefs.getValue<String>(SharedKeys.REQUEST_ID);

    if (requestId != null)
      emit(true);
    else
      emit(false);
  }
}
