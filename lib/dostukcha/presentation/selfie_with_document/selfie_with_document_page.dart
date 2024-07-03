import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../main.dart';
import '../../config/di/injection.dart';
import '../../core/logger/logger.dart';
import '../../core/util/utils.dart';
import '../widgets/widgets.dart';
import 'selfie_with_document_cubit.dart';

class SelfieWithDocumentPage extends StatefulWidget {
  const SelfieWithDocumentPage({super.key});

  @override
  State<SelfieWithDocumentPage> createState() => _SelfieWithDocumentPageState();
}

class _SelfieWithDocumentPageState extends State<SelfieWithDocumentPage> with WidgetsBindingObserver {
  late CameraController _controller;

  final bool _isCameraInitialized = false;
  final cubit = getIt<SelfieWithDocumentCubit>();

  Future<void> _initCamera() async {
    _controller = CameraController(
      cameras.last,
      ResolutionPreset.high,
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

  Future<void> onNewCameraSelected(CameraDescription description) async {}

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    _initCamera();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final CameraController cameraController = _controller;

    if (cameraController == null || !cameraController.value.isInitialized) {
      return;
    }

    if (state == AppLifecycleState.inactive) {
      cameraController.dispose();
    } else if (state == AppLifecycleState.resumed) {
      onNewCameraSelected(cameraController.description);
    }
  }

  Future<XFile?> capturePhoto() async {
    final CameraController cameraController = _controller;

    if (cameraController.value.isTakingPicture) {
      return null;
    }

    try {
      await cameraController.setFlashMode(FlashMode.off);
      final XFile file = await cameraController.takePicture();
      return file;
    } on CameraException catch (e) {
      showErrorDialog(context, e.description!, () => null);
      return null;
    }
  }

  Future<void> _onTakeSelfie() async {
    final xFile = await capturePhoto();

    if (xFile != null) {
      cubit.onSendSelfie(xFile);
      Logger.info('x file: ${xFile.path}');
    }
  }

  @override
  Widget build(BuildContext context) => BlocBuilder<SelfieWithDocumentCubit, SelfieWithDocumentState>(
        bloc: cubit,
        builder: (context, state) {
          if (state.loading) {
            return const LoadingPage();
          }

          return Scaffold(
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            floatingActionButton: AppButton(onPressed: _onTakeSelfie, value: true, text: context.loc!.further,),
            body: SafeArea(child: _buildBody()),
          );
        },
      );

  Widget _buildBody() => Stack(
        children: [
          _buildCameraPreview(),
          _buildCameraFrameWithText(),
        ],
      );

  Widget _buildCameraPreview() => Center(child: CameraPreview(_controller));

  Widget _buildCameraFrameWithText() => Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 6,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/selfie_doc.svg',
                  fit: BoxFit.scaleDown,
                  height: 45,
                ),
                Text('${context.loc!.selfie_with_doc_on_hand} 4/5')
              ].withSpaceBetween(height: 10),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 5.5,
            decoration: const BoxDecoration(color: Colors.white),
            child: Text(
              context.loc!.take_a_selfie_with_doc,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      );
}
