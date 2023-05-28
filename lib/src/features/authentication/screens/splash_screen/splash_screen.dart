import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splash/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:splash/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:splash/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:splash/src/constants/image_strings.dart';
import 'package:splash/src/constants/text_strings.dart';

import '../../../../constants/sizes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();
    return Scaffold(
      body: Stack(
        children: [
          TFadeInAnimation(
              durationInMs: 1600,
              animate:
                  TAnimatePosition(topAfter: 0, topBefore: -30, leftAfter: 0),
              child: const Image(image: AssetImage(tSplashTopIcon))),
          TFadeInAnimation(
            durationInMs: 2000,
            animate:
                TAnimatePosition(topBefore: 80, topAfter: 80, leftAfter: tDefaultSize, leftBefore: -80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(tAppName),
                Text(tAppTagLine),
              ],
            ),
          ),
          TFadeInAnimation(
              durationInMs: 2400,
              animate:
                  TAnimatePosition(topAfter: 0, topBefore: -30, leftAfter: 0),
              child: const Image(image: AssetImage(tSplashImage))),

        ],
      ),
    );
  }
}
