import 'package:basic_web/routes/route_names.dart';
import 'package:basic_web/widgets/navigation_drawer/drawer_item.dart';
import 'package:basic_web/widgets/navigation_drawer/navigation_drawer_header.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12,
          blurRadius: 16,
          )
        ]
      ),
      child: Column(
        children: [
          NavigationDrawerHeader(),
          DrawerItem('EPISODES', Icons.videocam, episodeRoute),
          DrawerItem('ABOUT', Icons.info, aboutRoute),
        ],
      ),
    );
  }
}
