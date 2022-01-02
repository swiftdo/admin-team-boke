import 'package:admin_team_boke/core/util/value_util.dart';
import 'package:admin_team_boke/data/model/login_response.dart';
import 'package:dio/dio.dart';

abstract class IAuthRepository {
  Future<LoginResponse> login(String email, String password);
}

class AuthRepository implements IAuthRepository {
  final Dio _dio;

  AuthRepository({required Dio dio}) : _dio = dio;

  @override
  Future<LoginResponse> login(String email, String password) async {
    final res = await _dio.post("/api/auth/login", data: {
      "email": email,
      "password": password,
    });
    final json = ValueUtil.toMap(res.data);
    final data = LoginResponse.fromJson(json);

    return data;
  }
}
