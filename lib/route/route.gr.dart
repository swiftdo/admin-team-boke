// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../pages/login/login_page.dart' as _i2;
import '../pages/main/main_page.dart' as _i1;
import 'auth_guard.dart' as _i5;

class AppRouter extends _i3.RootStackRouter {
  AppRouter(
      {_i4.GlobalKey<_i4.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i5.AuthGuard authGuard;

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MainPage());
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.LoginPage(key: args.key, onResult: args.onResult));
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(MainRoute.name, path: '/', guards: [authGuard]),
        _i3.RouteConfig(LoginRoute.name, path: '/login')
      ];
}

/// generated route for [_i1.MainPage]
class MainRoute extends _i3.PageRouteInfo<void> {
  const MainRoute() : super(name, path: '/');

  static const String name = 'MainRoute';
}

/// generated route for [_i2.LoginPage]
class LoginRoute extends _i3.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i4.Key? key, dynamic Function(bool)? onResult})
      : super(name,
            path: '/login', args: LoginRouteArgs(key: key, onResult: onResult));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key, this.onResult});

  final _i4.Key? key;

  final dynamic Function(bool)? onResult;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, onResult: $onResult}';
  }
}
