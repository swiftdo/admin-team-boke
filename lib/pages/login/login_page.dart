import 'package:admin_team_boke/core/ext/ext.dart';
import 'package:admin_team_boke/gen/colors.gen.dart';
import 'package:admin_team_boke/pages/login/view/input_view.dart';
import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  final Function(bool success)? onResult;

  const LoginPage({Key? key, this.onResult}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'BOKE后台',
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
                    ),
                    InputView(
                      marginTop: 10,
                      hintText: "密码",
                      icon: FontAwesomeIcons.key,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
