import 'package:basic_web/widgets/call_to_action/call_to_action.dart';
import 'package:basic_web/widgets/course_details/course_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeContentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CourseDetails(),
        SizedBox(
          height: 100,
        ),
        CallToAction('Join Course'),
      ],
    );
  }
}
