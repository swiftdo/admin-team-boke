import 'package:admin_team_boke/core/ext/ext.dart';
import 'package:admin_team_boke/route/route.gr.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'nav_link.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff102A60),
      width: 160,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 30, bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                FaIcon(
                  FontAwesomeIcons.bolt,
                  color: Color(0xff45A1FC),
                ),
                SizedBox(width: 10),
                Text(
                  "BOKE",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff5D76DB),
                  ),
                )
              ],
            ),
          ),
          const NavLink(
            label: "Users",
            destination: UserRoute(),
            icon: FontAwesomeIcons.user,
          ),
          const NavLink(
            label: "Post",
            destination: PostRoute(),
            icon: FontAwesomeIcons.newspaper,
          ),
        ],
      ),
    );
  }
}
