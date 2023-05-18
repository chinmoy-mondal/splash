

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:splash/src/constants/colors.dart';
import 'package:splash/src/constants/image_strings.dart';
import 'package:splash/src/constants/sizes.dart';
import 'package:splash/src/constants/text_strings.dart';

import '../welcome/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  bool animate = false;


  @override
  void initState() {
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
            AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                top: animate ? 0 : -30,
                left: animate ? 0 : -30,
                child: const Image(
                  image: AssetImage(tSplashTopIcon),
                )),
            AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                top: 120,
                left: animate ? tDefaultSize : -80,
                child: AnimatedOpacity(
                  opacity: animate ? 1 : 0,
                  duration: const Duration(milliseconds: 1600),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        tAppName,
                      ),
                      Text(
                        tAppTagLine,
                      ),
                    ],
                  ),
                )),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
              bottom: animate ? 100 : 0,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 2000),
                  opacity: animate ? 1 : 0,
                  child: Image(
                      image: AssetImage(tSplashImage)
                  ),
                )
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
              bottom: animate ? 60 : 0,
                right: tDefaultSize,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 2000),
                  opacity: animate ? 1 : 0,
                  child: Container(
                    width: tSplashContainerSize,
                    height: tSplashContainerSize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: tPrimaryColor,
                    ),
                  ),
                )
            )
          ],
        ),
      );
    }

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() => animate=true);
    await Future.delayed(const Duration(milliseconds: 5000));
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => (WelcomeScreen())));
  }

}






