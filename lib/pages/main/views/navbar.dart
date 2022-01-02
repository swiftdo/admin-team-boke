import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          Row(
            children: [
              const FaIcon(
                FontAwesomeIcons.bell,
                size: 16,
                color: Color(0xffA0B1C2),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    ClipOval(
                      child: Container(
                        color: Colors.grey,
                        width: 30,
                        height: 30,
                      ),
                    ),
                    Container(
                      child: const Text(
                        "Boke",
                      ),
                      margin: const EdgeInsets.only(left: 5, right: 5),
                    ),
                    FaIcon(
                      FontAwesomeIcons.chevronDown,
                      size: 10,
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
