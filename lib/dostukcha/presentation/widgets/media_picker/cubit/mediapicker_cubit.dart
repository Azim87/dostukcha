import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';

import 'mediapicker_state.dart';

class MediapickerCubit extends Cubit<MediapickerState> {
  MediapickerCubit() : super(const MediapickerState());

  Future<void> checkCameraPermission() async {
    final status = await Permission.camera.request();

    if (status.isGranted) {
      emit(state.copyWith(granted: true));
    } else {
      if (status == PermissionStatus.denied) {
        await Permission.camera.request();
      } else {
        if (status == PermissionStatus.permanentlyDenied) {
          emit(state.copyWith(permanentlyDenied: true));
        }
      }
    }
  }

  Future<void> checkGalleryPermission() async {
    final status = await Permission.photos.request();

    if (status.isGranted) {
      emit(state.copyWith(granted: true));
    } else {
      if (status == PermissionStatus.denied) {
        await Permission.photos.request();
      } else {
        if (status == PermissionStatus.permanentlyDenied) {
          emit(state.copyWith(permanentlyDenied: true));
        }
      }
    }
  }
}
