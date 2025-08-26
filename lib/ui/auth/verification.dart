import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hearth/reuseable_widgets/custom_back_button.dart';
import 'package:hearth/reuseable_widgets/custom_popup.dart';
import 'package:hearth/utils/colors.dart';
import 'package:hearth/utils/text_style.dart';
import 'package:pinput/pinput.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
      final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(12),
      ),
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
              Text("Verification code",style: HeaderText),
              SizedBox(height: 16,),
              Text("Please enter the verification code sent to your email.\nCheck your inbox for the code.",style: Header2Text,),
              SizedBox(height: 28,),
              Center(
                child: Pinput(
                  length: 4, // number of digits
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: defaultPinTheme.copyWith(
                     decoration: BoxDecoration(
                     border: Border.all(color: primaryColor, width: 1),
                     borderRadius: BorderRadius.circular(12),
                  ),
                ),
                submittedPinTheme: defaultPinTheme.copyWith(
                decoration: BoxDecoration(
                color: Colors.green.shade100,
                borderRadius: BorderRadius.circular(12),
                ),
                  ),
                    onCompleted: (pin) {
                    print("Entered OTP: $pin");
                    },
                  ),
              ),
             SizedBox(height: 24,),
             Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text("Didn't receive code?",style: Header2Text,),
               TextButton(onPressed: (){
               }, child: Text("Resend code",style: TextStyle(color: primaryColor,decoration: TextDecoration.underline),) )
              ],
             ),
             SizedBox(height:415 ,),
             SizedBox(
               width: double.infinity,
               height: 50,
               child: OutlinedButton(
                 style: OutlinedButton.styleFrom(
                   backgroundColor: primaryColor
                 ),
                 onPressed: (){
                   showDialog(context: context,
                    builder: (context) {
                      return CustomPopup(title: "Account Created Successfully", 
                      subtitle: "Welcome aboard! Your account is set up and ready to go."
                     , onPressed: (){
                       Get.to(()=>());
                     },
                      );
                    },
                   );

               }, child: Text("Continue",style: ButtonText,) ),
             )
            ],
          ),
        ) ),
    );
  }
}