import 'package:flutter/material.dart';
import 'package:hearth/utils/colors.dart' as AppColors;
import 'package:hearth/utils/colors.dart';
import 'package:hearth/utils/custom_themes.dart/constants.dart' hide primaryColor;
import 'package:hearth/utils/text_style.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';


class EarningsScreen extends StatelessWidget {
  EarningsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return  Center(child: Text("Earnings Screen"));
  }
}

class FavoritesScreen extends StatelessWidget {
   FavoritesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return  Center(child: Text("Favorites Screen"));
  }
}

class ChatsScreen extends StatelessWidget {
  ChatsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return  Center(child: Text("Chats Screen"));
  }
}

class ProfileScreen extends StatelessWidget {
   ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return  Center(child: Text("Profile Screen"));
  }
}


class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
 
    HomePageBody(),  
    EarningsScreen(),
    FavoritesScreen(),
    ChatsScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], 
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
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
          fontWeight: FontWeight.w400,
        ),
        items:  [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet_outlined), label: "Earnings"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined), label: "Favorites"),
          BottomNavigationBarItem(icon: Icon(Icons.chat_outlined), label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: "Profile"),
        ],
      ),
    );
  }
}


class HomePageBody extends StatelessWidget {
 HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding:  EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: [
          Row(
            children: [
              Icon(Icons.location_on, color: primaryColor),
              SizedBox(width: 4),
              Text("Port Harcourt, Nigeria", style: Body2Text),
            ],
          ),
          SizedBox(height: 17),
          Container(
            width: 355,
            height: 63,
            decoration: BoxDecoration(
              color: inputGrey,
              borderRadius: BorderRadius.circular(12),
            ),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(9),
                prefixIcon: Icon(Icons.search_rounded, color: Colors.black),
                hintText: "Type, Location, Price",
                hintStyle: TagText,
                filled: true,
                fillColor: inputGrey,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const SizedBox(height: 17),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CategoryButton(icon: Icons.apartment, label: "Rentals"),
              CategoryButton(icon: Icons.hotel, label: "Hotels"),
              CategoryButton(icon: Icons.landscape, label: "Land"),
              CategoryButton(icon: Icons.business, label: "Commercial"),
            ],
          ),
          SizedBox(height: 25),
          SectionHeader(title: "Near you"),
          SizedBox(height: 10),
          SizedBox(
            height: 220,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children:  [
                PropertyCard(
                  imageUrl: "Assets/images/presidential.png",
                  tag: "Hotel",
                  title: "Hotel Presidential",
                  location: "GRA, Port Harcourt, Rivers State",
                  price: "₦150,000 /night",
                  starRating: 5.0,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          SectionHeader(title: "Recommended Property"),
        ],
      ),
    );
  }
}


class CategoryButton extends StatelessWidget {
  final IconData icon;
  final String label;
  CategoryButton({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 26,
          backgroundColor: Colors.grey[200],
          child: Icon(icon, color: Colors.black),
        ),
        SizedBox(height: 5),
        Text(label, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
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
        Text(title, style: Body2Text),
        Text("view all", style: Body10Text),
      ],
    );
  }
}

class PropertyCard extends StatelessWidget {
  final String imageUrl, tag, title, location, price;
  final double starRating;

  const PropertyCard({
    super.key,
    required this.imageUrl,
    required this.tag,
    required this.title,
    required this.location,
    required this.price,
    required this.starRating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 292,
      margin: EdgeInsets.only(right: 16),
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: secondaryGrey,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius:  BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
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
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: tag == "Hotel" ? primaryColor : Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(tag, style:  TextStyle(color: Colors.white, fontSize: 12)),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 4, vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title, style: Body10Text),
                Row(
                  children:  [
                    Icon(Icons.star_border_rounded, color: ratingColor),
                    SizedBox(width: 4),
                    Text("5.0", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: black)),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 3),
          Row(
            children: [
              Icon(Icons.location_on_outlined, color: black, size: 16),
              SizedBox(width: 4),
              Expanded(
                child: Text(
                  location,
                  style: TextStyle(fontSize: 11, color: darkGrey, overflow: TextOverflow.ellipsis),
                ),
              ),
            ],
          ),
          SizedBox(height: 4),
          Text(price, style: TextStyle(fontSize: 14, color: Colors.green, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
