import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hearth/ui/onboarding/forgot_password.dart';
import 'package:hearth/ui/onboarding/signin.dart';
import 'package:hearth/utils/colors.dart';
import 'package:hearth/utils/text_style.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
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
          padding:  EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
              Center(
                child: Image(image: AssetImage("assets/images/small_logo.png")),
              ),
              SizedBox(height: 48.6),
              Text("Log in to continue",style: HeaderText ),
              SizedBox(height: 16),
              Text( "Kindly enter your email and password to login to your\naccount",style: Header2Text),
              SizedBox(height: 37),
              Text("Email",style: HintText,),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter Your Email",
                  border: inputBorder,
                  prefixIcon: Icon(Icons.email_outlined)
                ),
              ),
              SizedBox(height: 16),
              Text("Password",style: HintText,),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                  border: inputBorder,
                  prefixIcon: Icon(Icons.lock_outline_rounded),
                  suffixIcon: Icon(Icons.remove_red_eye_outlined)
                ),
              ),
              SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed:
                  (){
                    Get.to(()=>ForgotPasswordScreen());
                  }
                  , child: Text("Forgot Password?",style: TextStyle(color: primaryColor,fontSize: 14,decoration: TextDecoration.underline) ,))
                ],
              ),
              SizedBox(height: 33),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  onPressed: () {
                  //  Get.to(()=> VerificationScreen());
                  },
                  child: Text("Log in"),
                ),
              ),
              SizedBox(height: 24,),
              Row(
                children: [
                  Expanded(child: Divider(
                    thickness: 1,
                    color: strokeColor,
                  )),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text("OR",style: Button2Text,),),
                  Expanded(child: Divider(
                    thickness: 1,
                    color: strokeColor,
                  ))
                ],
              ),
              SizedBox(height: 16,),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: OutlinedButton(onPressed: (){
                  Get.to(()=>   ());
                }, child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage("assets/images/google_logo.png")),
                    SizedBox(width: 3,),
                    Text("Signup with Google",style: Button2Text,)
                  ],
                ) ),
              ),
              SizedBox(height: 24,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?",style: Header2Text,),
                  TextButton(onPressed: (){
                    Get.to(()=> SignInScreen());
                  }, child: Text("Create account",style: TextStyle(fontSize: 14,color: primaryColor, decoration: TextDecoration.underline),))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}