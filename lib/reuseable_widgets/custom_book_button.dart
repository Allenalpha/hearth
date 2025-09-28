import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hearth/utils/colors.dart';
import 'package:hearth/utils/text_style.dart';




class CustomBookButton extends StatelessWidget {
  const CustomBookButton({super.key});
  

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: (){
       Get.to(()=>());
      },
      child: Container(
        height: 53,
        width: 189,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: primaryColor
          ),
          color: lightPrimary,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.calendar_month_outlined,color: primaryColor,),
              SizedBox(width: 8,),
              Text("Book Inspection",style: Button3Text,),
              
            ],
            
            
          ),
          
        ),
      ),
    );
  }
}