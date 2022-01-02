import 'package:admin_team_boke/data/repository/auth_repository.dart';
import 'package:admin_team_boke/provider.dart';
import 'package:admin_team_boke/route/route.gr.dart';
import 'package:admin_team_boke/services/sp_service.dart';
import 'package:admin_team_boke/services/toast.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final _authRepository = Provider<IAuthRepository>((ref) {
  final dio = ref.watch(gDioProvider);
  return AuthRepository(dio: dio);
});

final loginProvider =
    StateNotifierProvider.autoDispose<LoginNotifier, LoginState>((ref) {
  final spService = ref.watch(gSpService);
  final loginModel = spService.loginModel;
  return LoginNotifier(
    email: loginModel?.email,
    pwd: loginModel?.passwd,
    authRepository: ref.watch(_authRepository),
    spService: spService,
    router: ref.watch(gRouteProvider),
    toast: ref.watch(gToast),
  );
});

class LoginState {
  final String? email;
  String? passwd;

  final bool canSubmit;

  LoginState({this.email, this.passwd, this.canSubmit = false});

  LoginState copy({String? email, String? passwd, bool? canSubmit}) {
    return LoginState(
      email: email ?? this.email,
      passwd: passwd ?? this.passwd,
      canSubmit: canSubmit ?? this.canSubmit,
    );
  }
}

class LoginNotifier extends StateNotifier<LoginState> {
  LoginNotifier({
    String? email,
    String? pwd,
    required IAuthRepository authRepository,
    required SpService spService,
    required AppRouter router,
    required Toast toast,
  })  : _authRepository = authRepository,
        _spService = spService,
        _router = router,
        _toast = toast,
        super(LoginState(email: email, passwd: pwd));

  final IAuthRepository _authRepository;
  final SpService _spService;
  final AppRouter _router;
  final Toast _toast;

  email(String email, bool canSubmit) {
    state = state.copy(email: email, canSubmit: canSubmit);
  }

  passwd(String passwd, bool canSubmit) {
    state = state.copy(passwd: passwd, canSubmit: canSubmit);
  }

  login() async {
    _toast.show();
    try {
      final res = await _authRepository.login(state.email!, state.passwd!);
      if (res.code == 0) {
        _toast.showSuccess("登录成功");
        _spService.saveLogin(state.email!, state.passwd!);
        _spService.saveToken(res.data?.token);
        // 跳转到首页
        _router.replaceNamed("/");
      } else {
        // 错误
        _toast.showError(res.message);
      }
    } catch (e, s) {
      // 错误
      _toast.showError("$e");
    }
  }
}
