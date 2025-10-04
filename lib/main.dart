import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mealmetrics/app/data/theme/theme_app.dart';
import 'package:mealmetrics/app/settings/app_settings.dart';
import 'package:mealmetrics/app/settings/mealmetrics_settings.dart';

import 'app/routes/app_pages.dart';

void main() {
 WidgetsFlutterBinding.ensureInitialized();

  final startApp = AppSettings(
    settings: MealMSettings(),
    child: GetMaterialApp(
      title: MealMSettings().nameApp,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      theme: appLightTheme,
      darkTheme: appDarkTheme,
      themeMode:ThemeMode.light, //homeController.isDarkTheme.value ? ThemeMode.dark : ThemeMode.light,
      onInit: () {},
      onDispose: () {},
    ),
  );

  runApp(startApp);
}
