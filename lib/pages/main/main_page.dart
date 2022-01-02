import 'package:admin_team_boke/core/ext/ext.dart';
import 'package:admin_team_boke/pages/main/views/nav_link.dart';
import 'package:admin_team_boke/pages/main/views/navbar.dart';
import 'package:admin_team_boke/pages/main/views/sidebar.dart';
import 'package:admin_team_boke/route/route.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const SideBar(),
          Expanded(
            child: Container(
              color: const Color(0xffe9eff9),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  NavBar(),
                  Expanded(child: AutoRouter()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
