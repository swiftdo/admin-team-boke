import 'package:admin_team_boke/gen/colors.gen.dart';
import 'package:admin_team_boke/pages/login/login_notifier.dart';
import 'package:admin_team_boke/pages/login/view/input_view.dart';
import 'package:admin_team_boke/pages/login/view/submit_view.dart';
import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginPage extends StatefulWidget {
  final Function(bool success)? onResult;

  const LoginPage({Key? key, this.onResult}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  final formKey = GlobalKey<FormState>();

  bool get validate => formKey.currentState?.validate() == true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.gray70,
      body: AnimatedBackground(
        behaviour: RandomParticleBehaviour(
          options: const ParticleOptions(
            particleCount: 30,
            spawnMaxSpeed: 50,
            spawnMinSpeed: 10,
            baseColor: ColorName.primary,
          ),
        ),
        vsync: this,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 360,
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'BOKE 后台',
                      style: TextStyle(
                        color: ColorName.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    InputView(
                      marginTop: 50,
                      hintText: "用户名",
                      icon: FontAwesomeIcons.user,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '请输入用户名';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (text, ref) {
                        ref.read(loginProvider.notifier).email(text, validate);
                      },
                    ),
                    InputView(
                      marginTop: 10,
                      hintText: "密码",
                      icon: FontAwesomeIcons.key,
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.length < 6) {
                          return '请输入密码';
                        }
                        return null;
                      },
                      onChanged: (text, ref) {
                        ref.read(loginProvider.notifier).passwd(text, validate);
                      },
                    ),
                    HookConsumer(builder: (context, ref, child) {
                      final state = ref.watch(loginProvider);
                      return SubmitView(
                        title: "登录",
                        alignment: Alignment.center,
                        enable: state.canSubmit,
                        margin: const EdgeInsets.only(top: 10),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        onTap: () {
                          ref.read(loginProvider.notifier).login();
                        },
                      );
                    }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
