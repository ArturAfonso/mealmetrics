import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mealmetrics/app/data/shared/custom_button.dart';
import 'package:mealmetrics/app/modules/onboarding-screen/controllers/onboarding_screen_controller.dart';
import 'package:mealmetrics/app/routes/app_pages.dart';
import 'package:mealmetrics/app/settings/mealmetrics_settings.dart';

class PreOnboardingView  extends GetView<OnboardingScreenController>{
  const PreOnboardingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              SizedBox(
                width: 50,
                height: 50,
               child: Image.asset('assets/icons/logo_garfofaca.png'),
              ),
              SizedBox(width: 10),
              Text("Meal Metrics", style: Theme.of(context).textTheme.displayMedium),
              
              ],
              
              ),
              
              Image.asset('assets/images/onboarding-welcome.png'),
              Text("Controle sua alimentação de forma simples", style: Theme.of(context).textTheme.bodyMedium),
              Text("Registre refeições,acompanhe suas calorias", style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(height: 20),
            
            ],
          
          ),
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
             CustomButton(text: 'Vamos lá',
             onPressed: () => Get.toNamed(Routes.ONBOARDING_SCREEN),
              ),
              const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Já possui uma conta?"),
                TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.LOGIN_SREEN);
                  },
                  child:  Text('Entrar', style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold) /* TextStyle(color: MealMSettings().textColorTertiaryLight), */),
                ),
              ],
            ),
          ],
        ),
      ) 
    );
  }
}
