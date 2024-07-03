import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../main.dart';
import '../../config/di/injection.dart';
import '../../core/logger/logger.dart';
import '../../core/util/utils.dart';
import '../widgets/app_button.dart';
import '../widgets/loading.dart';
import 'passport_scan_cubit.dart';
import 'passport_scan_state.dart';

enum PassportStatus { FRONT, BACK }

class PassportPage extends StatefulWidget {
  const PassportPage({super.key});

  @override
  State<PassportPage> createState() => _PassportPageState();
}

class _PassportPageState extends State<PassportPage> {
  late CameraController _controller;
  final cubit = getIt<PassportScanCubit>();

  @override
  void initState() {
    super.initState();

    _controller = CameraController(
      cameras[0],
      ResolutionPreset.medium,
      imageFormatGroup: ImageFormatGroup.jpeg,
      enableAudio: false,
    );

    _controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  Future<void> dispose() async {
    super.dispose();
    await _controller.dispose();
  }

  @override
  Widget build(BuildContext context) => BlocBuilder<PassportScanCubit, PassportScanState>(
      bloc: cubit,
      builder: (context, state) {
        if (state.loading) {
          return const LoadingPage();
        }

        return Scaffold(
          body: SafeArea(
            child: Stack(
              children: [
                Center(child: CameraPreview(_controller)),
                Positioned(
                  top: 0,
                  bottom: 0,
                  left: 5,
                  right: 5,
                  child: SvgPicture.asset(
                    Assets.border,
                    width: 320,
                  ),
                ),
                Positioned(top: 73, bottom: 73, left: 5, right: 5, child: SvgPicture.asset(Assets.rectangle)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 3.5,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 3.5,
                      decoration: const BoxDecoration(color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(height: 40),
                    Image.asset(Assets.passortIcon, height: 54),
                    const SizedBox(height: 20),
                    if (state.scanLength != 3) Text('${context.loc!.passport_scan} ${state.scanLength}/${PassportStatus.values.length}'),
                    const Spacer(),
                    Text(_getPassportStatusLabel(state.passportStatus)),
                    const SizedBox(height: 20),
                    AppButton(
                      onPressed: () async {
                        await Future.delayed(const Duration(seconds: 1));
                        cubit.showLoading();
                        capturePicture(_controller);
                      },
                      value: true,
                      text: context.loc!.passport_scan_button_text,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      });

  String _getPassportStatusLabel(PassportStatus passportStatus) {
    final labels = {
      PassportStatus.BACK: context.loc!.passport_scan_back,
      PassportStatus.FRONT: context.loc!.passport_scan_front,
    };
    return labels[passportStatus] ?? '';
  }

  Future<void> capturePicture(CameraController controller) async {
    if (!controller.value.isInitialized) {
      return;
    }

    try {
      controller.setFlashMode(FlashMode.off);
      controller.setFocusMode(FocusMode.locked);

      await cubit.takePicture(await controller.takePicture());
    } catch (e) {
      Logger.info('camera exception: $e');
    }
  }
}
