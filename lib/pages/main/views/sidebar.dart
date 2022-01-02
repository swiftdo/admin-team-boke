import 'package:admin_team_boke/data/model/side_bar_item.dart';
import 'package:admin_team_boke/provider.dart';
import 'package:admin_team_boke/route/route.gr.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'nav_link.dart';

class SideBar extends HookConsumerWidget {
  const SideBar({Key? key}) : super(key: key);

  final List<SideBarItem> barItems = const [
    SideBarItem(
      label: "Users",
      routeInfo: UserRoute(),
      icon: FontAwesomeIcons.user,
    ),
    SideBarItem(
      label: "Post",
      routeInfo: PostRoute(),
      icon: FontAwesomeIcons.newspaper,
    ),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          ...barItems.map((e) => NavLink(item: e))
        ],
      ),
    );
  }
}
