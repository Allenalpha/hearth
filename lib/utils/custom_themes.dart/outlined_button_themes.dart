import 'package:flutter/material.dart';
import 'package:hearth/utils/colors.dart';



class MyOutlineButtonTheme {
  MyOutlineButtonTheme._();

  static final myOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      side: const BorderSide(
        color: strokeColor,
        width: 1,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      fixedSize: const Size(150, 48),
      textStyle: const TextStyle(
          color: primaryColor, fontSize: 18, fontFamily: 'regular'),
    ),
  );
}