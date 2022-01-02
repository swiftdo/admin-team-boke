import 'package:admin_team_boke/config/config.dart';
import 'package:admin_team_boke/route/auth_guard.dart';
import 'package:admin_team_boke/route/route.gr.dart';
import 'package:admin_team_boke/route/route_notifier.dart';
import 'package:admin_team_boke/services/sp_service.dart';
import 'package:admin_team_boke/services/toast.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// 全局provider

/// config
final gConfig = Provider<IConfig>((ref) => Config());

// sharedPrefs
final gSharedPrefs = FutureProvider<SharedPreferences>((ref) async {
  return SharedPreferences.getInstance();
});

final gSpService = Provider((ref) {
  final pref =
      ref.watch(gSharedPrefs).maybeWhen(orElse: () => null, data: (v) => v);
  return SpService(pref: pref);
});

// 路由
final gRouteProvider = Provider((ref) {
  final sp = ref.watch(gSpService);
  return AppRouter(authGuard: AuthGuard(sp: sp));
});

final gRouteChangeProvider = StateNotifierProvider<RouteNotifier, String?>(
  (ref) => RouteNotifier(),
);

// dio
final gDioProvider = Provider<Dio>((ref) {
  final config = ref.watch(gConfig);
  final dio = Dio(BaseOptions(baseUrl: config.baseUrl));
  dio.interceptors.add(LogInterceptor(responseBody: true));
  return dio;
});

// toast
final gToast = Provider<Toast>((ref) {
  return Toast();
});
