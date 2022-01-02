// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../pages/login/login_page.dart' as _i2;
import '../pages/main/main_page.dart' as _i1;
import '../pages/post/post_page.dart' as _i4;
import '../pages/user/user_page.dart' as _i3;
import 'auth_guard.dart' as _i7;

class AppRouter extends _i5.RootStackRouter {
  AppRouter(
      {_i6.GlobalKey<_i6.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i7.AuthGuard authGuard;

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MainPage());
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.LoginPage(key: args.key, onResult: args.onResult));
    },
    UserRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.UserPage(),
          transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    PostRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.PostPage(),
          transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(MainRoute.name, path: '/', guards: [
          authGuard
        ], children: [
          _i5.RouteConfig(UserRoute.name,
              path: 'users', parent: MainRoute.name),
          _i5.RouteConfig(PostRoute.name, path: 'posts', parent: MainRoute.name)
        ]),
        _i5.RouteConfig(LoginRoute.name, path: '/login')
      ];
}

/// generated route for [_i1.MainPage]
class MainRoute extends _i5.PageRouteInfo<void> {
  const MainRoute({List<_i5.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'MainRoute';
}

/// generated route for [_i2.LoginPage]
class LoginRoute extends _i5.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i6.Key? key, dynamic Function(bool)? onResult})
      : super(name,
            path: '/login', args: LoginRouteArgs(key: key, onResult: onResult));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key, this.onResult});

  final _i6.Key? key;

  final dynamic Function(bool)? onResult;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, onResult: $onResult}';
  }
}

/// generated route for [_i3.UserPage]
class UserRoute extends _i5.PageRouteInfo<void> {
  const UserRoute() : super(name, path: 'users');

  static const String name = 'UserRoute';
}

/// generated route for [_i4.PostPage]
class PostRoute extends _i5.PageRouteInfo<void> {
  const PostRoute() : super(name, path: 'posts');

  static const String name = 'PostRoute';
}
