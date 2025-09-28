import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hearth/reuseable_widgets/custom_book_button.dart';
import 'package:hearth/reuseable_widgets/custom_call_button.dart';
import 'package:hearth/utils/colors.dart';
import 'package:hearth/utils/text_style.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class LandPropertyDetailsScreen extends StatefulWidget {
  const LandPropertyDetailsScreen({super.key, required Map<String, dynamic> property});

  @override
  State<LandPropertyDetailsScreen> createState() => _LandPropertyDetailsScreenState();
}

class _LandPropertyDetailsScreenState extends State<LandPropertyDetailsScreen> {
  int _currentIndex = 0;

  final List<String> images = [
    "assets/images/land_four.jpg",
    "assets/images/land_one.jpg",
    "assets/images/land_two.jpg",
    "assets/images/land_three.jpg",
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
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("5 plot of land",style: TitleText),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("₦4,670,700 /plot",style: Body5Text,),
                      Row(
                        children: [
                          Icon(Icons.star_border, color: ratingColor),
                          Text("4.0",style: Price3Text),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined, size: 18, color: locationBlack),
                      SizedBox(width: 3),
                      Text("Omagwa, Rivers State.",style: TextStyle(color: Colors.grey[600]),
                      )
                    ],
                  ),
                  SizedBox(height: 16,)
                ],
              ),
            ),
            Divider(
             thickness: 0.5,
             color: dividerColor ,
             indent: 16,
             endIndent: 16,
            ),
            SizedBox(height: 16,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Description",style: TitleText ),
                  SizedBox(height: 8),
                  Text("A 5 plot of land for sale on a master planned estate. This well-positioned plot features a spacious layout, clear title, access to essential utilities, defined boundaries, good road access, and is ideally zoned for residential use and development in a rapidly growing area.",
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
            Padding(padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Size", style:TitleText),
                SizedBox(height: 8,),
                Text("450Sqm (square per meter)" ,style: TextStyle(color: Colors.grey[700],height: 1.4),)
              ],
            ) ,
            ),
            SizedBox(height: 16,),
            Divider(
              indent: 16,
              thickness: 0.5,
              color: dividerColor,
            ),
            SizedBox(height: 16,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Documentation",style:TitleText ,),
                SizedBox(height: 8,),
                Text(
                   "• C of O (Certificate of Occupancy)\n"
                   "• Deed of Assignment\n"
                   "• Registered Survey plan",
                     style: TextStyle(color: Colors.grey[700], height: 1.4),
                )
              ],
             ) ,
            ),
            SizedBox(height: 16,),
            Divider(
              indent: 16,
              endIndent: 16,
              color: dividerColor,
            ),
            SizedBox(height: 16,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Typography",style:TitleText ,),
                SizedBox(height: 8,),
                Text("Flat land",style:TextStyle(color: Colors.grey[700],height: 1.4) ,)
              ],
            ) ,
            ),
            SizedBox(height: 16,),
            Divider(
              indent: 16,
              thickness: 0.5,
              color: dividerColor,
            ),
             SizedBox(height: 16,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Land Use",style: TitleText,),
                SizedBox(height: 8,),
                Text("Residential",style:TextStyle(color: Colors.grey[700],height: 1.4) ,)
              ],
             ) ,
            ),
            SizedBox(height: 16,),
            Divider(
              indent: 16,
              thickness: 0.5,
              color: dividerColor,
            ),
             SizedBox(height: 16,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Accessibility",style:TitleText ,),
                SizedBox(height: 8,),
                Text("Good road access (tarred) for easy entry and exit",style: TextStyle(color: Colors.grey[700],height: 1.4),)
              ],
             ) ,
            ),
            SizedBox(height: 16,),
            Divider(
              indent: 16,
              thickness: 0.5,
              color: dividerColor,
            ),
            SizedBox(height: 16,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Security of Area",style:TitleText ,),
                SizedBox(height: 8,),
                Text("Peaceful environment with low crime rate",style:TextStyle(color: Colors.grey[700],height: 1.4) ,)
              ],
             ) ,
            ),
            SizedBox(height: 16,),
            Divider(
              indent: 16,
              thickness: 0.5,
              color: dividerColor,
            ),
            SizedBox(height: 16,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Fee Details",style: TitleText ),
                  SizedBox(height: 10),
                  _buildFeeRow("Annual rent", "₦5,500,700"),
                  _buildFeeRow("Agent fee", "₦570,000"),
                  _buildFeeRow("Caution fee", "₦100,000"),
                  Divider(thickness: 0.5,color: dividerColor,),
                  _buildFeeRow("Initial fee", "₦6,170,700", bold: true),
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
