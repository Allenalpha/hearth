import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hearth/reuseable_widgets/custom_book_button.dart';
import 'package:hearth/reuseable_widgets/custom_call_button.dart';
import 'package:hearth/utils/colors.dart';
import 'package:hearth/utils/text_style.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ApartmentPropertyDetailsScreen extends StatefulWidget {
  const ApartmentPropertyDetailsScreen({super.key, required Map<String, dynamic> property});

  @override
  State<ApartmentPropertyDetailsScreen> createState() => _ApartmentPropertyDetailsScreenState();
}

class _ApartmentPropertyDetailsScreenState extends State<ApartmentPropertyDetailsScreen> {
  int _currentIndex = 0;

  final List<String> images = [
    "assets/images/building_two.jpg",
    "assets/images/sittingroom_one.jpg",
    "assets/images/bedroom_one.jpg",
    "assets/images/bathroom_one.jpg",
    "assets/images/kitchen_one.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                CarouselSlider(
                  items: images
                      .map((img) => Image.asset(img,fit: BoxFit.cover, width: double.infinity))
                      .toList(),
                  options: CarouselOptions(
                    height: 338,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 16,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.arrow_back, color:locationBlack ),
                  ),
                ),
                Positioned(
                  top: 50,
                  right: 16,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.favorite_border, color:locationBlack ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16,),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "${_currentIndex + 1}/${images.length}",
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ),
            ),
            SizedBox(height: 16,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("2 bedroom Apartment",style: TitleText),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("₦100,000 /night",style: Body5Text,),
                      Row(
                        children: [
                          Icon(Icons.star_border, color: ratingColor),
                          Text("5.0",style: Price3Text),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined, size: 18, color: locationBlack),
                      SizedBox(width: 3),
                      Text("GRA, Port Harcourt, Rivers State",style: TextStyle(color: Colors.grey[600]),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16,),
            Divider(
             thickness: 0.5,
             color: dividerColor ,
             indent: 16,
             endIndent: 16,
            ),
            SizedBox(height: 16,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Description",style: TitleText ),
                  SizedBox(height: 8),
                  Text("This spacious, well-lit apartment offers a perfect blend of comfort and style. Located in a secure and accessible neighborhood, it’s ideal for small families, young professionals, or students.",
                    style: TextStyle(color: Colors.grey[700], height: 1.4),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16,),
            Divider(
              endIndent: 16,
              indent: 16,
              thickness: 0.5,
              color: dividerColor,
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Features",style: TitleText ),
                  SizedBox(height: 12),
                  GridView.count(
                    crossAxisCount: 4,
                    crossAxisSpacing: 16,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    mainAxisSpacing: 16,
                    children: [
                      _buildFeature(Icons.directions_car_outlined, "Car park"  ),
                      _buildFeature(Icons.bedroom_child_outlined , "2 bedroom"),
                      _buildFeature(Icons.kitchen_outlined, "Kitchen"),
                      _buildFeature(Icons.dining_outlined, "Dining"),
                      _buildFeature(Icons.pool , "Swimming pool"),
                      _buildFeature(Icons.bathtub_rounded , "2 bathroom"),
                      _buildFeature(Icons.wifi, "Free Wi-Fi"),
                      _buildFeature(Icons.lightbulb_outlined, "24hr power supply"),
                      _buildFeature(Icons.wb_sunny_outlined , "Rooftop view"),
                      _buildFeature(Icons.gamepad_outlined, "Games"),
                      _buildFeature(Icons.air_rounded, "Air conditioning")
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16,),
            Divider(
              indent: 16,
              thickness: 0.5,
              color: dividerColor,
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Fee Details",style: TitleText ),
                  SizedBox(height: 10),
                  _buildFeeRow("Apartment rent", "₦100,000"),
                  _buildFeeRow("Caution fee", "₦10,000"),
                  Divider(thickness: 0.5,color: dividerColor,),
                  _buildFeeRow("Initial fee", "₦110,700", bold: true),
                  Divider(thickness: 0.5,color: dividerColor,)
                ],
              ),
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            CustomBookButton(),
            SizedBox(width: 19),
            CustomCallButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildFeature(IconData icon, String text) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          backgroundColor: Color(0xffF3FAF3),
          child: Icon(icon, color: primaryColor),
        ),
        SizedBox(height: 6),
        Text(text, style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: Colors.black)),
      ],
    );
  }

  Widget _buildFeeRow(String label, String value, {bool bold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: PriceText),
          Text(value,style: Price2Text,),
        ],
      ),
    );
  }
}
