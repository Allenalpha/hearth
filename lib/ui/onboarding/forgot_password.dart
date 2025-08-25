import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hearth/ui/onboarding/forgot_pasword_two.dart';
import 'package:hearth/utils/colors.dart';
import 'package:hearth/utils/text_style.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
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
                  hintText: "Enter your email",
                  border: inputBorder,
                  prefixIcon: Icon(Icons.email_outlined),
                ),
              ),
              SizedBox(height:387 ,),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor
                  ),
                  onPressed: (){
                    Get.to(()=>ForgotPasswordTwoScreen());
                }, child: Text("Submit",style: ButtonText,) ),
              )
             ],
           ),
         ) ),
     );
  }
}