import '../../config/navigation/app_router.dart';
import '../../core/util/utils.dart';

class OnboardModel {
  const OnboardModel(
    this.title,
    this.subtitle,
    this.gifPath,
  );

  final String title;
  final String subtitle;
  final String gifPath;
}

List<OnboardModel> OnboardData() {
  final onboardList = <OnboardModel>[
    OnboardModel(
      navigatorKey.currentContext.loc!.onboard_welcome,
      navigatorKey.currentContext.loc!.onboard_text,
      Assets.welcome,
    ),
    OnboardModel(
      navigatorKey.currentContext.loc!.onboard_identity,
      navigatorKey.currentContext.loc!.onboard_text_1,
      Assets.identity,
    ),
    OnboardModel(
      navigatorKey.currentContext.loc!.onboard_check_data,
      navigatorKey.currentContext.loc!.onboard_text_2,
      Assets.checkData,
    ),
    OnboardModel(
      navigatorKey.currentContext.loc!.onboard_select_partners,
      navigatorKey.currentContext.loc!.onboard_text_3,
      Assets.selectPartners,
    ),
    OnboardModel(
      navigatorKey.currentContext.loc!.onboard_approval,
      navigatorKey.currentContext.loc!.onboard_text_4,
      Assets.acceptance,
    ),
    OnboardModel(
      navigatorKey.currentContext.loc!.onboard_product_or_service,
      navigatorKey.currentContext.loc!.onboard_text_5,
      Assets.productOrService,
    ),
  ];

  return onboardList;
}
