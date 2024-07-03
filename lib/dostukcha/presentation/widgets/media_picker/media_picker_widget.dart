// // ignore_for_file: use_build_context_synchronously
//
// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
// import 'package:image_cropper/image_cropper.dart';
// import 'package:image_picker/image_picker.dart';
//
// import '../../../config/navigation/navigation.dart';
// import '../../../core/logger/logger.dart';
// import '../../../core/util/constants.dart';
//
// class MediaPickerWidget extends StatelessWidget {
//   const MediaPickerWidget({super.key});
//
//   Future<void> _getMediaFromCamera() async {
//     Navigation.route.goRouter.pop(true);
//
//     final ImagePicker _picker = ImagePicker();
//
//     final XFile? photo = await _picker.pickImage(
//       imageQuality: AppConstants.IMAGE_QUALITY,
//       source: ImageSource.camera,
//       maxHeight: 1200,
//       maxWidth: 1200,
//     );
//
//     if (photo != null) {
//       final photoFile = File(photo.path);
//       _cropImage(photoFile);
//     }
//   }
//
//   Future<void> _getMediaFromGallery() async {
//     Navigation.route.goRouter.pop(true);
//
//     final ImagePicker _picker = ImagePicker();
//
//     final XFile? photo = await _picker.pickImage(
//       source: ImageSource.gallery,
//       imageQuality: AppConstants.IMAGE_QUALITY,
//       maxHeight: 1200,
//       maxWidth: 1200,
//     );
//
//     if (photo != null) {
//       final photoFile = File(photo.path);
//       _cropImage(photoFile);
//     }
//   }
//
//   Future<void> _cropImage(File photoFile) async {
//     try {
//       if (photoFile != null) {
//         final croppedFile = await ImageCropper().cropImage(
//           sourcePath: photoFile.path,
//           compressQuality: 0,
//           aspectRatioPresets: Platform.isAndroid
//               ? [
//                   CropAspectRatioPreset.square,
//                   CropAspectRatioPreset.ratio3x2,
//                   CropAspectRatioPreset.original,
//                   CropAspectRatioPreset.ratio4x3,
//                   CropAspectRatioPreset.ratio16x9
//                 ]
//               : [
//                   CropAspectRatioPreset.original,
//                   CropAspectRatioPreset.square,
//                   CropAspectRatioPreset.ratio3x2,
//                   CropAspectRatioPreset.ratio4x3,
//                   CropAspectRatioPreset.ratio5x3,
//                   CropAspectRatioPreset.ratio5x4,
//                   CropAspectRatioPreset.ratio7x5,
//                   CropAspectRatioPreset.ratio16x9
//                 ],
//           uiSettings: [
//             AndroidUiSettings(
//               toolbarTitle: 'Cropper',
//               toolbarColor: Colors.deepOrange,
//               toolbarWidgetColor: Colors.white,
//               initAspectRatio: CropAspectRatioPreset.original,
//               lockAspectRatio: false,
//             ),
//             IOSUiSettings(
//               title: 'Cropper',
//             )
//           ],
//         );
//
//         if (photoFile != null) {
//           debugPrint(croppedFile?.path);
//           _readTextFromImage(croppedFile!.path);
//         }
//       }
//     } catch (error) {
//       Logger.error('Crop image', errorMsg: error.toString());
//     }
//   }
//
//   Future<void> _readTextFromImage(String imagePath) async {
//     try {
//       final textDetector = TextRecognizer();
//
//       final inputImage = InputImage.fromFilePath(imagePath);
//
//       final text = await textDetector.processImage(inputImage);
//
//       final listString = <String>[];
//
//       for (final TextBlock bloc in text.blocks) {
//         for (final TextLine line in bloc.lines) {
//           final formatted = line.text.replaceAll(RegExp(r'[^\w\s]+'), '');
//
//           final parsed = formatted.replaceAll(' ', '');
//
//           // listString.add(parsed);
//           listString.add(parsed);
//         }
//       }
//
//       Logger.info('_______$listString');
//     } catch (error) {
//       Logger.error('read text from image: $error');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) => Column(
//         children: [
//           ElevatedButton(
//             onPressed: () async {
//               showDialog(
//                 context: context,
//                 builder: (_) => AlertDialog(
//                   title: const Text('Select'),
//                   actions: [
//                     TextButton(
//                         onPressed: _getMediaFromCamera,
//                         child: const Text('Camera')),
//                     TextButton(
//                         onPressed: _getMediaFromGallery,
//                         child: const Text('Gallery')),
//                   ],
//                 ),
//               );
//             },
//             child: const Text('Select Media'),
//           ),
//         ],
//       );
// }
