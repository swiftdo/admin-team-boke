import 'package:admin_team_boke/core/ext/ext.dart';
import 'package:admin_team_boke/core/util/value_util.dart';
import 'package:admin_team_boke/data/model/login_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SpKey {
  static String token = "admin_token";
  static String userLogin = "user_login";
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

  LoginModel? get loginModel {
    Object? data = pref?.get(SpKey.userLogin);
    return data == null ? null : LoginModel.fromJson(data.toMap);
  }
}
