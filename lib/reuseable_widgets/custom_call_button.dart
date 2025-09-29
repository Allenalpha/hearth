import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hearth/utils/colors.dart';
import 'package:hearth/utils/text_style.dart';



class CustomCallButton extends StatelessWidget {
  const CustomCallButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.to(()=>());
      } ,
      child: Container(
        height: 53,
        width: 189,
        decoration: BoxDecoration(
          color: primaryColor ,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.phone_outlined ,color: Colors.white,),
              SizedBox(width: 8,),
              Text("Call Agent",style: ButtonText,)
            ],
          ),
        ),
      ),
    );
  }
}