import 'dart:async';
import 'package:get/get.dart';
import 'package:mealmetrics/app/routes/app_pages.dart';

class SplashScreenController extends GetxController {
  // Variável observável para o contador do timer
  final count = 0.obs;
  
  // Timer para controlar o incremento
  Timer? _timer;

  @override
  void onInit() {
    super.onInit();
    startTimer();
  }

  void startTimer() {
    // Inicia o timer que executa a cada 1 segundo
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      count.value++;
      
      // Quando chegar a 3, cancela o timer e navega para home
      if (count.value >= 3) {
        timer.cancel();
        navigateToHome();
      }
    });
  }

  void navigateToHome() {
    // Navega para a tela home removendo a splash screen da pilha de navegação
    Get.offNamed(Routes.PRE_ONBOARDING_SCREEN);
  }

  @override
  void onClose() {
    // Cancela o timer quando o controller for destruído
    _timer?.cancel();
    super.onClose();
  }
}
