import 'package:flutter/material.dart';

import '../../../../constants/image_strings.dart';

class DashboardTopCourseModel{
  final String title;
  final String heading;
  final String subHeading;
  final String image;
  final VoidCallback?onPress;

  DashboardTopCourseModel(this.title,this.heading,this.subHeading,this.image,this.onPress);

  static List<DashboardTopCourseModel> list = [
    DashboardTopCourseModel("Flutter Crash Course", "3 section", "Programming language", tTopCourseImage1 , null),
    DashboardTopCourseModel("Flutter Crash Course", "2 section", "Programming language", tTopCourseImage1 , null),
    DashboardTopCourseModel("Flutter Crash Course", "4 section", "Programming language", tTopCourseImage1 , null),
    DashboardTopCourseModel("Flutter Crash Course", "5 section", "Programming language", tTopCourseImage1 , null),
  ];

}