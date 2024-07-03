import '../di/injection.dart';
import 'app_router.dart';


class Navigation {
  static final route = getIt.get<AppRouter>();
}
