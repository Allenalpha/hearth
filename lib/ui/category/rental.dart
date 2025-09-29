import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hearth/ui/property_details/rental_property_details.dart';
import 'package:hearth/utils/colors.dart';
import 'package:hearth/utils/text_style.dart';

class RentalScreen extends StatefulWidget {
  RentalScreen({super.key});

  @override
  State<RentalScreen> createState() => _RentalScreenState();
}

class _RentalScreenState extends State<RentalScreen> {
  final List<Map<String, dynamic>> properties = [
    {
      "title": "4 bedroom detached duplex",
      "price": "₦5,500,700 /year",
      "location": "GRA, Port Harcourt, Rivers State",
       "image": "assets/images/building_three.jpg"
    },
    {
      "title": "2 bedroom flat",
      "price": "₦1,750,000 /year",
      "location": "Lekki, Lagos",
      "image": "assets/images/house_eight.jpg"
    },
    {
      "title": "5 bedroom detached duplex ",
      "price": "₦7,750,000 /year",
      "location": "Golf Estate,Port Harcourt,Rivers State",
      "image": "assets/images/building_three.jpg"
    },
    {
      "title": "3 bedroom flat",
      "price": "₦2,270,000 /year",
      "location": "Harmony Estate,Port Harcourt,Rivers State",
      "image": "assets/images/house_seven.jpg"
    },
    {
      "title": "Shop",
      "price": "₦50,000 /year",
      "location": "Ikokwu, Port Harcourt, Rivers State",
      "image": "assets/images/house_nine.jpg"
    },
    {
      "title": "Self Contain",
      "price": "₦250,000 /year",
      "location": "Artillery, Port Harcourt, Rivers State",
      "image": "assets/images/office_two.jpg"
    },
     {
      "title": "1 bedroom flat",
      "price": "₦750,000 /year",
      "location": "Choaba, Port Harcourt, Rivers State",
      "image": "assets/images/sittingroom_two.jpg"
    },
     {
      "title": "Office Space",
      "price": "₦250,000 /year",
      "location": "GRA, Port Harcourt, Rivers State",
      "image": "assets/images/sittingroom_three.jpg"
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
        title: Text("Rental",style: Body2Text),
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
                      Get.to(()=>RentalPropertyDetailsScreen(property:property));
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
