import 'package:admin_team_boke/pages/login/login_page.dart';
import 'package:admin_team_boke/pages/main/main_page.dart';
import 'package:admin_team_boke/route/auth_guard.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AppRouteObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {}
}

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    //RedirectRoute(path: '*', redirectTo: '/'),
    AutoRoute(page: MainPage, initial: true, guards: [AuthGuard]),
    AutoRoute(page: LoginPage, path: "/login"),
  ],
)
class $AppRouter {}
