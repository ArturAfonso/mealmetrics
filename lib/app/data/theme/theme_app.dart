import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mealmetrics/app/settings/mealmetrics_settings.dart';
part 'color_schemes.g.dart';

final ThemeData appLightTheme = ThemeData(
  colorScheme: _lightColorScheme,
  primaryColor: MealMSettings().colorPrimaryLight,
  secondaryHeaderColor: MealMSettings().colorSecondaryLight,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
        if (states.contains(WidgetState.pressed)) {
          return _lightColorScheme.onSurface;
        }
        return _lightColorScheme.onSurfaceVariant;
      }),
      foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
    ),
  ),
  textTheme: GoogleFonts.nunitoSansTextTheme(
    const TextTheme(
      bodyLarge: TextStyle(fontSize: 18, height: 1.3),
      bodyMedium: TextStyle(fontSize: 16, height: 1.3),
      titleMedium: TextStyle(fontSize: 14, height: 1.3),
      titleSmall: TextStyle(fontSize: 12, height: 1.3),
      displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, height: 1.3),
      displayMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, height: 1.3),
    ),
  ),
  useMaterial3: true,
  appBarTheme: AppBarTheme(
    titleTextStyle: GoogleFonts.nunitoSans(
      textStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: _lightColorScheme.onPrimary,
      ),
    ),
    centerTitle: true,
    backgroundColor: _lightColorScheme.onPrimary,
    iconTheme: IconThemeData(color: _lightColorScheme.onPrimary),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: _lightColorScheme.onPrimary,
    foregroundColor: _lightColorScheme.onPrimary,
  ),
  segmentedButtonTheme: _segmentedButtonTheme,
  dialogTheme: DialogTheme(backgroundColor: Colors.white),
);

final ThemeData appDarkTheme = ThemeData(
  colorScheme: _darkColorScheme,
  primaryColor: MealMSettings().colorPrimaryDark,
  secondaryHeaderColor: MealMSettings().colorSecondaryDark,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
        if (states.contains(WidgetState.pressed)) {
          return _darkColorScheme.surface;
        }
        return _darkColorScheme.onSurface;
      }),
      foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      ),
    ),
  ),
  textTheme: GoogleFonts.nunitoSansTextTheme(
    const TextTheme(
      bodyLarge: TextStyle(fontSize: 18, height: 1.3),
      bodyMedium: TextStyle(fontSize: 16, height: 1.3),
      titleMedium: TextStyle(fontSize: 14, height: 1.3),
      titleSmall: TextStyle(fontSize: 12, height: 1.3),
      displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, height: 1.3),
      displayMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, height: 1.3),
    ),
  ),
  useMaterial3: true,
  appBarTheme: AppBarTheme(
    titleTextStyle: GoogleFonts.nunitoSans(
      textStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: _darkColorScheme.onPrimary,
      ),
    ),
    centerTitle: true,
    backgroundColor: _darkColorScheme.onPrimary,
    iconTheme: IconThemeData(color: _darkColorScheme.onPrimary),
  ),
  segmentedButtonTheme: _segmentedButtonTheme,
  dialogTheme: const DialogTheme(backgroundColor: Colors.black),
);

SegmentedButtonThemeData get _segmentedButtonTheme => SegmentedButtonThemeData(
  style: ButtonStyle(
    textStyle: WidgetStateProperty.resolveWith<TextStyle>((states) {
      if (states.contains(WidgetState.selected)) {
        return const TextStyle(fontSize: 9);
      }

      return const TextStyle(fontSize: 12);
    }),
  ),
);
