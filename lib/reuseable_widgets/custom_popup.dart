import 'package:flutter/material.dart';
import 'package:hearth/utils/colors.dart';
import 'package:hearth/utils/text_style.dart';


class CustomPopup extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onPressed;

  const CustomPopup({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: appWhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        height: 364,
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 72,
              width: 72,
              decoration: BoxDecoration(
                color: lightPrimary,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.rocket_launch,
                color: primaryColor,
                size: 28,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              title,
              style: HeaderText,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              subtitle,
              style: Header2Text,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){

                },
                child: Text("Go to Home",style: ButtonText),
              ),
            ),
          ],
        ),
      ),
    );
  }
}