import 'package:flutter/material.dart';
import 'package:hearth/utils/colors.dart';



class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          color: customGrey,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: arrowGray,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}