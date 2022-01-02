import 'package:admin_team_boke/pages/login/login_page.dart';
import 'package:admin_team_boke/pages/main/main_page.dart';
import 'package:admin_team_boke/pages/post/post_page.dart';
import 'package:admin_team_boke/pages/user/user_page.dart';
import 'package:admin_team_boke/route/auth_guard.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'route_notifier.dart';

class AppRouteObserver extends AutoRouterObserver {
  AppRouteObserver({required this.notifier});
  final RouteNotifier notifier;

  @override
  void didPush(Route route, Route? previousRoute) {
    debugPrint('New route pushed: ${route.settings.name}');
    Future.microtask(() => notifier.currentRoute = route.settings.name);
  }

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    super.didInitTabRoute(route, previousRoute);
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    super.didChangeTabRoute(route, previousRoute);
  }
}

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    //RedirectRoute(path: '*', redirectTo: '/'),
    AutoRoute(page: MainPage, initial: true, guards: [
      AuthGuard
    ], children: [
      CustomRoute(
          path: "users",
          page: UserPage,
          transitionsBuilder: TransitionsBuilders.fadeIn),
      CustomRoute(
          path: "posts",
          page: PostPage,
          transitionsBuilder: TransitionsBuilders.fadeIn),
    ]),
    AutoRoute(page: LoginPage, path: "/login"),
  ],
)
class $AppRouter {}
