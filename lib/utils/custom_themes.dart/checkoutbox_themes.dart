import "package:flutter/material.dart";
import "package:hearth/utils/colors.dart";


class MyCheckboxTheme {
  MyCheckboxTheme._();

  static CheckboxThemeData checkBoxTheme = CheckboxThemeData(
    side: const BorderSide(color: strokeColor, width: 1.5),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.white;
      } else {
        return Colors.black;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return primaryColor;
      } else {
        return Colors.transparent;
      }
    }),
  );
}