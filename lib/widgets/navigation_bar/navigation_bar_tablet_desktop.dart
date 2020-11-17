import 'package:basic_web/routes/route_names.dart';
import 'package:flutter/material.dart';

import 'navbar_item.dart';
import 'navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarLogo(),

          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavBarItem('Episodes',episodeRoute),
              SizedBox(
                width: 60,
              ),
              NavBarItem('About', aboutRoute),
            ],
          ),
        ],
      ),
    );
  }
}
