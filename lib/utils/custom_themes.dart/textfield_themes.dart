import 'package:flutter/material.dart';
import 'package:hearth/utils/colors.dart';



class MyTextFieldTheme {
  MyTextFieldTheme._();

  static InputDecorationTheme MyInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: const TextStyle().copyWith(
      fontSize: 16,
      fontFamily: "regular",
      color: appGrey,
    ),
    hintStyle: const TextStyle().copyWith(
      fontSize: 16,
      fontFamily: "regular",
      color: appGrey,
    ),
    errorStyle: const TextStyle().copyWith(
      fontSize: 16,
      fontFamily: "regular",
      color: const Color(0xFFDB3022),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(
        width: 1,
        color: strokeColor,
      ),
      borderRadius: BorderRadius.circular(16.0),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(
        width: 1,
        color: primaryColor,
      ),
      borderRadius: BorderRadius.circular(16.0),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(
        width: 1,
        color: Color(0xFFDB3022),
      ),
      borderRadius: BorderRadius.circular(16.0),
    ),
  );
}