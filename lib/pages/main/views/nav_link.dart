import 'package:admin_team_boke/provider.dart';
import 'package:admin_team_boke/route/route.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NavLink extends HookConsumerWidget {
  final String label;
  final IconData? icon;
  final PageRouteInfo destination;

  const NavLink({
    Key? key,
    required this.label,
    required this.destination,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        margin: const EdgeInsets.only(left: 30),
        child: Row(
          children: [
            if (icon != null)
              Container(
                child: FaIcon(
                  icon,
                  size: 16,
                  color: const Color(0xff808EAA),
                ),
                margin: const EdgeInsets.only(right: 5),
              ),
            Text(
              label,
              style: const TextStyle(
                color: Color(0xff808EAA),
              ),
            )
          ],
        ),
      ),
      onTap: () {
        ref.read(gRouteProvider).replace(destination);
      },
    );
  }
}
