import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:mealmetrics/app/data/shared/custom_button.dart';
import 'package:mealmetrics/app/routes/app_pages.dart';

import '../controllers/onboarding_screen_controller.dart';

class OnboardingScreenView extends GetView<OnboardingScreenController> {
  const OnboardingScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
        bodyTextStyle: bodyStyle,
        bodyPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        pageColor: Colors.white,
        imagePadding: EdgeInsets.only(top: 30),
        imageAlignment: Alignment.bottomCenter,
        bodyAlignment: Alignment.center,
        imageFlex: 2,
        bodyFlex: 1);

    void onIntroEnd(BuildContext context) {
      Get.toNamed(Routes.HOME);
    }

    Widget buildImage(String assetName, [double width = 350]) {
      return Image.asset('assets/images/$assetName', width: width);
    }

    const backgroundImage = 'assets/images/pose-de-ioga.png';

    List<PageViewModel> pages = [
      PageViewModel(
        title: "Registre suas refeições de forma simples",
        body: "Anote cada refeição e acompanhe se está dentro ou fora da sua dieta.",
        image: buildImage('onboarding-track-DOgvR4yy.png'),
        decoration: pageDecoration,
      ),
      PageViewModel(
        title: "Acompanhe sua evolução diária",
        body: "Visualize suas estatísticas e veja seu progresso ao longo do tempo.",
        image: buildImage('onboarding-progress-CUQF1Nwa.png'),
        decoration: pageDecoration,
      ),
      PageViewModel(
        title: "Mantenha-se consistente e alcance seus objetivos",
        body: "Pequenos passos diários levam a grandes resultados.",
        image: buildImage('onboarding-success-Oll7SjvD.png'),
        decoration: pageDecoration,
      ),
      PageViewModel(
        title: "Full Screen Page",
        body:
            "Pages can be full screen as well.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id euismod lectus, non tempor felis. Nam rutrum rhoncus est ac venenatis.",
        backgroundImage: backgroundImage,
        decoration: pageDecoration.copyWith(
          contentMargin: const EdgeInsets.symmetric(horizontal: 16),
          bodyFlex: 2,
          imageFlex: 3,
          safeArea: 100,
        ),
      ),
      PageViewModel(
        title: "Another title page",
        body: "Another beautiful body text for this example onboarding",
        image: buildImage('pose-de-ioga.png'),
        footer: ElevatedButton(
          onPressed: () {
            controller.introKey.currentState?.animateScroll(0);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.lightBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          child: const Text(
            'FooButton',
            style: TextStyle(color: Colors.white),
          ),
        ),
        decoration: pageDecoration.copyWith(
          bodyFlex: 6,
          imageFlex: 6,
          safeArea: 80,
        ),
      ),
      PageViewModel(
        title: "Title of last page - reversed",
        bodyWidget: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Click on ", style: bodyStyle),
            Icon(Icons.edit),
            Text(" to edit a post", style: bodyStyle),
          ],
        ),
        decoration: pageDecoration.copyWith(
          bodyFlex: 2,
          imageFlex: 4,
          bodyAlignment: Alignment.bottomCenter,
          imageAlignment: Alignment.topCenter,
        ),
        image: buildImage('torcao.png'),
        reverse: true,
      ),
    ];
    return IntroductionScreen(
      key: controller.introKey,
      globalBackgroundColor: Colors.white,
      allowImplicitScrolling: false,

      infiniteAutoScroll: false,
      /*  globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, right: 16),
            child: buildImage('ioga.png', 100),
          ),
        ),
      ), */
      globalFooter: Padding(
        padding: const EdgeInsets.all(15.0),
        child: CustomButton(
          text: 'Continuar',
          onPressed: () {
            controller.introKey.currentState?.next();
          },
        ),
      ),
      pages: pages,
      onDone: () => onIntroEnd(context),
      onSkip: () => onIntroEnd(context), // You can override onSkip callback

      skipOrBackFlex: 0,
      nextFlex: 0,
      showNextButton: false,
      showBackButton: false,
      showDoneButton: false,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      next: Icon(
        Icons.arrow_forward,
        color: Theme.of(context).colorScheme.onSurface,
      ),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb ? const EdgeInsets.all(12.0) : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: DotsDecorator(
        size: Size(10.0, 10.0),
        color: Theme.of(context).colorScheme.onSurface,
        activeColor: Theme.of(context).colorScheme.onPrimaryContainer,
        activeSize: Size(20, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
      ),
      /*  dotsContainerDecorator: const ShapeDecoration(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(0.0)),
        ),
      ), */
      //  canProgress:()=> true,
    );
  }
}
