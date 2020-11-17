import 'package:basic_web/locator.dart';
import 'package:basic_web/routes/route_names.dart';
import 'package:basic_web/routes/router.dart';
import 'package:basic_web/services/navigation_service.dart';
import 'package:basic_web/views/home/home_content_desktop.dart';
import 'package:basic_web/views/home/home_content_mobile.dart';
import 'package:basic_web/views/home/home_view.dart';
import 'package:basic_web/widgets/centerd_view/centered_view.dart';
import 'package:basic_web/widgets/navigation_bar/navigation_bar.dart';
import 'package:basic_web/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) =>
          Scaffold(
              drawer: sizingInformation.deviceScreenType==DeviceScreenType.mobile
                  ? NavigationDrawer()
                  : null,
              body: CenteredView(
                child: Column(
                  children: [
                    NavigationBar(),
                    Expanded(
                      child: Navigator(
                        key: locator<NavigationService>().navigatorKey,
                        onGenerateRoute: generateRoute,
                        initialRoute: homeRoute,

                      )
                    )
                  ],
                ),
              )
          ),
    );
  }
}
