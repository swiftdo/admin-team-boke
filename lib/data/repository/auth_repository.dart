import 'package:dio/dio.dart';

abstract class IAuthRepository {
  login(String email, String password);
}

class AuthRepository implements IAuthRepository {
  final Dio _dio;

  AuthRepository({required Dio dio}) : _dio = dio;

  @override
  login(String email, String password) {}
}
