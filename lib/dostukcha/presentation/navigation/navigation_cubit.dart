import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../config/di/injection.dart';
import '../../config/shared_prefs/app_prefs.dart';
import '../../config/shared_prefs/shared_keys.dart';
import '../calculator/calculator_page.dart';
import '../document/document_page.dart';
import '../gr_code/gr_code_page.dart';
import '../profile/profile_page.dart';
import '../profile_with_loan/profile_with_loan_page.dart';
import '../support/faq_web_view_page.dart';
import 'navigation_state.dart';

@injectable
class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(const NavigationState(pages: []));

  final prefs = getIt<AppPrefs>();

  Future<void> setNavigationPages() async {
    final clientId = await prefs.getValue<int>(SharedKeys.CLIENT_ID) ?? 0;
    final isQrCode = await prefs.getValue<bool>(SharedKeys.QR_CODE) ?? false;
    final isActiveCredit = await prefs.getValue<bool>(SharedKeys.ACTIVE_CREDIT) ?? false;

    if (clientId > 0) {
      emit(state.copyWith(
        pages: [
          const CalculatorPage(),
          const ProfilePage(),
          const DocumentPage(),
          FaqWebViewPage(),
        ],
        isClientIdExist: true,
      ));

      if (isQrCode) {
        emit(state.copyWith(
          pages: [
            const QrCodePage(),
            const ProfilePage(),
            const DocumentPage(),
            FaqWebViewPage(),
          ],
          isQrCodeExist: true,
        ));
      }

      if (isActiveCredit) {
        emit(state.copyWith(
          pages: [
            const ProfileWithLoanPage(),
            const ProfilePage(),
            const DocumentPage(),
            FaqWebViewPage(),
          ],
          isActiveCredit: true,
        ));
      }
    } else {
      emit(state.copyWith(pages: [
        const CalculatorPage(),
        const DocumentPage(),
        FaqWebViewPage(),
      ]));
    }

    // final pages = [
    //   const CalculatorPage(),
    //   const DocumentPage(),
    //   FaqWebViewPage(),
    // ];
    //
    // if (clientId > 0) {
    //   pages.insert(1, const ProfilePage());
    // }
    //
    // if (isQrCode) {
    //   pages[0] = const QrCodePage();
    // }
    //
    // if (isActiveCredit) {
    //   pages[0] = const ProfileWithLoanPage();
    // }
    //
    // emit(state.copyWith(
    //   pages: pages,
    //   isClientIdExist: clientId > 0,
    //   isQrCodeExist: isQrCode,
    //   isActiveCredit: isActiveCredit,
    // ));
  }
}
