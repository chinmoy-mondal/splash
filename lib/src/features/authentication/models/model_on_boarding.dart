import 'dart:ffi';
import 'dart:ui';

import 'package:splash/src/constants/text_strings.dart';

class OnBoardingModel{
  final String image;
  final String title;
  final String subTitle;
  final String counterText;
  final Color bgColor;

  OnBoardingModel({
    required this.image,
    required this.title,
    required this.subTitle,
    required this.counterText,
    required this.bgColor,
});

}