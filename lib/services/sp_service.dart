import 'dart:convert';

import 'package:admin_team_boke/core/util/value_util.dart';
import 'package:admin_team_boke/data/model/login_model.dart';
import 'package:admin_team_boke/data/model/token_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SpKey {
  static String token = "admin_token";
  static String userLogin = "user_login";
  static String user = "user"; // 用户信息
}

// 对 shared_preferences 的封装
class SpService {
  SharedPreferences? pref;

  SpService({this.pref});

  // 获取token
  String? get token {
    return getToken()?.accessToken;
  }

  /// 是否登录
  bool get hasLogin {
    return token?.isNotEmpty == true;
  }

  LoginModel? get loginModel {
    final data = getMap(SpKey.userLogin);
    return data == null ? null : LoginModel.fromJson(data);
  }

  saveLogin(String email, String password) {
    setMap(
      SpKey.userLogin,
      LoginModel(email: email, passwd: password).toJson(),
    );
  }

  TokenModel? getToken() {
    final data = getMap(SpKey.token);
    return data == null ? null : TokenModel.fromJson(data);
  }

  saveToken(TokenModel? token) {
    if (token != null) {
      setMap(SpKey.token, token.toJson());
    }
  }
}

extension SpServiceExt on SpService {
  setMap(String key, Map<String, dynamic> value) {
    String data = json.encode(value);
    pref?.setString(key, data);
  }

  Map<String, dynamic>? getMap(String key) {
    String? data = pref?.getString(key);
    return data == null ? null : ValueUtil.toMap(json.decode(data));
  }
}
