import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mealmetrics/app/settings/mealmetrics_settings.dart';

class Exceptions {
  static SnackbarController normalException(String txt) {
    return Get.snackbar(
      "Erro",
      txt,
      colorText: Colors.white,
      backgroundColor: MealMSettings().errorColor,
    );
  }

  static SnackbarController normalSucess({
    required String title,
    required String txt,
    Duration? duration,
  }) {
    return Get.snackbar(
      title,
      txt,
      colorText: Colors.white,
      backgroundColor: MealMSettings().sucessColor,
      duration: duration ?? const Duration(seconds: 6),
    );
  }
}
