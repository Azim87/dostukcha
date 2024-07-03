import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

import '../../presentation/calculator/calculator_page.dart';
import '../../presentation/contacts/contact_page.dart';
import '../../presentation/create_request/create_request_page.dart';
import '../../presentation/credit_withdrawal/credit_withdrawal_detail.dart';
import '../../presentation/credit_withdrawal/credit_withdrawal_page.dart';
import '../../presentation/gr_code/gr_code_page.dart';
import '../../presentation/is_can_client_get/is_can_cleint_get_page.dart';
import '../../presentation/language/select_lang_page.dart';
import '../../presentation/liveness/liveness_page.dart';
import '../../presentation/loan_contract/loan_contract_page.dart';
import '../../presentation/loan_history/loan_history_check/loan_history_check_page.dart';
import '../../presentation/loan_history/loan_history_page.dart';
import '../../presentation/loan_sign/loan_sign_page.dart';
import '../../presentation/navigation/navigation_page.dart';
import '../../presentation/onboard/onboard_page.dart';
import '../../presentation/operator_await/operator_answer_await_page.dart';
import '../../presentation/partners/partner_list/partners_list_page.dart';
import '../../presentation/partners/partners_map/partners_on_map_page.dart';
import '../../presentation/partners/partners_page.dart';
import '../../presentation/passport_scan/passport_page.dart';
import '../../presentation/personal_data_consent/personal_data_consent_page.dart';
import '../../presentation/personal_data_consent/personal_data_web_view/personal_data_webview_page.dart';
import '../../presentation/phone_number/phone_number_page.dart';
import '../../presentation/preliminary_check/preliminary_check_page.dart';
import '../../presentation/privacy_policy/privacy_policy_page.dart';
import '../../presentation/private_data/private_data_page.dart';
import '../../presentation/profile/profile_page.dart';
import '../../presentation/profile_with_loan/profile_with_loan_page.dart';
import '../../presentation/repayment_method/repayment_method_info/repayment_method_info_page.dart';
import '../../presentation/repayment_method/repayment_method_page.dart';
import '../../presentation/selfie_with_document/selfie_with_document_page.dart';
import '../../presentation/sms_code/sms_code_page.dart';
import '../../presentation/splash/splash_page.dart';
import '../../presentation/support/faq_web_view_page.dart';
import '../../presentation/verification/main_verification.dart';
import '../../presentation/widgets/loan_approved_widget.dart';
import '../di/injection.dart';
import '../shared_prefs/app_prefs.dart';
import '../shared_prefs/shared_keys.dart';
import 'nav_strings.dart';
import 'navigation_observer.dart';

final navigatorKey = GlobalKey<NavigatorState>();
final _prefs = getIt<AppPrefs>();

@singleton
class AppRouter {
  final goRouter = GoRouter(
    observers: [NavigationObserver()],
    navigatorKey: navigatorKey,
    routes: [
      GoRoute(
        path: Navs.root,
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: Navs.select_lang,
        builder: (context, state) => SelectLangPage(),
        redirect: (context, state) async {
          if (await _prefs.getValue<bool>(SharedKeys.ONBOARD_KEY) ?? false) {
            return Navs.phone_number;
          }
          return null;
        },
      ),
      GoRoute(
        path: Navs.onboarding,
        builder: (context, state) => const OnboardPage(),
      ),
      GoRoute(
        path: Navs.phone_number,
        builder: (context, state) => const PhoneNumberPage(),
        routes: [
          GoRoute(
            name: Navs.privacy_policy,
            path: Navs.privacy_policy,
            builder: (context, state) => const PrivacyPolicyPage(),
          ),
          GoRoute(
            name: Navs.private_data,
            path: Navs.private_data,
            builder: (context, state) => const PrivateDataPage(),
          ),
          GoRoute(
            name: Navs.sms_code,
            path: '${Navs.sms_code}/:unmaskedPhoneNumber/:phoneNumber',
            builder: (context, state) => SmsCodePage(
              phoneNumber: state.pathParameters['phoneNumber']!,
              unmaskedPhoneNumber: state.pathParameters['unmaskedPhoneNumber']!,
            ),
          ),
        ],
      ),
      GoRoute(
        path: Navs.main_credit_calculator,
        builder: (context, state) => const CalculatorPage(),
      ),
      GoRoute(
        path: Navs.main_ver,
        builder: (context, state) => const MainVerificationPage(),
      ),
      GoRoute(
        path: Navs.contact,
        builder: (context, state) => const ContactPage(),
      ),
      GoRoute(
        path: Navs.navigation,
        builder: (context, state) => const NavigationPage(),
      ),
      GoRoute(
        path: Navs.passport,
        builder: (context, state) => const PassportPage(),
      ),
      GoRoute(
        path: '${Navs.partners}/:partnerId/:expired_time',
        name: Navs.partners,
        builder: (context, state) => PartnersPage(
          partnerId: state.pathParameters['partnerId']!,
          expiredTime: state.pathParameters['expired_time']!,
        ),
      ),
      GoRoute(
        path: '${Navs.partners_list}/:expired_time',
        name: Navs.partners_list,
        builder: (context, state) => PartnersListPage(
          expiredTime: state.pathParameters['expired_time']!,
        ),
      ),
      GoRoute(
        name: Navs.partners_map,
        path: '${Navs.partners_map}/:partnerId',
        builder: (context, state) {
          final isFromQrPage = (state.extra ?? false) as bool;

          return PartnersOnMapPage(
            partnerId: state.pathParameters['partnerId']!,
            isFromQrPage: isFromQrPage,
          );
        },
      ),
      GoRoute(
        path: Navs.credit_withdrawal,
        builder: (context, state) => const CreditWithdrawalPage(),
      ),
      GoRoute(
        path: Navs.liveness,
        builder: (context, state) => const LivenessPage(),
      ),
      GoRoute(
        path: Navs.loan_approve,
        builder: (context, state) => const LoanApprovePage(),
      ),
      GoRoute(
        path: Navs.loan_sign,
        name: Navs.loan_sign,
        builder: (context, state) => const LoanAgreementSignPage(),
      ),
      GoRoute(
        path: Navs.qr_code,
        builder: (context, state) => const QrCodePage(),
      ),
      GoRoute(
        path: Navs.is_can_client_get,
        builder: (context, state) => const IsCanClientGetPage(),
      ),
      GoRoute(
        path: Navs.profile_with_loan,
        builder: (context, state) => const ProfileWithLoanPage(),
      ),
      GoRoute(
        path: Navs.preliminary_check,
        builder: (context, state) => const PreliminaryCheckPage(),
      ),
      GoRoute(
        path: Navs.profile,
        builder: (context, state) => const ProfilePage(),
      ),
      GoRoute(
        path: '${Navs.contract}/:request_id',
        name: Navs.contract,
        builder: (context, state) => LoanContractPage(
          requestId: state.pathParameters['request_id']!,
        ),
      ),
      GoRoute(
        path: Navs.loanHistory,
        builder: (context, state) => const LoanHistoryPage(),
        routes: [
          GoRoute(
              path: '${Navs.loanHistoryCheck}/:creditId',
              name: Navs.loanHistoryCheck,
              builder: (context, state) => LoanHistoryCheckPage(creditId: state.pathParameters['creditId']!))
        ],
      ),
      GoRoute(
        path: Navs.repayment_method,
        name: Navs.repayment_method,
        builder: (context, state) => const RepaymentMethodPage(),
      ),
      GoRoute(
        path: Navs.repayment_method_info,
        name: Navs.repayment_method_info,
        builder: (context, state) => const RepaymentMethodInfoPage(),
      ),
      GoRoute(
        name: Navs.credit_withdrawal_detail,
        path: '${Navs.credit_withdrawal_detail}/:title/:assetImage',
        builder: (context, state) =>
            CreditWithdrawalDetailPage(title: state.pathParameters['title']!, assetImage: state.pathParameters['assetImage']!),
      ),
      GoRoute(
        path: Navs.personal_data_consent_page,
        name: Navs.personal_data_consent_page,
        builder: (context, state) => PersonalDataConsentPage(),
      ),
      GoRoute(
        path: Navs.faq_web_view,
        name: Navs.faq_web_view,
        builder: (context, state) => FaqWebViewPage(),
      ),
      GoRoute(
        path: Navs.personal_data,
        name: Navs.personal_data,
        builder: (context, state) => PersonalDataWebViewPage(
          culture: (state.extra ?? false) as bool,
        ),
      ),
      GoRoute(
        name: Navs.operator_await,
        path: '${Navs.operator_await}/:expired_time',
        builder: (context, state) => OperatorAnswerAwaitPage(expiredTime: state.pathParameters['expired_time']!),
      ),
      GoRoute(
        path: Navs.selfie_with_doc,
        name: Navs.selfie_with_doc,
        builder: (context, state) => const SelfieWithDocumentPage(),
      ),
      GoRoute(
        path: '${Navs.create_request}/:selectedSum/:selectedDays',
        name: Navs.create_request,
        builder: (context, state) => CreateRequestPage(
          selectedSum: state.pathParameters['selectedSum']!,
          selectedDays: state.pathParameters['selectedDays']!,
        ),
      )
    ],
  );
}
