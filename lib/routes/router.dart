
import 'package:basic_web/routes/route_names.dart';
import 'package:basic_web/views/about/about_view.dart';
import 'package:basic_web/views/episodes/apisodes_view.dart';
import 'package:basic_web/views/home/home_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch (settings.name) {
    case homeRoute:
      return _getPageRoute(HomeView());
    case aboutRoute:
      return _getPageRoute(AboutView());
    case episodeRoute:
      return _getPageRoute(EpisodesView());
    default:


  }
}

PageRoute _getPageRoute(Widget child){
  return _FadeRoute(
    child: child
  );
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  _FadeRoute({this.child})
  : super (
    pageBuilder: (
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
    ) =>
        child,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
    ) =>
        FadeTransition(
          opacity: animation,
          child: child,
        )
  );
}