import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hearth/reuseable_widgets/custom_back_button.dart';
import 'package:hearth/ui/auth/reset_complete.dart';
import 'package:hearth/utils/colors.dart';
import 'package:hearth/utils/text_style.dart';

class ForgotPasswordTwoScreen extends StatefulWidget {
  const ForgotPasswordTwoScreen({super.key});

  @override
  State<ForgotPasswordTwoScreen> createState() => _ForgotPasswordTwoScreenState();
}

class _ForgotPasswordTwoScreenState extends State<ForgotPasswordTwoScreen> {
  @override
  Widget build(BuildContext context) {
      final inputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide:  BorderSide(color: Colors.grey),
    );
    return Scaffold(
      backgroundColor: appWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomBackButton(),
              SizedBox(height: 20,),
              Text("Reset password",style: HeaderText),
              SizedBox(height: 16,),
              Text("Please enter your email to receive instructions to reset\nyour password again.",style: Header2Text,),
              SizedBox(height: 28,),
              TextField(
                decoration: InputDecoration(
                  hintText: "New password",
                  border: inputBorder,
                  prefixIcon: Icon(Icons.lock_outline_rounded),
                ),
              ),
              SizedBox(height: 16,),
              TextField(
                decoration: InputDecoration(
                  hintText: "Confirm password",
                  border: inputBorder,
                  prefixIcon: Icon(Icons.lock_outline_rounded),
                ),
              ),
              SizedBox(height:428,),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor
                  ),
                  onPressed: (){
                    Get.to(()=>ResetCompleteScreen());
                }, child: Text("Change password",style: ButtonText,) ),
              )
             ],
           ),
         ) ),
     );
  }
}