import 'package:flutter/material.dart';
import 'package:mealmetrics/app/settings/settings_model.dart';

class AppSettings extends InheritedWidget {
  AppSettings({required this.settings, required Widget? child, super.key}) : super(child: child!);

  final SettingsModel settings;

  static AppSettings? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppSettings>();
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}
