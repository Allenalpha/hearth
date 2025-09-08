import 'package:flutter/material.dart';
import 'package:hearth/utils/colors.dart' as AppColors;
import 'package:hearth/utils/colors.dart';
import 'package:hearth/utils/custom_themes.dart/constants.dart' hide primaryColor;
import 'package:hearth/utils/text_style.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
           topLeft: Radius.circular(20),
           topRight: Radius.circular(20),
         ),
         border: Border(
          top: BorderSide(
           color: primaryColor,
           width: 1,
         ),
        ),
        color: Colors.white,
       ),
       child: ClipRRect(
         borderRadius: const BorderRadius.only(
           topLeft: Radius.circular(20),
           topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          selectedItemColor: primaryColor,
          unselectedItemColor: darkGrey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          backgroundColor: Colors.white,
          selectedLabelStyle: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w400
          ),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet_outlined), label: "Earnings"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined), label: "Favorites"),
            BottomNavigationBarItem(icon: Icon(Icons.chat_outlined), label: "Chats"),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined ), label: "Profile"),
           ],
         ),
       ),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          children: [
            Row(
              children: [
                Icon(Icons.location_on, color: primaryColor,),
                const SizedBox(width: 4),
                Text("Port Harcourt, Nigeria",style: Body2Text),
              ],
            ),
            const SizedBox(height: 17),
            Container(
              width: 355, height: 63,
              decoration: BoxDecoration(
                color: inputGrey,
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(9),
                  prefixIcon: Icon(Icons.search_rounded,color: Colors.black,),
                  hintText: "Type, Location, Price",
                  hintStyle: TagText,
                  filled: true,
                  fillColor: inputGrey,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none
                  )
                //  border: InputBorder.none,
                //  enabledBorder: InputBorder.none
                ),
              ),
            ),
            const SizedBox(height: 17),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CategoryButton(icon: Icons.apartment, label: "Rentals", ),
                CategoryButton(icon: Icons.hotel, label: "Hotels"),
                CategoryButton(icon: Icons.landscape, label: "Land"),
                CategoryButton(icon: Icons.business, label: "Commercial"),
              ],
            ),
            const SizedBox(height: 25),
            SectionHeader(title: "Near you", ),
            const SizedBox(height: 10),
            SizedBox(
              height: 220,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  PropertyCard(
                    imageUrl: "Assets/images/presidential.png",
                    tag: "Hotel",
                    title: "Hotel Presidential",
                    location: "GRA, Port Harcourt, Rivers State",
                    price: "₦150,000 /night",
                    starRating: 5.0,
                  ),
                  // PropertyCard(
                  //   imageUrl: "Assets/images/house_three.png",
                  //   tag: "Rentals",
                  //   title: "2 Bedroom flat for rent",
                  //   location: "Mile 3, Port Harcourt, Rivers State",
                  //   price: "₦1,000,000 /year",
                  //   starRating: 4.8,
                  // ),
                  // PropertyCard(
                  //   imageUrl: "Assets/images/house_four.png",
                  //   tag: "Rentals",
                  //   title: "2 Bedroom flat for rent",
                  //   location: "Mile 3, Port Harcourt, Rivers State",
                  //   price: "₦1,000,000 /year",
                  //   starRating: 4.8,
                  // ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            
            SectionHeader(title: "Recommended Property"),
            const SizedBox(height: 10),
            // const PropertyCard(
            //   imageUrl:"assets/images/hall.png",
            //   tag: "Commercial",
            //   title: "Hall for Lease",
            //   location: "Mile 3, Port Harcourt, Rivers State",
            //   price: "₦1,000,000 /year",
            //   starRating: 4.5,
            // ),
          ],
        ),
      ),
    );
    
  }
}



class CategoryButton extends StatelessWidget {
  final IconData icon;
  final String label;
  const CategoryButton({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 26,
          backgroundColor: Colors.grey[200],
          child: Icon(icon, color: Colors.black),
        ),
        const SizedBox(height: 5),
        Text(label,
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
      ],
    );
  }
}


class SectionHeader extends StatelessWidget {
  final String title;
  const SectionHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style: Body2Text),
        Text("view all",style: Body10Text),
      ],
    );
  }
}


class PropertyCard extends StatelessWidget {
  final String imageUrl, tag, title, location, price;
  final double starRating;
 // final double starRatingCount;

  const PropertyCard({
    super.key,
    required this.imageUrl,
    required this.tag,
    required this.title,
    required this.location,
    required this.price,
    required this.starRating,
  //  required this.starRatingCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
    //  height: 248,
      margin: const EdgeInsets.only(right: 16),
     // color: secondaryGrey,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: secondaryGrey
      ),
   // padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(12) , topRight: Radius.circular(12)) ,
                child: Image.asset(
                  imageUrl,
                  height: 165,
                  width: 292,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  padding:const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: tag == "Hotel"
                        ? primaryColor
                        //: tag == "Commercial"
                        //    ? Colors.red
                            : Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(tag,style: const TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title,style: Body10Text,),
                Row(
                  children: [
                    Icon(Icons.star_border_rounded,color: ratingColor,),
                    SizedBox(width: 4,),
                    Text("5.0", style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: black),)
                  ],
                )
              ],
            ),
          ),
         Text(title,style: Body10Text),
         const SizedBox(height: 3),
          Expanded(
            child: Row(
              children: [
                const Icon(Icons.location_on_outlined, color: black),
                const SizedBox(width: 4),
                Text(location,style: TextStyle(fontSize: 11,color: darkGrey,overflow: TextOverflow.ellipsis),),
              ],
            ),
          ),
          const SizedBox(height: 4),
          Text(price,style: const TextStyle(fontSize: 14,color: Colors.green,fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}


//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 292,
//       padding: EdgeInsets.symmetric(horizontal: 16),
//       decoration: const BoxDecoration(
//         color: secondaryGrey,
//         borderRadius: BorderRadius.all(Radius.circular(20)),
//       ),
//       child: Column(
//         children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 8),
//                Image( 
//                 image: AssetImage(imageUrl),
//                 height: 165,
//                 width: 292,
//               ),
//               SizedBox(height: 4),
//               Row(
//                 children: [
//                   Text(title, style: Body10Text,),
//                   Row(
//                      children: [
//                        for (int i = 0; i < starRating; i++)
//                        Icon(Icons.star, color: Colors.yellow, size: 15),
//                        for (int j = 0; j < 5 - starRating; j++)
//                        Icon(Icons.star, size: 15),
//                        Text(starRating as String ,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: black),
//                   )
//                 ],
//               ),

//                 ],
//               ),
//               Text(title, style: Body10Text),
//               SizedBox(height: 4),
//               Row(
//                 children: [
//                   Icon(Icons.location_on_outlined,color: black,),
//                   SizedBox(width: 4,),
//                   Text(location,style: TextStyle(fontSize: 11,color: darkGrey,overflow: TextOverflow.ellipsis) )
//                 ],
//               ),
//               Text(price, style: ButtonText),
//               // Row(
//               //   children: [
//               //     for (int i = 0; i < starRating; i++)
//               //       Icon(Icons.star, color: Colors.yellow, size: 15),
//               //     for (int j = 0; j < 5 - starRating; j++)
//               //       Icon(Icons.star, size: 15),
//               //     Text(starRatingCount,
//               //       style: starRatingText,
//               //     )
//               //   ],
//               // ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }


