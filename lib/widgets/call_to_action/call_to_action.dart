import 'package:basic_web/widgets/call_to_action/call_to_action_mobile.dart';
import 'package:basic_web/widgets/call_to_action/call_to_action_tablet_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CallToAction extends StatelessWidget {

  final String title;
  CallToAction(this.title);
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CallToActionMobile(title),
      tablet: CallToActionTabletDesktop(title),
    );
  }
}