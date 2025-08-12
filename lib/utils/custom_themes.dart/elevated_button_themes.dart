import 'package:flutter/material.dart';
import 'package:hearth/utils/colors.dart';



class MyElevatedButtonTheme {
  MyElevatedButtonTheme._();

  static final myElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      fixedSize: const Size(double.infinity, 52),
    ),
  );
}