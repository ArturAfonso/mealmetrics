/* import 'package:flutter/material.dart';
import 'package:nutrifit_way/app/settings/settings_model.dart';

class NTWSettings implements SettingsModel {
  //parameters
  @override
  String nameApp = "NutriFit Way";
  @override
  String idPlayStore = "";
  @override
  String idAppleStore = "";
  @override
  String logo = "", logoColored = "", logoSplash = "";

  //primary
  @override
  @override
  Color colorPrimaryLight = const Color.fromRGBO(255, 106, 0, 1);
  @override
  Color colorPrimaryDark = const Color.fromRGBO(255, 106, 0, 1);
  @override
  Color textColorPrimaryLight = const Color.fromRGBO(21, 25, 44, 1);
  @override
  Color textColorPrimaryDark = Colors.white;

  //secondary
  @override
  Color colorSecondaryLight = const Color.fromRGBO(85, 31, 255, 1);
  @override
  Color colorSecondaryDark = const Color.fromRGBO(84, 95, 255, 1);
  @override
  Color textColorSecondaryLight = const Color.fromRGBO(146, 149, 158, 1);
  @override
  Color textColorSecondaryDark = const Color.fromRGBO(167, 164, 197, 1);

  //Tertiary
  @override
  Color colorTertiaryLight = const Color.fromRGBO(0, 183, 254, 1);
  @override
  Color colorTertiaryDark = const Color.fromRGBO(0, 159, 255, 1);
  @override
  Color textColorTertiaryLight = const Color.fromRGBO(208, 210, 218, 1);
  @override
  Color textColorTertiaryDark = const Color.fromRGBO(131, 127, 163, 1);

  //Quaternary
  @override
  Color colorQuaternaryLight = const Color.fromRGBO(253, 34, 84, 1);
  @override
  Color colorQuaternaryDark = const Color.fromRGBO(245, 49, 93, 1);
  @override
  Color textColorQuaternaryLight = const Color.fromRGBO(245, 245, 247, 1);
  @override
  Color textColorQuaternaryDark = const Color.fromRGBO(62, 58, 102, 1);

  @override
  Color errorColor = Colors.red.shade600;
  @override
  Color sucessColor = Colors.green.shade600;
}
 */

import 'package:flutter/material.dart';
import 'package:mealmetrics/app/settings/settings_model.dart';

class MealMSettings implements SettingsModel {
  //parameters
  @override
  String nameApp = "NutriFit Way";
  @override
  String idPlayStore = "";
  @override
  String idAppleStore = "";
  @override
  String logo = "", logoColored = "", logoSplash = "";

  //primary
  @override
  Color colorPrimaryLight = const Color(0xFFF3BABD); // red-mid
  @override
  Color colorPrimaryDark = const Color(0xFFBF3B44); // red-dark
  @override
  Color textColorPrimaryLight = const Color(0xFFBF3B44); // red-dark
  @override
  Color textColorPrimaryDark = const Color(0xFFFFFFFF); // white

  //secondary
  @override
  Color colorSecondaryLight = const Color(0xFFCBE4B4); // green-mid
  @override
  Color colorSecondaryDark = const Color(0xFF639339); // green-dark
  @override
  Color textColorSecondaryLight = const Color(0xFF639339); // green-dark
  @override
  Color textColorSecondaryDark = const Color(0xFFFFFFFF); // white

  //Tertiary
  @override
  Color colorTertiaryLight = const Color(0xFFB9BBBC); // gray-4
  @override
  Color colorTertiaryDark = const Color(0xFF5C6265); // gray-3
  @override
  Color textColorTertiaryLight = const Color(0xFF5C6265); // gray-3
  @override
  Color textColorTertiaryDark = const Color(0xFFFFFFFF); // white

  //Quaternary
  @override
  Color colorQuaternaryLight = const Color(0xFFDDDEDF); // gray-5
  @override
  Color colorQuaternaryDark = const Color(0xFF3F4948); // gray-5
  @override
  Color textColorQuaternaryLight = const Color(0xFF333638); // gray-2
  @override
  Color textColorQuaternaryDark = const Color(0xFFBEC9C7); // gray-2

  @override
  Color errorColor = const Color(0xFFBA1A1A);
  @override
  Color sucessColor = const Color(0xFF639339); // green-dark
}
