import 'package:admin_team_boke/route/auth_guard.dart';
import 'package:admin_team_boke/route/route.gr.dart';
import 'package:admin_team_boke/services/sp_service.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// 全局provider
///
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

// dio
final gDioProvider = Provider<Dio>((ref) {
  return Dio();
});
