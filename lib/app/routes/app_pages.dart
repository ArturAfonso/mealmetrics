import 'package:get/get.dart';
import 'package:mealmetrics/app/modules/onboarding-screen/controllers/pre_onboarding_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login-screen/bindings/login_screen_binding.dart';
import '../modules/login-screen/views/login_sreen_view.dart';
import '../modules/onboarding-screen/bindings/onboarding_screen_binding.dart';
import '../modules/onboarding-screen/views/onboarding_screen_view.dart';
import '../modules/splash-screen/bindings/splash_screen_binding.dart';
import '../modules/splash-screen/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_SREEN,
      page: () => const LoginScreenView(),
      binding: LoginScreenBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING_SCREEN,
      page: () => const OnboardingScreenView(),
      binding: OnboardingScreenBinding(),
    ),
     GetPage(
      name: _Paths.PRE_ONBOARDING_SCREEN,
      page: () => const PreOnboardingView(),
      binding: OnboardingScreenBinding(),
    ),
  ];
}
