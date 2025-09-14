import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hearth/utils/colors.dart';
import 'package:hearth/utils/text_style.dart';

class ApartmentScreen extends StatefulWidget {
  ApartmentScreen({super.key});

  @override
  State<ApartmentScreen> createState() => _ApartmentScreenState();
}

class _ApartmentScreenState extends State<ApartmentScreen> {
  final List<Map<String, dynamic>> properties = [
    {
      "title": "1 Bedroom Apartment",
      "price": "₦120,700 /night",
      "location": "GRA, Port Harcourt",
       "image": "assets/images/bedroom_two.jpg"
    },
    {
      "title": "2 Bedroom Apartment ",
      "price": "₦75,000 /night",
      "location": "Woji, Port Harcourt",
      "image": "assets/images/sittingroom_six.jpg"
    },
    {
      "title": "1 Bedroom Apartment ",
      "price": "₦200,000 /night",
      "location": "Lekki, Lagos",
      "image": "assets/images/sittingroom_seven.jpg"
    },
    {
      "title": "1 Bedroom Apartment",
      "price": "₦270,000 /night",
      "location": "Harmony Estate,Port Harcourt,Rivers State",
      "image": "assets/images/sittingroom_eight.jpg"
    },
    {
      "title": "2 Bedroom Apartment",
      "price": "₦150,000 /night",
      "location": "Ikokwu, Port Harcourt, Rivers State",
      "image": "assets/images/sittingroom_three.jpg"
    },
    {
      "title": "1 Bedroom Apartment",
      "price": "₦100,000 /night",
      "location": "Asaba, Delta State",
      "image": "assets/images/sittingroom_five.jpg"
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text("Apartment",style: Body2Text),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Text("${properties.length} results",style: Body10Text ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.separated(
                itemCount: properties.length,
                separatorBuilder: (_, __) => SizedBox(height: 16),
                itemBuilder: (context, index) {
                  final property = properties[index];
                  return InkWell(
                    onTap:(){
                    //  Get.to(()=>PropertyDetailScreen(property:property));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: inputGrey,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Color(0xfff7f6f6)),
                      ),
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsetsGeometry.all(8)),
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            child: Image.network(
                              property["image"],
                              height: 72,
                              width: 97,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 13),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    property["title"],
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TitleText
                                  ),
                                  SizedBox(height: 8),
                                  Text(property["price"],style: Body5Text,
                                  ),
                                  SizedBox(height: 8),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.location_on_outlined,color: locationBlack,),
                                      SizedBox(width: 3),
                                      Text(
                                        property["location"],
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(fontSize: 12,color: darkGrey,),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
