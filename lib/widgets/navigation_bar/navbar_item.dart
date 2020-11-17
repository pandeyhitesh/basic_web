import 'package:basic_web/locator.dart';
import 'package:basic_web/services/navigation_service.dart';
import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const NavBarItem(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Text(title,
        style: TextStyle(
            fontSize: 18,
            fontFamily: 'Open_Sans'
        ),),
    );
  }
}
