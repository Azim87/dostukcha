import 'package:camera/camera.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../config/di/injection.dart';
import '../../config/navigation/nav_strings.dart';
import '../../config/navigation/navigation.dart';
import '../../config/service/image_cropper.dart';
import '../../config/shared_prefs/app_prefs.dart';
import '../../config/shared_prefs/shared_keys.dart';
import '../../core/util/constants.dart';
import '../../core/util/enums.dart';
import '../../core/util/globals.dart';
import '../../data/endpoints.dart';
import '../../domain/repository/upload_file_parse_repository.dart';
import 'passport_page.dart';
import 'passport_scan_state.dart';

@injectable
class PassportScanCubit extends Cubit<PassportScanState> {
  PassportScanCubit(this.uploadFileParseRepository) : super(const PassportScanState(scanLength: 1));

  final UploadFileParseRepository uploadFileParseRepository;
  final prefs = getIt<AppPrefs>();

  Future<void> takePicture(XFile file) async {
    bool shouldUpload = false;

    switch (state.passportStatus) {
      case PassportStatus.BACK:
        await uploadDocMRZPhoto(file);
        shouldUpload = true;
        break;
      case PassportStatus.FRONT:
        await uploadFile(file);
        shouldUpload = true;
        break;
    }

    if (!shouldUpload) {
      return;
    }

    final bool _scanError = await prefs.getValue(SharedKeys.SCAN_ERROR) ?? false;

    if (_scanError) {
      await uploadDocMRZPhoto(file);
      Navigation.route.goRouter.go(Navs.is_can_client_get);
    }
  }

  Future<void> uploadDocMRZPhoto(XFile backFile) async {
    final photoCropped = await ImageCropper.getCroppedImage(
      await backFile.readAsBytes(),
      aspectRatio: AppConstants.ASPECT_RATIO,
      offsetFactor: AppConstants.OFFSET_FACTOR,
    );
    // final photoCropped = await _getCroppedPhoto(backFile);
    final either = await uploadFileParseRepository.uploadDocMRZPhoto(backFile: photoCropped!);

    hideLoading();

    either.fold(
      (error) {
        showNetworkErrorAlertDialog(
          errorMessage: error,
          callback: () => null,
          endpoint: Endpoints.uploadDocMRZPhoto,
        );
      },
      (r) {
        if (r.errorCode != 0) {
          showNetworkErrorAlertDialog(
              errorMessage: r.message!,
              callback: () {
                Navigation.route.goRouter.go(Navs.passport);
                emit(state.copyWith(scanLength: 1));
              },
              endpoint: Endpoints.uploadDocMRZPhoto);
        } else {
          _cacheClientId(r.data?.clientId ?? 0);
          emit(state.copyWith.call(scanLength: state.scanLength + 1, passportStatus: PassportStatus.FRONT));
        }
      },
    );
  }

  Future<void> uploadFile(XFile frontFile) async {
    final either = await uploadFileParseRepository.uploadFile(file: await frontFile.readAsBytes(), uploadFileType: UploadFileType.Document);

    hideLoading();

    either.fold(
      (error) => showNetworkErrorAlertDialog(
        errorMessage: error,
        callback: () => null,
        endpoint: Endpoints.uploadFile,
      ),
      (r) {
        if (r.errorCode != 0) {
          showNetworkErrorAlertDialog(
              errorMessage: r.message!, callback: () => Navigation.route.goRouter.push(Navs.passport), endpoint: Endpoints.uploadFile);
        } else if (r.errorCode == -1) {
          showNetworkErrorAlertDialog(errorMessage: r.message!, callback: () => null, endpoint: Endpoints.uploadFile);
        }
        Navigation.route.goRouter.go(Navs.navigation);
      },
    );
  }

  Future<void> _cacheClientId(int clientId) async => prefs.setValue<int>(SharedKeys.CLIENT_ID, clientId);

  // Future<Uint8List?> _getCroppedImage(Uint8List? image) async {
  //   if (image != null) {
  //     final decodedImage = decodeImage(image);
  //
  //     if (decodedImage != null) {
  //       final width = decodedImage.width;
  //       final height = decodedImage.height;
  //
  //       final newHeight = (width / 4 * 3).toInt();
  //
  //       final offset = (height - newHeight) ~/ 2.1;
  //
  //       final croppedImage = copyCrop(
  //         decodedImage,
  //         x: 0,
  //         y: offset,
  //         width: width,
  //         height: newHeight,
  //       );
  //
  //       return Uint8List.fromList(encodeJpg(croppedImage));
  //     }
  //   }
  //   return null;
  // }

  void showLoading() => emit(state.copyWith(loading: true));

  void hideLoading() => emit(state.copyWith(loading: false));

//Future<Uint8List?> _getCroppedPhoto(XFile photo) async => ImageCropper.getCroppedImage(await photo.readAsBytes());
}
