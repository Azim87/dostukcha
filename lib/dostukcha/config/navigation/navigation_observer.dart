import 'dart:developer';
import 'package:flutter/material.dart';

class NavigationObserver extends NavigatorObserver {
  final _shouldUpdates = <String>[];

  void _log(Route<dynamic>? route, String action) {
    if (route is! PageRoute) {
      return;
    }
    log('$action ${route.settings.name}');
  }

  @override
  Future<void> didPop(Route<dynamic>? route, Route<dynamic>? previousRoute) async {
    super.didPop(route!, previousRoute);
    _log(route, 'navigation: pop ${await route.popped}');
    _clearUpdates([route, if (previousRoute != null) previousRoute]);
  }

  @override
  void didPush(Route<dynamic>? route, Route<dynamic>? previousRoute) {
    super.didPush(route!, previousRoute);
    _log(route, 'navigation: push');
    // if (route.settings.asOrNull<AutoRoutePage>()?.routeData.path == '/') {
    //   get<AppBloc>().start(wait: true);
    // }
    _clearUpdates([route, if (previousRoute != null) previousRoute]);
  }

  @override
  void didRemove(Route<dynamic>? route, Route<dynamic>? previousRoute) {
    super.didRemove(route!, previousRoute);
    _log(route, 'remove');
    _clearUpdates([route, if (previousRoute != null) previousRoute]);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    _log(newRoute, 'replace');
    _clearUpdates([newRoute, oldRoute].whereType<Route<dynamic>>().toList());
  }

  void _clearUpdates(List<Route<dynamic>> routes) {
    for (final e in routes) {
      _shouldUpdates.remove(e.settings.name);
    }
  }

  void addToUpdate(List<String> names) => _shouldUpdates.addAll(names);

  bool shouldUpdate(String path) => _shouldUpdates.contains(path);
}
