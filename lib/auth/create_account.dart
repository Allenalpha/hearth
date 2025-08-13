import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hearth/utils/colors.dart';
import 'package:hearth/utils/text_style.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightPrimary,
      body: SafeArea(
        child: SingleChildScrollView(
          padding:  EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(image: AssetImage("")),
              SizedBox(height: 20),
              Text("Create an account",style: heading4 ),
              SizedBox(height: 8),
              Text( "Fill in your details to get started with your new account.",style: headingText),
              SizedBox(height: 32),
              Text("Company Name",style: labelText,),
              SizedBox(height: 6),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter Your name",
                  border: inputBorder,
                ),
              ),
              SizedBox(height: 16),
              Text("CAC Registration",style: labelText,),
              SizedBox(height: 6),
              TextField(
                decoration: InputDecoration(
                  hintText: "Create Password",
                  border: inputBorder,
                  prefixIcon: Icon(Icons.email_outlined),
                ),
              ),
              SizedBox(height: 16),
              Text("Registration Number",style: labelText,),
              SizedBox(height: 6),
              TextField(
                decoration: InputDecoration(
                  hintText: "Confirm Password",
                  border: inputBorder,
                  prefixIcon: Icon(Icons.tag),
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
                            style: TextStyle(color: Colors.red),
                          ),
                          TextSpan(text: " and "),
                          TextSpan(
                            text: "Privacy Policy",
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  onPressed: () {
               //     Get.to(()=> DashboardScreen());
                  },
                  child: Text("Sign up"),
                ),
                ),
                SizedBox(
                width: double.infinity,
                height: 50,
                child: OutlinedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  onPressed: () {
                       Get.to(()=>());
                  },
                  child: Row(
                    children: [
                      Image(image: AssetImage("")),
                      Text("Signup with Google")
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "Already a member? ",
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: "Login",
                        style: TextStyle(color: Colors.deepOrange),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),




      
    );  
    
  }
}