import 'dart:async';

import '../../config/di/injection.dart';
import '../../config/navigation/app_router.dart';
import '../../config/navigation/nav_strings.dart';
import '../../config/navigation/navigation.dart';
import '../../config/shared_prefs/app_prefs.dart';
import '../../config/shared_prefs/shared_keys.dart';
import '../../data/endpoints.dart';
import '../../data/model/get_request/get_request_data.dart';
import '../../domain/entity/app_response/app_response_entity.dart';
import '../util/utils.dart';

mixin GetRequestMixin {
  late Timer? timer;
  final prefs = getIt<AppPrefs>();

  Future<void> getRequestGlobal({
    required AppResponseEntity<GetRequestData> r,
    required int getRequestTryCount,
    required Function() getRequestCallback,
    required Function() showLoading,
    required Function() hideLoading,
  }) async {
    if (r.success ?? false) {
      await prefs.setValue<String>(SharedKeys.REQUEST_ID, r.data?.requestId ?? '');

      switch (r.data!.requestState) {
        case 0:
          if (r.data != null) {
            Navigation.route.goRouter.go(Navs.loan_sign);
          }
          break;
        case 1:
          await prefs.setValue<bool>(SharedKeys.QR_CODE, true);
          Navigation.route.goRouter.go(Navs.navigation);
          break;
        case 2:
          Navigation.route.goRouter.go(Navs.navigation);
          break;
        case 3:
          if (getRequestTryCount >= 20) {
            hideLoading.call();

            showNetworkErrorAlertDialog(errorMessage: r.message!, callback: () async => getRequestCallback.call(), endpoint: Endpoints.getRequest);
          }
          timer = Timer(
            const Duration(seconds: 5),
            () async {
              getRequestCallback.call();

              showLoading.call();
            },
          );
          break;
        case 4:
          showNetworkErrorAlertDialog(errorMessage: r.message!, callback: () async => getRequestCallback.call(), endpoint: Endpoints.getRequest);
          break;
        case 5:
          await prefs.setValue<bool>(SharedKeys.ACTIVE_CREDIT, true);
          Navigation.route.goRouter.go(Navs.profile_with_loan);
          break;
      }
    } else {
      if (!(r.success ?? false)) {
        switch (r.errorCode) {
          case 1:
            Navigation.route.goRouter.go(Navs.phone_number);
            break;
          case 2:
            await prefs.setValue<bool>(SharedKeys.QR_CODE, false);
            Navigation.route.goRouter.go(Navs.navigation);
            break;
          case 3:
            await prefs.setValue<bool>(SharedKeys.ACTIVE_CREDIT, true);
            Navigation.route.goRouter.go(Navs.profile_with_loan);
            break;
          case 4:
            Navigation.route.goRouter.go(Navs.navigation);
            break;
          case 5:
            if (r.data != null) {
              await prefs.setValue<String>(SharedKeys.REQUEST_ID, r.data?.requestId ?? '');
              Navigation.route.goRouter.pushNamed(Navs.partners_list, pathParameters: {'expired_time': r.data?.expireTime ?? ''});
            } else {
              showErrorDialog(navigatorKey.currentContext!, r.message!, () => null);
              return;
            }
            break;
          case 6:
            if (r.data != null) {
              await prefs.setValue<String>(SharedKeys.REQUEST_ID, r.data?.requestId ?? '');
              Navigation.route.goRouter
                  .goNamed(Navs.operator_await, pathParameters: {'expired_time': r.data?.expireTime ?? DateTime.now().toIso8601String()});
            }
            break;
          case 7:
            showNetworkErrorAlertDialog(
                errorMessage: r.message ?? '', callback: () => Navigation.route.goRouter.go(Navs.phone_number), endpoint: Endpoints.getRequest);
            break;
          case 31:
            Navigation.route.goRouter.goNamed(Navs.contact);
            break;
        }
      }
    }
  }
}
