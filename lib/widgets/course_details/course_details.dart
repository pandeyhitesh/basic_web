import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CourseDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation){
        var textAlignment = sizingInformation.deviceScreenType == DeviceScreenType.Desktop
          ? TextAlign.left
          : TextAlign.center;
        double titleSize = sizingInformation.deviceScreenType == DeviceScreenType.mobile
          ? 50
          : 80;
        double descriptionSize = sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? 16
            : 21;



        return Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'FLUTTER WEB.\nTHE BASICS',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                height: 0.9,
                fontSize: titleSize,
              ),
              textAlign: textAlignment,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'In this course ei jf jhjsdfh fjhsdjsd sjfhskf nbmbfaiokkjhsdf mnbvzkjhasnzmnxcv jkhkafjh nbmbxvjjkh jmncvj mnbvkh mnbxcvju mnbxcvmkmnb zxcvmnb.',
              style: TextStyle(
                fontSize: descriptionSize,
                height: 1.7,
                fontWeight: FontWeight.w400
              ),
              textAlign: textAlignment,
            ),
          ],
        ),
      );
      },
    );
  }
}
