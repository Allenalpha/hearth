import 'package:flutter/material.dart';
import 'package:hearth/utils/colors.dart';
import 'package:hearth/utils/custom_themes.dart/elevated_button_themes.dart';
import 'package:hearth/utils/custom_themes.dart/outlined_button_themes.dart';
import 'package:hearth/utils/custom_themes.dart/textfield_themes.dart';



class myAppTheme {
  myAppTheme._();

  static ThemeData myThemes = ThemeData(
    useMaterial3: false,
    brightness: Brightness.dark,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: appWhite,
    elevatedButtonTheme: MyElevatedButtonTheme.myElevatedButtonTheme,
    outlinedButtonTheme: MyOutlineButtonTheme.myOutlineButtonTheme,
    inputDecorationTheme: MyTextFieldTheme.MyInputDecorationTheme,
    checkboxTheme: MyCheckboxTheme.checkBoxTheme,
  );
}