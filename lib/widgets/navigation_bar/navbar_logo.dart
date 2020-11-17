import 'package:basic_web/services/navigation_service.dart';
import 'package:flutter/material.dart';

import '../../locator.dart';
class NavBarLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        locator<NavigationService>().goBack();
      },
      child: SizedBox(
        height: 80,
        width: 150,
        child: Image.asset('assets/logo.png'),
      ),
    ) ;
  }
}
