import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/logo.png",
            height: 50,
          ),
          Row(
            children: [
              FaIcon(FontAwesomeIcons.heart),
              SizedBox(width: 20),
              FaIcon(FontAwesomeIcons.facebookMessenger),
            ],
          )
        ],
      ),
    );
  }
}
