import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hearth/ui/property_details/land_property_details.dart';
import 'package:hearth/utils/colors.dart';
import 'package:hearth/utils/text_style.dart';

class LandScreen extends StatefulWidget {
  LandScreen({super.key});

  @override
  State<LandScreen> createState() => _LandScreenState();
}

class _LandScreenState extends State<LandScreen> {
  final List<Map<String, dynamic>> properties = [
    {
      "title": "Open lands for sale",
      "price": "₦23,500,700 /plot",
      "location": "Apo, Abuja",
       "image": "assets/images/land_one.jpg"
    },
    {
      "title": "Open lands for sale",
      "price": "₦3,750,000 /plot",
      "location": "Igwurutali, Rivers State",
      "image": "assets/images/land_two.jpg"
    },
    {
      "title": "Open lands for sale ",
      "price": "₦72,750,000 /plot",
      "location": "Asokoro, Abuja",
      "image": "assets/images/land_three.jpg"
    },
    {
      "title": "Open lands for sale",
      "price": "₦23,270,000 /plot",
      "location": "Harmony Estate,Port Harcourt,Rivers State",
      "image": "assets/images/land_four.jpg"
    },
    {
      "title": "Open lands for sale",
      "price": "₦5,000,000 /plot",
      "location": "Ikokwu, Port Harcourt, Rivers State",
      "image": "assets/images/land_one.jpg"
    },
    {
      "title": "Open lands for sale",
      "price": "₦23,350,000 /plot",
      "location": "Asaba, Delta State",
      "image": "assets/images/land_two.jpg"
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
        title: Text("Land",style: Body2Text),
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
                      Get.to(()=>LandPropertyDetailsScreen(property:property));
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
