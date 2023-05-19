import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:splash/src/constants/colors.dart';
import 'package:splash/src/constants/image_strings.dart';
import 'package:splash/src/constants/text_strings.dart';
import 'package:splash/src/features/authentication/models/model_on_boarding.dart';
import 'package:splash/src/features/authentication/screens/on_boarding/on_boarding_page_widget.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final pages = [
      OnBoardingPageWidget(
          model: OnBoardingModel(
              image: tOnboardingImage1,
              title: tOnBoardingTitle1,
              subTitle: tOnBoardingSubTitle1,
              counterText: tOnBoardingCounter1,
              bgColor: tOnBoardingPage1Color,
              height: size.height
          )
      ),
      OnBoardingPageWidget(
          model: OnBoardingModel(
              image: tOnboardingImage2,
              title: tOnBoardingTitle2,
              subTitle: tOnBoardingSubTitle2,
              counterText: tOnBoardingCounter2,
              bgColor: tOnBoardingPage2Color,
              height: size.height
          )
      ),
      OnBoardingPageWidget(
          model: OnBoardingModel(
              image: tOnboardingImage3,
              title: tOnBoardingTitle3,
              subTitle: tOnBoardingSubTitle3,
              counterText: tOnBoardingCounter3,
              bgColor: tOnBoardingPage3Color,
              height: size.height
          )
      ),

    ];
    return Scaffold(
        body: Stack(
          alignment: Alignment.center,
      children: [
        LiquidSwipe(
          pages: pages,
          slideIconWidget: const Icon(Icons.arrow_back),
          enableSideReveal: true,
        ),
        Positioned(
          bottom: 60.0 ,
            child: OutlinedButton(
              onPressed: () {  }, 
              style: ElevatedButton.styleFrom(
                side:  const BorderSide(color: Colors.black26),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
                onPrimary: Colors.white
              ),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Color(0xff272727),
                  shape: BoxShape.circle
                ),
                child: const Icon(Icons.arrow_forward_ios,),
              )
            )
        ),
        Positioned(
          top: 50,
          right: 20,
          child: TextButton(
            onPressed: () {  },
            child: const Text("Skip", style: TextStyle(color: Colors.grey),),
          ),
        ),
      ],
    ));
  }
}

