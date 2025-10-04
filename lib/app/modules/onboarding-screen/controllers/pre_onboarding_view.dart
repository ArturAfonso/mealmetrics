import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mealmetrics/app/data/shared/custom_button.dart';
import 'package:mealmetrics/app/modules/onboarding-screen/controllers/onboarding_screen_controller.dart';
import 'package:mealmetrics/app/routes/app_pages.dart';
import 'package:mealmetrics/app/settings/app_settings.dart';

class PreOnboardingView  extends GetView<OnboardingScreenController>{
  const PreOnboardingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Meal Metrics", style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: 20),
             CustomButton(text: 'Responder')
            ],
          
          ),
        ),
      ),
      bottomSheet: SizedBox(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Já possui uma conta?"),
            TextButton(
              onPressed: () {
                Get.toNamed(Routes.ONBOARDING_SCREEN);
              },
              child: const Text('Entrar'),
            ),
          ],
        ),
      ) 
    );
  }
}
