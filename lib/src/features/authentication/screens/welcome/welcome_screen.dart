import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splash/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:splash/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:splash/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:splash/src/constants/colors.dart';
import 'package:splash/src/constants/image_strings.dart';
import 'package:splash/src/constants/sizes.dart';
import 'package:splash/src/features/authentication/screens/login/login_screen.dart';

import '../../../../constants/text_strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startAnimation();

    var hmediaQuery = MediaQuery.of(context);
    var height = hmediaQuery.size.height;
    var brightness = hmediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
        backgroundColor: isDarkMode ? tSecondaryColor : tPrimaryColor,
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
        body: Stack(
          children: [
            TFadeInAnimation(
              durationInMs: 1200,
              animate: TAnimatePosition(
                bottomAfter: 0,
                bottomBefore: -100,
                leftBefore: 0,
                leftAfter: 0,
                topAfter: 0,
                topBefore: 0,
                rightAfter: 0,
                rightBefore: 0,
              ),
              child: Container(
                padding: const EdgeInsets.all(tDefaultSize),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: const AssetImage(tWelcomeScreenImage),
                      height: height * .4,
                    ),
                    Column(
                      children: [
                        Text(
                          tWelcomeTitle,
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        Text(
                          tWelcomeSubTitle,
                          style: Theme.of(context).textTheme.headlineSmall,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: OutlinedButton(
                                onPressed: () => Get.to(()=>const LoginScreen()),
                                child: Text(
                                  tLogin.toUpperCase(),
                                ))),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              tSignup.toUpperCase(),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
