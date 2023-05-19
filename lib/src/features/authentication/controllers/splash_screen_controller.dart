import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splash/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:splash/src/features/authentication/screens/welcome/welcome_screen.dart';

class SplashScreenController extends GetxController{

  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value=true;
    await Future.delayed(const Duration(milliseconds: 5000));
    Get.to(OnBoardingScreen());
  }
}