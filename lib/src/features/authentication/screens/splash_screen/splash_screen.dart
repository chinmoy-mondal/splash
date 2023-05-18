import 'dart:js';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:splash/src/constants/colors.dart';
import 'package:splash/src/constants/image_strings.dart';
import 'package:splash/src/constants/sizes.dart';
import 'package:splash/src/constants/text_strings.dart';

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
                top: animate ? 0 : -30,
                left: animate ? 0 : -30,
                duration: const Duration(milliseconds: 1600),
                child: Image(
                  image: AssetImage(tSplashTopIcon),
                )),
            Positioned(
                top: 80,
                left: tDefaultSize,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tAppName,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    Text(
                      tAppTagLine,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                )),
            Positioned(
              bottom: 150,
                child: Image(
                    image: AssetImage(tSplashImage)
                )
            ),
            Positioned(
              bottom: 40,
                right: tDefaultSize,
                child: Container(
                  width: tSplashContainerSize,
                  height: tSplashContainerSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: tPrimaryColor,
                  ),
                )
            )
          ],
        ),
      );
    }
  }

Future startAnimation() async{
  await Future.delayed(Duration(milliseconds: 5000));
  Navigator.push(context as BuildContext, MaterialPageRoute(builder: (context)=>welcome()));
}





