import 'package:shared_preferences/shared_preferences.dart';

class SpKey {
  static String token = "admin_token";
}

// 对 shared_preferences 的封装
class SpService {
  SharedPreferences? pref;
  SpService({this.pref});

  // 获取token
  String? get token {
    return pref?.getString(SpKey.token);
  }

  /// 是否登录
  bool get hasLogin {
    return token?.isNotEmpty == true;
  }
}
