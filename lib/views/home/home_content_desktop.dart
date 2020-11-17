import 'package:basic_web/widgets/call_to_action/call_to_action.dart';
import 'package:basic_web/widgets/course_details/course_details.dart';
import 'package:flutter/material.dart';

class HomeContentDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CourseDetails(),
        Expanded(child: Center(child: CallToAction('Join Course'),),)
      ],
    );
  }
}
