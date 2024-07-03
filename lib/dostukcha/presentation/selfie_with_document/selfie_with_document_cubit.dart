import 'package:camera/camera.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../config/navigation/nav_strings.dart';
import '../../config/navigation/navigation.dart';
import '../../core/util/utils.dart';
import '../../data/endpoints.dart';
import '../../domain/repository/upload_file_parse_repository.dart';

part 'selfie_with_document_cubit.freezed.dart';

part 'selfie_with_document_state.dart';

@injectable
class SelfieWithDocumentCubit extends Cubit<SelfieWithDocumentState> {
  SelfieWithDocumentCubit(this.uploadFileParseRepository) : super(const SelfieWithDocumentState());

  final UploadFileParseRepository uploadFileParseRepository;

  Future<void> onSendSelfie(XFile xFile) async {
    _showLoading();

    final either = await uploadFileParseRepository.uploadFile(file: await xFile.readAsBytes(), uploadFileType: UploadFileType.SelfieWithDocument);

    _hideLoading();

    either.fold(
      (error) => showNetworkErrorAlertDialog(errorMessage: error, callback: () {}, endpoint: Endpoints.uploadFile),
      (success) {
        if (success.errorCode != 0) {
          showNetworkErrorAlertDialog(errorMessage: success.message ?? '', callback: () {}, endpoint: Endpoints.uploadFile);
        } else {
          Navigation.route.goRouter.go(Navs.contact);
        }
      },
    );
  }

  void _showLoading() => emit(state.copyWith(loading: true));

  void _hideLoading() => emit(state.copyWith(loading: false));
}
