import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../config/di/injection.dart';
import '../../config/navigation/app_router.dart';
import '../../config/navigation/nav_strings.dart';
import '../../config/navigation/navigation.dart';
import '../../config/shared_prefs/app_prefs.dart';
import '../../config/shared_prefs/shared_keys.dart';
import '../../core/util/utils.dart';
import '../../data/endpoints.dart';
import '../../domain/repository/upload_file_parse_repository.dart';
import 'liveness_state.dart';

@injectable
class LivenessCubit extends Cubit<LivenessState> {
  LivenessCubit(this.uploadFileParseRepository) : super(const LivenessState());

  final UploadFileParseRepository uploadFileParseRepository;
  final prefs = getIt<AppPrefs>();

  Future<void> startLiveness() async {
    final culture = await prefs.getValue<bool>(SharedKeys.IS_LANG_CHANGED) ?? false;

    final dataToPass = <String, dynamic>{
      'culture': culture ? 'kg' : 'ru',
    };

    const livenessMethodChannel = MethodChannel(AppConstants.LIVENESS_METHOD_CHANNEL);
    final result = await livenessMethodChannel.invokeMethod(AppConstants.LIVENESS_METHOD, dataToPass);
    final List<Object?> rawResult = result as List<Object?>;
    final List<int> resultBytes = rawResult.cast<int>().toList();
    final Uint8List fileData = Uint8List.fromList(resultBytes);

    if (result != null) {
      await _uploadLivenessFile(fileData);
    } else {
      showErrorDialog(navigatorKey.currentContext!, navigatorKey.currentContext.loc!.liveness_error, () => startLiveness());
    }
  }

  Future<void> _uploadLivenessFile(Uint8List fileData) async {
    _showLoading();

    final either = await uploadFileParseRepository.uploadFile(file: fileData, uploadFileType: UploadFileType.Selfie);

    _hideLoading();

    either.fold(
      (error) => showNetworkErrorAlertDialog(
        errorMessage: error,
        callback: () {},
        endpoint: Endpoints.uploadFile,
      ),
      (r) async {
        if (r.errorCode != 0) {
          showNetworkErrorAlertDialog(errorMessage: r.message!, callback: () => null, endpoint: Endpoints.uploadFile);
        }

        await cacheClientId(r.message!);
        Navigation.route.goRouter.go(Navs.selfie_with_doc);
      },
    );
  }

  Future<void> cacheClientId(String clientId) async {
    final _clientId = int.parse(clientId);
    await prefs.setValue(SharedKeys.CLIENT_ID, _clientId);
  }

  void _showLoading() => emit(state.copyWith.call(loading: true));

  void _hideLoading() => emit(state.copyWith.call(loading: false));
}
