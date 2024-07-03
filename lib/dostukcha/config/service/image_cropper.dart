import 'dart:typed_data';

import 'package:image/image.dart';

import '../../core/logger/logger.dart';

class ImageCropper {
  static Future<Uint8List?> getCroppedImage(
    Uint8List? image, {
    required double aspectRatio,
    required double offsetFactor,
  }) async {
    if (image != null) {
      try {
        final decodedImage = decodeImage(image);

        if (decodedImage != null) {
          final width = decodedImage.width;
          final height = decodedImage.height;

          final newHeight = width ~/ aspectRatio;

          final offset = (height - newHeight) ~/ offsetFactor;

          final croppedImage = copyCrop(
            decodedImage,
            x: 0,
            y: offset,
            width: width,
            height: newHeight,
          );

          return Uint8List.fromList(encodeJpg(croppedImage));
        }
      } catch (err) {
        Logger.error(err.toString());
      }
    }
    return null;
  }
}
