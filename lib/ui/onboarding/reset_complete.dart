import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hearth/ui/onboarding/login.dart';
import 'package:hearth/utils/colors.dart';
import 'package:hearth/utils/text_style.dart';

class ResetCompleteScreen extends StatefulWidget {
  const ResetCompleteScreen({super.key});

  @override
  State<ResetCompleteScreen> createState() => _ResetCompleteScreenState();
}

class _ResetCompleteScreenState extends State<ResetCompleteScreen> {
  @override
  Widget build(BuildContext context) {
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
              Text("Password reset complete",style: HeaderText),
              SizedBox(height: 16,),
              Text("Awesome! You’ve successfully updated your account password.",style: Header2Text,),
              SizedBox(height:39,),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor
                  ),
                  onPressed: (){
                    Get.to(()=>LogInScreen());
                }, child: Text("Login",style: ButtonText,) ),
              )
             ],
           ),
         ) ),
    );
  }
}