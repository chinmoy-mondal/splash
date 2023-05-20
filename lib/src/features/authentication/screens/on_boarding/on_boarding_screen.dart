import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:splash/src/constants/colors.dart';
import 'package:splash/src/constants/image_strings.dart';
import 'package:splash/src/constants/text_strings.dart';
import 'package:splash/src/features/authentication/models/model_on_boarding.dart';
import 'package:splash/src/features/authentication/screens/on_boarding/on_boarding_page_widget.dart';

class OnBoardingScreen extends StatefulWidget {


  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = LiquidController();

  int currentPage = 0;

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
              height: size.height)),
      OnBoardingPageWidget(
          model: OnBoardingModel(
              image: tOnboardingImage2,
              title: tOnBoardingTitle2,
              subTitle: tOnBoardingSubTitle2,
              counterText: tOnBoardingCounter2,
              bgColor: tOnBoardingPage2Color,
              height: size.height)),
      OnBoardingPageWidget(
          model: OnBoardingModel(
              image: tOnboardingImage3,
              title: tOnBoardingTitle3,
              subTitle: tOnBoardingSubTitle3,
              counterText: tOnBoardingCounter3,
              bgColor: tOnBoardingPage3Color,
              height: size.height)),
    ];


    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: [
        LiquidSwipe(
          pages: pages,
          liquidController: controller,
          onPageChangeCallback: onPageChangedCallback,
          slideIconWidget: const Icon(Icons.arrow_back),
          enableSideReveal: true,
        ),
        Positioned(
            bottom: 60.0,
            child: OutlinedButton(
                onPressed: () {
                  int nextPage = controller.currentPage + 1;
                  controller.animateToPage(page: nextPage);
                },
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.black26),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(20),
                ),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                      color: Color(0xff272727), shape: BoxShape.circle),
                  child: const Icon(
                    Icons.arrow_forward_ios,
                  ),
                ))),
        Positioned(
          top: 50,
          right: 20,
          child: TextButton(
            onPressed: () =>controller.jumpToPage(page: 2),
            child: const Text("Skip", style: TextStyle(color: Colors.grey),),
          ),
        ),
        Positioned(
            bottom: 10,
            child: AnimatedSmoothIndicator(
              activeIndex: controller.currentPage,
              count: 3,
              effect: const WormEffect(
                activeDotColor: Color(0xff272727),
                dotHeight: 5.0
              ),
            ))
      ],
    ));
  }

  void onPageChangedCallback(int activePageIndex) {
    setState(() {
      currentPage = activePageIndex;
    });
  }
}
