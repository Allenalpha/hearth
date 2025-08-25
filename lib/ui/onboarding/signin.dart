import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hearth/ui/onboarding/login.dart';
import 'package:hearth/ui/onboarding/verification.dart';
import 'package:hearth/utils/colors.dart';
import 'package:hearth/utils/text_style.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
              Text("Create an account",style: HeaderText ),
              SizedBox(height: 16),
              Text( "Start your easy journey to own a property",style: Header2Text),
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
                  hintText: "Enter your Password",
                  border: inputBorder,
                  prefixIcon: Icon(Icons.lock_outline_rounded),
                ),
              ),
              SizedBox(height: 16),
              Text("Confirm Password",style: HintText,),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  hintText: "Re-enter your Password",
                  border: inputBorder,
                  prefixIcon: Icon(Icons.lock_outline_rounded),
                ),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (value) {}),
                  Expanded(
                    child: RichText(
                      text:  TextSpan(
                        text: "By signing up, you agree to our ",
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                            text: "Terms and Conditions",
                            style: TextStyle(color: primaryColor),
                          ),
                          TextSpan(text: " and "),
                          TextSpan(
                            text: "Privacy Policy",
                            style: TextStyle(color: primaryColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32),
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
                    Get.to(()=> VerificationScreen());
                  },
                  child: Text("Sign up"),
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
                  Text("Already a member?",style: Header2Text,),
                  TextButton(onPressed: (){
                     Get.to(()=>LogInScreen());
                  }, child: Text("Login",style: TextStyle(color: primaryColor, decoration: TextDecoration.underline),))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}