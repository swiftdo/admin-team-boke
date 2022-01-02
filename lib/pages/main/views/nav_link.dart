import 'package:admin_team_boke/data/model/side_bar_item.dart';
import 'package:admin_team_boke/provider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NavLink extends HookConsumerWidget {
  final SideBarItem item;

  const NavLink({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentRoute = ref.watch(gRouteChangeProvider);
    bool isHigh = item.routeInfo?.routeName == currentRoute;
    final color = isHigh ? Colors.white : const Color(0xff808EAA);

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      child: Container(
        decoration:
            BoxDecoration(color: isHigh ? const Color(0xff153575) : null),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          children: [
            if (item.icon != null)
              Container(
                child: FaIcon(
                  item.icon,
                  size: 16,
                  color: color,
                ),
                margin: const EdgeInsets.only(right: 5),
              ),
            Text(
              item.label,
              style: TextStyle(color: color),
            )
          ],
        ),
      ),
      onTap: () {
        if (item.routeInfo != null) {
          ref.read(gRouteProvider).replace(item.routeInfo!);
        }
      },
    );
  }
}
