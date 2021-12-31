import 'package:admin_team_boke/provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final loginProvider = StateNotifierProvider<LoginNotifier, LoginState>((ref) {
  final model = ref.watch(gSpService).loginModel;
  return LoginNotifier(email: model?.email, pwd: model?.passwd);
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
  LoginNotifier({String? email, String? pwd})
      : super(LoginState(email: email, passwd: pwd));

  email(String email, bool canSubmit) {
    state = state.copy(email: email, canSubmit: canSubmit);
  }

  passwd(String passwd, bool canSubmit) {
    state = state.copy(passwd: passwd, canSubmit: canSubmit);
  }

  login() async {}
}
